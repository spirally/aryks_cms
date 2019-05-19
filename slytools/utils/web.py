import uuid
from django.db import models
from django.utils.translation import ugettext_lazy as _
from colorfield.fields import ColorField
from ckeditor.fields import RichTextField


def make_upload_path(field_name=None, id_field=None):
    path = u'{app}/{model}'
    if field_name:
        path += u'/{field}'
    if id_field:
        path += u'/{id}'
    path += u'/{file}'

    def upload_path(instance, filename, prefix=False):
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
    return upload_path


class WebPageMixin(models.Model):

    published = models.BooleanField(default=False, db_index=True, verbose_name=_('Опубликовано'))
    title = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('Расширенный заголовок'))
    title_menu = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('Заголовок для меню'))
    slug = models.SlugField(_("Slug"), default="", blank=True, db_index=True, max_length=300,)
    url = models.CharField(_("Url"), default="", blank=True, max_length=300)
    seo_keywords = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('SEO ключевые слова'))
    seo_description = models.TextField(max_length=512, null=True, blank=True, verbose_name=_('SEO описание'))
    content = RichTextField(null=True, blank=True, verbose_name=_('Контент'))
    created_at = models.DateTimeField(auto_now_add=True, verbose_name=_('Создано'))
    updated_at = models.DateTimeField(auto_now=True, verbose_name=_('Обновлено'))

    @property
    def pagetitle(self):
        return self.title or self.name

    @property
    def menutitle(self):
        return self.title_menu or self.name

    class Meta:
        abstract = True


class OrderingMixin(models.Model):

    ordering = models.PositiveIntegerField(_('Порядок'), default=0, blank=True, null=True)

    class Meta:
        abstract = True


class ColorPaletteMixin(models.Model):
    color0 = ColorField(default='#FFFFFF')
    color1 = ColorField(default='#FFFFFF')
    color2 = ColorField(default='#FFFFFF')
    color3 = ColorField(default='#FFFFFF')
    color4 = ColorField(default='#FFFFFF')
    color5 = ColorField(default='#FFFFFF')
    color6 = ColorField(default='#FFFFFF')
    color7 = ColorField(default='#FFFFFF')

    def update_palette_by_image(self, field_name='image'):
        def get_hex_color(rate, rgb):
            return '#' + ''.join('%02X' % i for i in rgb)

        image = getattr(self, field_name, None)
        if not image:
            return

        from haishoku.haishoku import Haishoku
        try:
            palette = Haishoku.getPalette(image.path)
        except FileNotFoundError:
            return

        palette.reverse()
        try:
            self.color0 = get_hex_color(*palette.pop())
            self.color1 = get_hex_color(*palette.pop())
            self.color2 = get_hex_color(*palette.pop())
            self.color3 = get_hex_color(*palette.pop())
            self.color4 = get_hex_color(*palette.pop())
            self.color5 = get_hex_color(*palette.pop())
            self.color6 = get_hex_color(*palette.pop())
            self.color7 = get_hex_color(*palette.pop())
        except IndexError:
            return

    class Meta:
        abstract = True


class NameCaseMixin(models.Model):
    name_nominative = models.CharField(max_length=250, null=True, verbose_name=_('Именительный падеж'))
    name_genitive = models.CharField(max_length=250, null=True, verbose_name=_('Родительный падеж'))
    name_dative = models.CharField(max_length=250, null=True, verbose_name=_('Дательный падеж'))
    name_accusative = models.CharField(max_length=250, null=True, verbose_name=_('Винительный падеж'))
    name_ablative = models.CharField(max_length=250, null=True, verbose_name=_('Творительный падеж'))
    name_prepositional = models.CharField(max_length=250, null=True, verbose_name=_('Предложный падеж'))

    class Meta:
        abstract = True


class ContactsMixin(models.Model):
    contact_website = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Официальный сайт'))
    contact_partner_site = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Партнерская программа'))
    contact_email = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Email'))
    contact_post_address = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Почтовый адрес'))
    contact_phone = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Контактный телефон'))
    contact_skype = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Skype'))
    contact_whatsapp = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('WhatsApp'))
    contact_viber = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Viber'))
    contact_telegram = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Telegram'))

    class Meta:
        abstract = True


class SocialsMixin(models.Model):
    social_youtube = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Канал на Youtube'))
    social_vk = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Страница Вконтакте'))
    social_fb = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Страница Facebook'))
    social_instagram = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Страница Instagram'))
    social_telegram = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Канал в Telegram'))

    class Meta:
        abstract = True
