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

urlpatterns = [
    url(r'^$', views.CatalogView.as_view(), name='infoshop'),
    # url(r'^(?P<category_slug>[_0-9a-zA-Z-]+)/(?P<slug>[_0-9a-zA-Z-]+)/$', views.ProductView.as_view(), name='product'),
    # url(r'^(?P<slug>[_0-9a-zA-Z-]+)/$', views.CategoryView.as_view(), name='category'),
    url(r'^(?P<category_slug>[_0-9a-zA-Z-]+)/$', views.ProductsByCategoryView.as_view(), name='by_category'),
    url(r'^p/(?P<slug>[_0-9a-zA-Z-]+)/$', views.ProductView.as_view(), name='product_detail'),
    url(r'^register/$', views.RegisterView.as_view(), name='register'),
]
