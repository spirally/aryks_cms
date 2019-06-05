from django.db import models
from django.utils.translation import ugettext_lazy as _
import uuid

from slytools.utils.web import OrderingMixin, WebPageMixin
from slugify import slugify


class FilterCategory(WebPageMixin, OrderingMixin):
    category = models.ForeignKey('infoshop.Category', on_delete=models.CASCADE, related_name='filtercategories', verbose_name=_('Category'))
    slug = models.CharField(_("Slug"), default="", blank=True, max_length=250)
    name = models.CharField(_("Name"), default="", max_length=250)

    def __str__(self):
        return self.name

    def save(self):
        if not self.slug:
            self.slug = slugify(self.name)

        super(FilterCategory, self).save()

    class Meta:
        verbose_name = _('Filter Category')
        verbose_name_plural = _('Filters Category')


class FilterSelect(OrderingMixin):
    filter_category = models.ForeignKey(FilterCategory, on_delete=models.CASCADE, related_name='filterselect', verbose_name=_('Filter Category'))
    slug = models.CharField(_("Slug"), default="", blank=True, max_length=250)
    url = models.CharField(_("Url"), default="", blank=True, max_length=250)
    name = models.CharField(_("Name"), default="", max_length=250)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Filter Select')
        verbose_name_plural = _('Filters Select')


class ProductFilter(OrderingMixin):
    product = models.ForeignKey('infoshop.Product', on_delete=models.CASCADE, related_name='filterproducts', null=True, verbose_name=_('Product'))
    filter_category = models.ForeignKey(FilterCategory, on_delete=models.CASCADE, null=True, related_name='filter_select_product', verbose_name=_('Filter Category'))
    values = models.ManyToManyField(FilterSelect, related_name='filtervalues', blank=True, verbose_name=_('Values'))

    def __str__(self):
        return str(self.id)

    class Meta:
        verbose_name = _('Product Filter')
        verbose_name_plural = _('Product Filters')
