from django.db import models
from django.utils.translation import ugettext_lazy as _

from oko_schools.models import School, Owner, OwnerType
from slytools.utils.db import IsDeletedModel
from slytools.utils.web import NameCaseMixin


class Author(Owner, NameCaseMixin):
    parent = models.ForeignKey(School, on_delete=models.CASCADE, null=True, blank=True, verbose_name=_('Школа'))
    education = models.CharField(max_length=500, null=True, blank=True, verbose_name=_('Образование'))

    def save(self, *args, **kwargs):
        self.type = OwnerType.AUTHOR
        super(Author, self).save(*args, **kwargs)

    class Meta:
        verbose_name = _('Автор')
        verbose_name_plural = _('Авторы')
