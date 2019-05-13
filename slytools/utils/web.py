import uuid
from django.db import models
from django.utils.translation import ugettext_lazy as _


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
    content = models.TextField(null=True, blank=True, verbose_name=_('Контент'))
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
