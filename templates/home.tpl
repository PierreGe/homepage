{% extends "base.tpl" %}

{% block title %}Home - UrLab{% endblock %}

{% block content %}
<div id="slides">
    <div class="slides_container">
        {% for image in slideshow %}
            <div>
                <img width="570" src="{{ image }}">
            </div>
        {% endfor %}
        <div>
            <img width="570" src="http://i.imgur.com/aobCl9ch.jpg">
        </div>
        <div>
            <img width="570" src="http://www.cientificosaficionados.com/tbo/fusor/fusor30.jpg">
        </div>
        <div>
            <img width="570" src="http://farm9.staticflickr.com/8069/8239211341_d3b157c2ce_z.jpg">
        </div>
        <div>
            <img width="570" src="http://www.welovebuzz.com/wp-content/uploads/2012/10/google-datacenter-tech-13.jpg">
        </div>
    </div>
</div>

<h1>UrLab ?</h1>
<p>Ca roxx du poney mec !</p>
<h1>Prochains événements</h1>
{% for event in events %}
    <a href="{{event.url}}">{{event.name}}</a>, le {{event.date}}<br>
{% endfor %}

{% endblock %}


{% block aside %}
    <h3>hacker /a.kœʁ/ <i>nom commun</i></h3>
    <p>
        Passionné par la connaissance des arcanes de l’informatique, qui aime bricoler, bidouiller, sonder, explorer un système informatique physique (matériel) ou numérique (système d’exploitation, site Web...).
    </p>
    <iframe width="300" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=4.380519390106201%2C50.811327967126935%2C4.388464093208312%2C50.81458530470962&amp;layer=mapnik&amp;marker=50.8129566643136%2C4.384491741657257"></iframe>
    <br/>
    <small>
        <a href="http://www.openstreetmap.org/?mlat=50.81296&amp;mlon=4.38449#map=18/50.81296/4.38449">Agrandir la carte</a>
    </small>
 {% endblock %}