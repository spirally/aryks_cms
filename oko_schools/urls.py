# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

from django.conf import settings
from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.views.static import serve

from . import views

admin.autodiscover()

urlpatterns = [
    url(r'^$', views.SchoolsView.as_view(), name='oko_schools'),
    # url(r'^(?P<category_slug>[_0-9a-zA-Z-]+)/(?P<slug>[_0-9a-zA-Z-]+)/$', views.ProductView.as_view(), name='product'),
    # url(r'^(?P<slug>[_0-9a-zA-Z-]+)/$', views.CategoryView.as_view(), name='category'),
    url(r'^(?P<category_slug>[_0-9a-zA-Z-]+)/$', views.SchoolsByCategoryView.as_view(), name='schools_by_category'),
    # url(r'^o/(?P<slug>[_0-9a-zA-Z-]+)/$', views.ProductView.as_view(), name='owner_detail'),
]
