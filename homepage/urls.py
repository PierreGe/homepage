from django.conf.urls import patterns, include, url

import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView


urlpatterns = patterns('',
    # Pages
    url(r'^$', 'homepage.views.home', name='home'),
    url(r'^projects$', 'homepage.views.projects', name='projects'),
    url(r'^sm', RedirectView.as_view(url="http://wiki.urlab.be/Evenement:SmartMonday_Novembre_2014")),
    url(r'^git', RedirectView.as_view(url="http://wiki.urlab.be/Evenement:Workshop_Git_2014")),

    # Events data
    url(r'^events$', 'homepage.views.parse_events_from_wiki', name='events-old'),
    url(r'^events.json$', 'events.views.homepage', name='events'),
    url(r'^events.ics$', 'events.views.cal', name='ics'),
    url(r'^hackeragenda.json$', 'events.views.hackeragenda', name='ha'),
    url(r'^favicon.ico$', RedirectView.as_view(url=settings.STATIC_URL + 'img/favicon.ico')),

    # Any unknown route goes to wiki
    url(r'^(?P<url>.*)/$', 'homepage.views.wiki_404'),
)
