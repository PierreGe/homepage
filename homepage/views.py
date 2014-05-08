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
    return redirect("/events.json", permanent=True)


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
