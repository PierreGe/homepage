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
<p>UrLab est le hackerspace de l'ULB. Il s'agit d'un laboratoire ouvert par et pour les étudiants, où l'on met à disposition une infrastructure pour qu'ils puissent y exprimer leur créativité de manière collaborative.</p>
<p>
UrLab est un endroit où des étudiants de l’ULB ayant un intérêt pour l’informatique, l’électronique ou d’une manière générale la technologie, peuvent se rencontrer, partager et collaborer. Il peut être comparé à un laboratoire ouvert. Les thèmes abordés peuvent avoir un lien direct avec les cours mais pas nécessairement, le but étant d’explorer d’autres domaines, ou d’en approfondir.</p>
<h2>Un hackerspace ? </h2>
<p>Le hackerspace est composé de trois facettes :
<ul>
    <li>Un atelier, lieu de travail où chacun peut construire quelque chose en profitant des installations présentes</li>
    <li>Un lieu de socialisation, où des groupes de gens peuvent se rencontrer et échanger des idées et collaborer sur des projets</li>
    <li>L’organisation régulière de conférences et de présentations liées à l'informatique et à la technologie en général</li>
</ul>
UrLab est un lieu de rencontre pour les étudiants intéressés par la technologie. C'est un lieu où l'on développe ses projets et l'on partage ses connaissances par l'intermédiaire d'ateliers et de conférences.
</p>
<h1>Prochains événements</h1>
{% for event in events %}
    <a href="{{event.url}}">{{event.name}}</a>, le {{event.date}}<br>
{% endfor %}

{% endblock %}


{% block aside %}
    <h3>Contact</h3>
    <ul>
        <li>IRC : irc.freenode.org#urlab</li>
        <li>Mail : contact@urlab.be</li>
        <li>Mailing-lists</li>
        <li>Adresse : 131, av. Buyl
            <div id="carte-container">
                <iframe id="carte" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=4.380519390106201%2C50.811327967126935%2C4.388464093208312%2C50.81458530470962&amp;layer=mapnik&amp;marker=50.8129566643136%2C4.384491741657257"></iframe>
                <br/>
                <a href="http://www.openstreetmap.org/?mlat=50.81296&amp;mlon=4.38449#map=18/50.81296/4.38449">Agrandir la carte</a>
            </div>
        </li>
        <li><a href="http://hackerspaces.be">Autres hackerspaces en belgique</a></li>
    </ul>
 {% endblock %}