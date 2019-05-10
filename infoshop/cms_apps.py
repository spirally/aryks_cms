from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _


class InfoShopApphook(CMSApp):
    app_name = "infoshop"
    name = _('Магазин инфопродуктов')

    def get_urls(self, page=None, language=None, **kwargs):
        return ['infoshop.urls']


apphook_pool.register(InfoShopApphook)
