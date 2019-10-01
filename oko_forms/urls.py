# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

from django.conf import settings
from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.views.static import serve

from oko_forms.views import partner_form_process
from . import views

admin.autodiscover()

# urlpatterns = [
#     url(r'^partner_form/$', views.PartnerFormView, name='partner_form'),
#     url(r'^partner_thanks/$', views.thanks, name='partner_thanks'),
# ]

# urlpatterns = patterns('feed_app.views',
#     url(r'^process-feedback-form/(?P<next_url>\d+)', 'form_process', name='form_process'),
# )

urlpatterns = [
    # url(r'^process-partner-form/(?P<next_url>\d+)', 'oko_forms.views.partner_form_process', name='partner_form_process'),
    url(r'^process-partner-form/(?P<next_url>\d+)', partner_form_process, name='partner_form_process'),
]
