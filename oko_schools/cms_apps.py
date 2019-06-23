from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _


class SchoolsApphook(CMSApp):
    app_name = "oko_schools"
    name = _('Школы')

    def get_urls(self, page=None, language=None, **kwargs):
        return ['oko_schools.urls']


apphook_pool.register(SchoolsApphook)
