# -*- coding: utf-8 -*-

from django.shortcuts import render
from datetime import datetime
from path import path
import settings
import requests

def home(request):

    # Get some images for the slideshow
    dir = path(settings.PROJECT_PATH)/"static/img/slideshow"
    images = map(lambda p: settings.STATIC_URL+'img/slideshow/'+p.name, dir.files())

    # Get last events
    now = datetime.now()
    url = ("http://urlab.be/api.php?action=ask&query=" +
        "[[Category:Event]] [[Event status::Prêt]]" +
        "[[Date::>{}-{}-{}T00:00:00]]".format(now.year, now.month, now.day) +
        "|?Date|?Place|?Modification date" +
        "|sort=Modification date|order=desc" +
        "&format=json"
    )
    r = requests.get(url)
    result = r.json()
    raw_events = result['query']['results']
    events = []
    for title, raw_event in raw_events.iteritems():
        event = {
            'name' : raw_event['fulltext'][10:], # Strip "Evenement:" in the begining
            'url' : raw_event['fullurl'],
            'date' : datetime.fromtimestamp(float(raw_event['printouts']['Date'][0])),
        }
        events.append(event)

    context = {
        'slideshow' : images,
        'events' : events,
    }
    return render(request, 'home.tpl',context)