from django.db import models
from django.utils.translation import ugettext_lazy as _

from slytools.utils.web import OrderingMixin


class TypeProperty(OrderingMixin):
    name = models.CharField(_("Название"), default="", max_length=250)
    category = models.ForeignKey('infoshop.Category', on_delete=models.CASCADE, related_name='categories_property', verbose_name=_('Категория'))

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Характеристика категории')
        verbose_name_plural = _('Характеристики категорий')


class ProductProperty(OrderingMixin):
    type_property = models.ForeignKey(TypeProperty, on_delete=models.CASCADE, related_name='type_property', verbose_name=_('Характеристика'))
    value = models.CharField(_("Значение"), default="", max_length=250)
    product = models.ForeignKey('infoshop.Product', on_delete=models.CASCADE, related_name='properties_product', verbose_name=_('Инфопродукт'))

    def __str__(self):
        return self.value

    class Meta:
        verbose_name = _('Характеристика инфопродукта')
        verbose_name_plural = _('Характеристики инфопродуктов')
