from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _


class AuthorsApphook(CMSApp):
    app_name = "oko_authors"
    name = _('Авторы')

    def get_urls(self, page=None, language=None, **kwargs):
        return ['oko_authors.urls']


apphook_pool.register(AuthorsApphook)
