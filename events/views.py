#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Create your views here.
from django.http import HttpResponse
from models import Event
from ics import Calendar as iCalendar
from ics import Event as iEvent
from datetime import timedelta
import arrow
from django.views.decorators.cache import cache_page
import json


@cache_page(60 * 15)
def cal(request):
    duration = timedelta(hours=3)
    cal = iCalendar()
    events = Event.objects.all()
    for event in events:
        if event.event_date is None or not event.status == u"Prêt":
            continue
        # TODO : add url
        time = arrow.get(event.event_date.replace(tzinfo=None), 'Europe/Brussels')
        e = iEvent(name=event.name.replace(',', '\,'), begin=time, duration=duration, location=event.place.replace(',', '\,'))
        cal.events.append(e)

    return HttpResponse(str(cal), content_type="text/calendar")


@cache_page(60 * 15)
def hackeragenda(request):
    ret = {
        "org": "urlab",
        "api": 0.1,
        "events": []
    }

    events = Event.objects.all()
    for event in events:
        if event.event_date is None or not event.status == u"Prêt":
            continue
        e = {
            "title": event.name,
            "url": "http:" + event.url,
            "all_day": False,
            "start": arrow.get(event.event_date.replace(tzinfo=None), 'Europe/Brussels').isoformat(),
            "location": event.place,
        }
        ret['events'].append(e)

    return HttpResponse(json.dumps(ret), content_type="application/json")
