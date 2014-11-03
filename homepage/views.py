# -*- coding: utf-8 -*-

from django.shortcuts import render, redirect
from django.http import HttpResponse
from datetime import datetime
from path import path
import settings
import requests
import json
import collections
import django.views.decorators.cache as django_cache
from bs4 import BeautifulSoup
from pytz import timezone


def cache_page(*args, **kwargs):
    if settings.ENABLE_CACHE:
        def wrapper(func):
            return django_cache.cache_page(func, *args, **kwargs)
    else:
        def wrapper(func):
            return func
    return wrapper


@cache_page(60 * 15)
def parse_events_from_wiki(request):
    # Grab events from wiki home page
    soup = BeautifulSoup(requests.get("http://wiki.urlab.be/Main_Page").content)
    table = soup.find("table", attrs={"class": "wikitable"})
    brussels = timezone('Europe/Brussels')
    events = []

    for line in table.findAll('tr'):
        # Skip titles
        if line.find('th'):
            continue

        name, date, place = map(lambda x: x.text.strip(), line.findAll('td'))
        url = line.find('a').attrs['href']
        if url[:4] != 'http':
            url = "http://wiki.urlab.be" + url

        # "3 November 2014 18:30:00"
        date = datetime.strptime(date.lower(), "%d %B %Y %H:%M:%S")
        events.append({
            "name": name,
            "date": brussels.localize(date).strftime('%Y-%m-%dT%H:%M:%S%z'),
            "url": url,
            "place": place
        })

    return HttpResponse(
        json.dumps({'events': events}), 
        content_type='application/json'
    )


@cache_page(60 * 15)
def home(request):
    # Get some images for the slideshow
    dir = path(settings.PROJECT_PATH) / "static/img/slideshow"
    images = map(lambda p: settings.STATIC_URL + 'img/slideshow/' + p.name, dir.files())

    context = {
        'slideshow': images,
    }
    return render(request, 'home.tpl', context)

def projects(request):
    context = {}
    proj_root = path(settings.PROJECT_PATH) / "static/img/projects"
    fmt = settings.STATIC_URL + 'img/projects/{}/{}'
    for proj in proj_root.dirs():
        images = map(lambda f: fmt.format(proj.name, f.name), proj.files())
        context[proj.name] = images
    return render(request, 'projects.haml', context)


@cache_page(60 * 15)
def wiki_404(request, url):
    wiki_url = 'http://wiki.urlab.be/{}'.format(url)
    return redirect(wiki_url, permanent=False)
