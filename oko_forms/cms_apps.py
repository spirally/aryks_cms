from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _


class OkoFormsApphook(CMSApp):
    app_name = "oko_forms"
    name = _('Формы')

    def get_urls(self, page=None, language=None, **kwargs):
        return ['oko_forms.urls']


apphook_pool.register(OkoFormsApphook)
