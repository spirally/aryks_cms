from functools import partial
import uuid

from ckeditor.fields import RichTextField
from django.db import models
from django.db.models import QuerySet
from django.utils.functional import cached_property
from easy_thumbnails.fields import ThumbnailerImageField
from mptt.models import MPTTModel, TreeForeignKey
from django.conf import settings
from django.utils.translation import ugettext_lazy as _
from properties.models import ProductProperty, TypeProperty
from filters.models import ProductFilter, FilterCategory
from slugify import slugify

from slytools.utils.db import IsDeletedModel, IsDeletedRestoredModel
from slytools.utils.web import WebPageMixin, OrderingMixin, ColorPaletteMixin


def make_upload_path(field_name=None, id_field=None):
    path = u'{app}/{model}'
    if field_name:
        path += u'/{field}'
    if id_field:
        path += u'/{id}'
    path += u'/{file}'

    def make_upload_path(instance, filename, prefix=False):
        new_name = str(uuid.uuid1())
        parts = filename.split('.')
        f = parts[-1]
        filename = new_name + '.' + f
        return path.format(
            app=instance._meta.app_label,
            model=instance._meta.model_name,
            field=field_name,
            id=getattr(instance, id_field, 0) if id_field else 0,
            file=filename,
        )
    return make_upload_path


class Category(MPTTModel, WebPageMixin, OrderingMixin, IsDeletedRestoredModel, ColorPaletteMixin):
    name = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Название'))
    description = models.TextField(_("Описание"), blank=True, default="", max_length=1000)
    parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children', verbose_name=_('Родитель'))
    wall = ThumbnailerImageField(
        upload_to=make_upload_path(field_name='wall'), blank=True, default="", verbose_name=_('Обложка'),
        resize_source=dict(size=(2560, 0), crop='scale'),
    )
    image = ThumbnailerImageField(upload_to=make_upload_path(field_name='image'), blank=True, default="", verbose_name=_('Изображение'))

    def get_filters(self):
        return FilterCategory.objects.filter(category=self).order_by('ordering')

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.update_palette_by_image(field_name='wall')
        super(Category, self).save(*args, **kwargs)

    class Meta:
        verbose_name = _('Тематика')
        verbose_name_plural = _('Тематики')

    class MPTTMeta:
        order_insertion_by = ['name']


class ProductManager(models.Manager):
    def get_queryset(self):
        return QuerySet(self.model, using=self._db).select_related('type')


class ProductType(models.Model):
    name = models.CharField(max_length=250, verbose_name=_('Название'))
    genitive = models.CharField(max_length=250, null=True, verbose_name=_('Родительный падеж'))
    dative = models.CharField(max_length=250, null=True, verbose_name=_('Дательный падеж'))
    accusative = models.CharField(max_length=250, null=True, verbose_name=_('Винительный падеж'))
    ablative = models.CharField(max_length=250, null=True, verbose_name=_('Творительный падеж'))
    prepositional = models.CharField(max_length=250, null=True, verbose_name=_('Предложный падеж'))

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Тип инфопродукта')
        verbose_name_plural = _('Типы инфопродуктов')


class Product(WebPageMixin, OrderingMixin, IsDeletedRestoredModel, ColorPaletteMixin):
    type = models.ForeignKey(ProductType, on_delete=models.CASCADE, null=True, verbose_name=_('Тип инфопродукта'))
    name = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Название'))
    description = models.TextField(_("Описание"), blank=True, default="", max_length=1000)
    wall = ThumbnailerImageField(
        upload_to=make_upload_path(field_name='wall'), blank=True, default="", verbose_name=_('Обложка'),
        resize_source=dict(size=(2560, 2560), crop='scale'),
    )
    image = ThumbnailerImageField(upload_to=make_upload_path(field_name='image'), blank=True, default="", verbose_name=_('Изображение'))
    #TODO ManyToMany category
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='products', blank=True, null=True, verbose_name=_('Тематика'))
    forfree = models.BooleanField(default=False, verbose_name=_('Бесплатно'))
    new = models.BooleanField(default=False, verbose_name=_('Новинка'))
    hit = models.BooleanField(default=False, verbose_name=_('Хит'))
    price = models.PositiveIntegerField(null=True, default=0, verbose_name=_('Стоимость'))
    bonus = models.PositiveIntegerField(null=True, default=0, verbose_name=_('Бонус %'))
    promo = models.BooleanField(_('Промо'), default=False, help_text=_('Показывать продукт на главной странице'))
    media_type_video = models.BooleanField(default=False, verbose_name=_('Смотреть'))
    media_type_audio = models.BooleanField(default=False, verbose_name=_('Слушать'))
    media_type_book = models.BooleanField(default=False, verbose_name=_('Читать'))
    media_type_flow = models.BooleanField(default=False, verbose_name=_('Участвовать'))
    content_program = RichTextField(null=True, blank=True, verbose_name=_('Программа курса'))

    objects = ProductManager()

    @cached_property
    def longname(self):
        if self.type:
            return '{} «{}»'.format(self.type.name, self.name)
        else:
            return self.name

    @cached_property
    def pagetitle(self):
        return self.title or self.longname

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
            return u'<img src="{}{}" width="100"/>'.format(settings.MEDIA_URL, self.image)
        else:
            return '(none)'

    pic.short_description = u'Большая картинка'
    pic.allow_tags = True

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
    price = models.PositiveIntegerField(null=True, default=0, verbose_name=_('Стоимость'))

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Вариант')
        verbose_name_plural = _('Варианты')


class Images(OrderingMixin):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='images', null=True, verbose_name=_('Инфопродукт'))
    image = models.ImageField(upload_to=make_upload_path(id_field=True), blank=True, default="", verbose_name=_('Изображение'))
    name = models.CharField(_("Название"), default="", max_length=250)

    def __str__(self):
        return self.safe_translation_getter("name", any_language=True)

    class Meta:
        verbose_name = _('Изображение')
        verbose_name_plural = _('Изображения')
