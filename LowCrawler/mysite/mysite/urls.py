"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

from django.views.static import serve
from django.views.defaults import bad_request
from django.views.defaults import server_error
from django.views.defaults import page_not_found
from django.views.defaults import permission_denied
from django.views.generic.base import RedirectView
from django.contrib.sitemaps.views import index
from django.contrib.sitemaps.views import sitemap

from main.views import index_main
from list_movie.views import index_listmovie
from blueberry.views import index_blueberry
from recplate.views import index_recplate
from mytools.views import index_mytools

from django_xmlrpc.views import handle_xmlrpc

from zinnia.sitemaps import TagSitemap
from zinnia.sitemaps import EntrySitemap
from zinnia.sitemaps import CategorySitemap
from zinnia.sitemaps import AuthorSitemap

urlpatterns = [
    #index
    url(r'^$', RedirectView.as_view(url='/index/', permanent=True)),
    url(r'^index/', index_main, name='index_main'),

    #login
    url(r'^accounts/', include('userena.urls')),
    # url(r'^search/', include('haystack.urls')),

    #other site
    url(r'^blueberry/', index_blueberry, name='index_blueberry'),
    url(r'^recplate/', index_recplate, name='index_recplate'),

    #zinnia blog
    url(r'^blog/', include('zinnia.urls')),
    url(r'^comments/', include('django_comments.urls')),
    url(r'^xmlrpc/$', handle_xmlrpc),

    #movie list
    url(r'^list_movie/$', index_listmovie, name='index_listmovie'),

    #admin
    url(r'^grappelli/', include('grappelli.urls')),  # grappelli URLS
    url(r'^admin/', include(admin.site.urls)),

    #tools
    url(r'^tools/', index_mytools, name='index_mytools'),

] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

sitemaps = {
    'tags': TagSitemap,
    'blog': EntrySitemap,
    'authors': AuthorSitemap,
    'categories': CategorySitemap
}

urlpatterns += [
    url(r'^sitemap.xml$',
        index,
        {'sitemaps': sitemaps}),
    url(r'^sitemap-(?P<section>.+)\.xml$',
        sitemap,
        {'sitemaps': sitemaps}),
]

urlpatterns += [
    url(r'^400/$', bad_request),
    url(r'^403/$', permission_denied),
    url(r'^404/$', page_not_found),
    url(r'^500/$', server_error),
]

if settings.DEBUG:
    urlpatterns += [
        url(r'^media/(?P<path>.*)$', serve,
            {'document_root': settings.MEDIA_ROOT})
    ]
