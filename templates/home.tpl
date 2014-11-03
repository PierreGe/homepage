{% extends "base.tpl" %}

{% block title %}Home − UrLab{% endblock %}

{% block content %}
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
UrLab permet aux étudiants de l’ULB ayant un intérêt pour l’informatique, l’électronique ou d’une manière générale la technologie, de se rencontrer, partager et collaborer. Il peut être comparé à un laboratoire ouvert. Les thèmes abordés peuvent avoir un lien direct avec les cours mais pas nécessairement, le but étant d’explorer d’autres domaines, ou d’en approfondir. Quelques exemples sont présentés sur la page <a href="{% url "projects" %}">projets</a></p>
<h2>Un hackerspace ?</h2>
<p>Le hackerspace est composé de trois facettes :
<ul>
    <li>Un atelier, lieu de travail où chacun peut construire quelque chose en profitant des installations présentes ;</li>
    <li>Un lieu de socialisation, où des groupes de gens peuvent se rencontrer et échanger des idées et collaborer sur des projets ;</li>
    <li>L’organisation régulière de conférences et de présentations liées à l'informatique et à la technologie en général.</li>
</ul>
UrLab est un lieu de rencontre pour les étudiants intéressés par la technologie. C’est un lieu où l’on développe ses projets et l’on partage ses connaissances par l’intermédiaire d’ateliers et de conférences.
</p>
<!-- <h1>Prochains événements</h1>
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
                ev.date = new Date(ev.date);
                var m = String(ev.date.getMinutes());
                if(m.length < 2){
                    m = "0" + m;
                }
                events_dom.append(
                    '<li><a href="'+ev.url+'" target="_blank">'+ev.name+'</a>, le '+ev.date.getDate()+'/'+ (ev.date.getMonth() + 1) + ' à '+ev.date.getHours()+'h'+m+'<br></li>'
                );
            }
        }).error(function(xhr){
            events_dom.empty();
            events_dom.append('<li class="error">Les informations n\'ont pas pu se charger, veuillez ré-essayer plus tard.</li>')
        });
    });
</script> -->
{% endblock %}
