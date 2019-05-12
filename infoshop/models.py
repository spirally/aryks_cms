from django.db import models
from easy_thumbnails.fields import ThumbnailerImageField
from mptt.models import MPTTModel, TreeForeignKey
from django.conf import settings
from django.utils.translation import ugettext_lazy as _
import uuid
from properties.models import ProductProperty, TypeProperty
from filters.models import ProductFilter, FilterCategory
from slugify import slugify
from colorfield.fields import ColorField

from slytools.utils.db import IsDeletedModel, IsDeletedRestoredModel
from slytools.utils.web import WebPageMixin, OrderingMixin


def make_upload_path(instance, filename, prefix=False):
    """
    Create unique name for image or file.
    """
    new_name = str(uuid.uuid1())
    parts = filename.split('.')
    f = parts[-1]
    filename = new_name + '.' + f
    return u"%s/%s" % (settings.SHOP_IMAGE_DIR, filename)


class Category(MPTTModel, WebPageMixin, OrderingMixin, IsDeletedRestoredModel):
    name = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Название'))
    description = models.TextField(_("Описание"), blank=True, default="", max_length=1000)
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children', verbose_name=_('Родитель'))
    wall = ThumbnailerImageField(
        upload_to=make_upload_path, blank=True, default="", verbose_name=_('Обложка'),
        resize_source=dict(size=(2560, 0), crop='scale'),
    )
    image = ThumbnailerImageField(upload_to=make_upload_path, blank=True, default="", verbose_name=_('Изображение'))

    def get_filters(self):
        return FilterCategory.objects.filter(category=self).order_by('ordering')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Тематика')
        verbose_name_plural = _('Тематики')

    class MPTTMeta:
        order_insertion_by = ['name']


class Product(WebPageMixin, OrderingMixin, IsDeletedRestoredModel):
    name = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Название'))
    description = models.TextField(_("Описание"), blank=True, default="", max_length=1000)
    wall = ThumbnailerImageField(
        upload_to=make_upload_path, blank=True, default="", verbose_name=_('Обложка'),
        resize_source=dict(size=(2560, 2560), crop='scale'),
    )
    image = ThumbnailerImageField(upload_to=make_upload_path, blank=True, default="", verbose_name=_('Изображение'))
    #TODO ManyToMany category
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='categories', blank=True, null=True, verbose_name=_('Тематика'))
    price = models.DecimalField(max_digits=8, decimal_places=2, null=True, default=0.00, verbose_name=_('Price'))
    promo = models.BooleanField(_('Промо'), default=False, help_text=_('Показывать продукт на главной странице'))
    type_video = models.BooleanField(default=False, verbose_name=_('Смотреть'))
    type_audio = models.BooleanField(default=False, verbose_name=_('Слушать'))
    type_book = models.BooleanField(default=False, verbose_name=_('Читать'))
    type_flow = models.BooleanField(default=False, verbose_name=_('Участвовать'))
    color0 = ColorField(default='#333333')
    color1 = ColorField(default='#333333')
    color2 = ColorField(default='#333333')

    def get_filters(self):
        res = {}
        category = self.category
        for fp in ProductFilter.objects.filter(product=self):
            name = fp.filter_category.name
            if not fp.filter_category.slug:
                fp.filter_category.slug = slugify(name)
                fp.filter_category.save()
            slug = fp.filter_category.slug
            selects = []
            for s in fp.values.all():
                selects.append(s.name)
            res.update({slug: selects})
        return res

    def pic(self):
        if self.image:
            return u'<img src="https://fabro.com.ua/media/%s" width="70"/>' % self.image
            # thumb_u#
            # return u'<img src="%s" width="70"/>' % thumb_url
        else:
            return '(none)'

    pic.short_description = u'Большая картинка'
    pic.allow_tags = True

    def update_palette_by_image(self):
        def get_hex_color(rate, rgb):
            return '#' + ''.join('%02X' % i for i in rgb)

        if not self.image:
            return

        from haishoku.haishoku import Haishoku
        try:
            palette = Haishoku.getPalette(self.image.path)
        except FileNotFoundError:
            return

        palette.reverse()
        try:
            self.color0 = get_hex_color(*palette.pop())
            self.color1 = get_hex_color(*palette.pop())
            self.color2 = get_hex_color(*palette.pop())
        except IndexError:
            return

    def save(self, *args, **kwargs):
        self.update_palette_by_image()
        if self.category:
            super(Product, self).save(*args, **kwargs)
            # create properties if not exist
            for cp in TypeProperty.objects.filter(category=self.category):
                pp = ProductProperty.objects.filter(category_property=cp,
                                                    product=self)
                if not pp:
                    pp = ProductProperty(category_property=cp, product=self, value="--")
                    pp.save()
            # create filters if not exist
            for fc in FilterCategory.objects.filter(category=self.category):
                pf = ProductFilter.objects.filter(filter_category=fc,
                                                  product=self)
                if not pf:
                    pf = ProductFilter(filter_category=fc, product=self)
                    pf.save()

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Инфопродукт')
        verbose_name_plural = _('Инфопродукты')


class Offer(OrderingMixin, IsDeletedModel):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='offers', null=True, verbose_name=_('Инфопродукт'))
    name = models.CharField(_("Название"), default="", max_length=250)
    description = models.TextField(_("Описание"), blank=True, default="", max_length=1000)
    price = models.DecimalField(max_digits=8, decimal_places=2, null=True, default=0.00, verbose_name=_('Цена'))

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Вариант')
        verbose_name_plural = _('Варианты')


class Images(OrderingMixin):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='images', null=True, verbose_name=_('Инфопродукт'))
    image = models.ImageField(upload_to=make_upload_path, blank=True, default="", verbose_name=_('Изображение'))
    name = models.CharField(_("Название"), default="", max_length=250)

    def __str__(self):
        return self.safe_translation_getter("name", any_language=True)

    class Meta:
        verbose_name = _('Изображение')
        verbose_name_plural = _('Изображения')
