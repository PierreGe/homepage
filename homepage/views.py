# -*- coding: utf-8 -*-

from django.shortcuts import render, redirect
from django.http import HttpResponse
from datetime import datetime
from path import path
import settings
import requests
import json
import collections
from django.views.decorators.cache import cache_page


@cache_page(60 * 15)
def parse_events_from_wiki(request):
    """TODO: make some cache !"""
    # Get last events
    now = datetime.now()
    url = (
        "http://wiki.urlab.be/api.php?action=ask&query=" +
        "[[Category:Event]] [[Event status::Prêt]]" +
        "[[Date::>{}-{}-{}T00:00:00]]".format(now.year, now.month, now.day) +
        "|?Date|?Place" +
        "|sort=date|order=asc" +
        "&format=json"
    )
    r = requests.get(url)
    result = r.json(object_pairs_hook=collections.OrderedDict) # Preserve the order of the request
    raw_events = result['query']['results']
    events = {'events': [
        {
            'name': raw_event['fulltext'][10:], # Strip "Evenement:" in the begining
            'url': raw_event['fullurl'],
            'date': datetime.fromtimestamp(float(raw_event['printouts']['Date'][0])).strftime('%d/%m/%Y %Hh%M'),
        } for title, raw_event in raw_events.iteritems()
    ]}
    return HttpResponse(json.dumps(events), content_type="application/json")


@cache_page(60 * 15)
def home(request):

    # Get some images for the slideshow
    dir = path(settings.PROJECT_PATH) / "static/img/slideshow"
    images = map(lambda p: settings.STATIC_URL + 'img/slideshow/' + p.name, dir.files())

    context = {
        'slideshow': images,
    }
    return render(request, 'home.tpl', context)


@cache_page(60 * 15)
def wiki_404(request, url):
    wiki_url = 'http://wiki.urlab.be/{}'.format(url)
    return redirect(wiki_url, permanent=False)
