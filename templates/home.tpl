{% extends "base.tpl" %}

{% block title %}Home − UrLab{% endblock %}

{% block content %}

<div id="fosdem" style="
border: 5px solid rgb(169, 0, 177);
width: 500px;
margin-bottom: 20px;
padding: 20px;">
<img src="https://fosdem.org/2014/icon-1a3618bf8816852a0bba761ea9367f1a8f95da41dd7f366e327aa4a543aec99a.png" style="
float: left;
height: 5em;
margin-right: 20px;">
UrLab will be at FOSDEM 2014!<br>
Just look for <span style="font-family: monospace; font-weight: bold; font-size: 1.2em;">/tmp/urlab</span> signs ;)<br>
<a href="https://wiki.urlab.be/Evenement:FOSDEM_2014">More info on our wiki</a>
<div style="clear: both"></div>
</div>
<div id="slides">
    <div class="slides_container">
        {% for image in slideshow %}
            <div>
                <img width="570" src="{{ image }}">
            </div>
        {% endfor %}
    </div>
</div>



<h1>UrLab ?</h1>
<p>UrLab est le hackerspace de l’ULB. Il s’agit d'un laboratoire ouvert par et pour les étudiants, où l’on met à disposition une infrastructure pour qu’ils puissent y exprimer leur créativité de manière collaborative.</p>
<p>
UrLab permet aux étudiants de l’ULB ayant un intérêt pour l’informatique, l’électronique ou d’une manière générale la technologie, de se rencontrer, partager et collaborer. Il peut être comparé à un laboratoire ouvert. Les thèmes abordés peuvent avoir un lien direct avec les cours mais pas nécessairement, le but étant d’explorer d’autres domaines, ou d’en approfondir.</p>
<h2>Un hackerspace ?</h2>
<p>Le hackerspace est composé de trois facettes :
<ul>
    <li>Un atelier, lieu de travail où chacun peut construire quelque chose en profitant des installations présentes ;</li>
    <li>Un lieu de socialisation, où des groupes de gens peuvent se rencontrer et échanger des idées et collaborer sur des projets ;</li>
    <li>L’organisation régulière de conférences et de présentations liées à l'informatique et à la technologie en général.</li>
</ul>
UrLab est un lieu de rencontre pour les étudiants intéressés par la technologie. C’est un lieu où l’on développe ses projets et l’on partage ses connaissances par l’intermédiaire d’ateliers et de conférences.
</p>
<h1>Prochains événements</h1>
<ul id="events">
    <li>Chargement en cours...</li>
</ul>
<script type="text/javascript">
    $(document).ready(function(){
        var events_dom = $('#events');
        $.getJSON('{% url "events" %}', function(data){
            events_dom.empty();
            for (var i=0; i<data['events'].length; i++){
                var ev = data['events'][i];
                events_dom.append(
                    '<li><a href="'+ev.url+'" target="_blank">'+ev.name+'</a>, le '+ev.date+'<br></li>'
                );
            }
        }).error(function(xhr){
            events_dom.empty();
            events_dom.append('<li class="error">Les informations n\'ont pas pu se charger, veuillez ré-essayer plus tard.</li>')
        });
    });
</script>
{% endblock %}


{% block aside %}
    <h3>Contact</h3>
    <ul>
        <li>IRC : <a href="http://webchat.freenode.net/?channels=urlab">chat.freenode.org#urlab</a></li>
        <li>Mail : contact@urlab.be</li>
        <li>Mailing-lists : <a href="http://www.cerkinfo.be/cgi-bin/mailman/listinfo/hackulb">Annonces</a>,
            <a href="http://www.cerkinfo.be/cgi-bin/mailman/listinfo/urlab-discussions">Discussions</a>
        </li>
        <li>Adresse : 131, av. Buyl, 1050 Ixelles
            <div id="carte-container">
                <iframe id="carte" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=4.380519390106201%2C50.811327967126935%2C4.388464093208312%2C50.81458530470962&amp;layer=mapnik&amp;marker=50.8129566643136%2C4.384491741657257"></iframe>
                <br/>
                <a href="http://www.openstreetmap.org/?mlat=50.81296&amp;mlon=4.38449#map=18/50.81296/4.38449">Agrandir la carte</a>
            </div>
        </li>
        <li><a href="http://hackerspaces.be">Autres hackerspaces en Belgique</a></li>
    </ul>
 {% endblock %}
