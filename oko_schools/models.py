import uuid

from django.db import models
from django.utils.translation import ugettext_lazy as _

from slytools.utils.db import IsDeletedModel
from slytools.utils.web import WebPageMixin, NameCaseMixin, ContactsMixin, SocialsMixin


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


class OwnerType(dict):
    SCHOOL = 0
    AUTHOR = 1


OWNER_TYPES = OwnerType({
    OwnerType.SCHOOL: _(u"Школа"),
    OwnerType.AUTHOR: _(u"Автор"),
})


class Owner(WebPageMixin, ContactsMixin, SocialsMixin, IsDeletedModel):
    """
    Владелец продукта
    """
    name = models.CharField(max_length=250, db_index=True, verbose_name=_("Имя"))
    image = models.ImageField(upload_to=make_upload_path(field_name='image'), blank=True, default="", verbose_name=_('Изображение'))
    description = models.TextField(blank=True, verbose_name=_('Описание'))
    city = models.CharField(max_length=250, null=True, blank=True, verbose_name=_('Город'))
    type = models.PositiveSmallIntegerField(choices=OWNER_TYPES.items(), editable=False, default=OwnerType.SCHOOL)

    def __str__(self):
        return self.name


class School(Owner):

    def save(self, *args, **kwargs):
        self.type = OwnerType.SCHOOL
        super(School, self).save(*args, **kwargs)

    class Meta:
        verbose_name = _('Школа')
        verbose_name_plural = _('Школы')
