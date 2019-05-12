from django.db import models
from django.utils.translation import ugettext_lazy as _


class WebPageMixin(models.Model):

    published = models.BooleanField(default=False, db_index=True, verbose_name=_('Опубликовано'))
    title = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('Расширенный заголовок'))
    title_menu = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('Заголовок для меню'))
    slug = models.SlugField(_("Slug"), default="", blank=True, db_index=True, max_length=300,)
    url = models.CharField(_("Url"), default="", blank=True, max_length=300)
    seo_keywords = models.CharField(max_length=512, null=True, blank=True, verbose_name=_('SEO ключевые слова'))
    seo_description = models.TextField(null=True, blank=True, verbose_name=_('SEO описание'))
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
