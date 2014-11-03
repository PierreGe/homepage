{% load staticfiles %}
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{% block title %}UrLab{% endblock %}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="{% static 'css/normalize.css' %}">
        <link rel="stylesheet" href="{% static 'css/main.css' %}">
        <link rel="stylesheet" href="{% static 'css/font-awesome.min.css' %}">

        <script src="{% static 'js/vendor/modernizr.js' %}"></script>
        <script src="{% static 'js/vendor/jquery.js' %}"></script>
        <script src="{% static 'js/vendor/slides.jquery.js' %}"></script>
        <script src="{% static 'js/main.js' %}"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <div class="header-container">
            <header class="wrapper clearfix">
                <h1 class="title">UrLab</h1>

                <nav>
                    <ul>
                        <li><a href="//wiki.urlab.be/Main_Page">Wiki</a></li>
                        <li><a href="//kanboard.urlab.be/">Board </a></li>
                        <li><a href="//pamela.urlab.be">Pamela</a></li>
                        <li><a href="//github.com/UrLab">GitHub</a></li>
                    </ul>
                </nav>
                <h2>Your hackerspace in the middle of the campus!</h2>
            </header>
        </div>
        <div class="main-container">
            <div class="main wrapper clearfix">
                <div id="content">
                    {% block content %} {% endblock %}
                </div>
                <aside>
                    {% block aside %}
                    <a href="{% url "home" %}">Home</a>
                    -
                    <a href="{% url "projects" %}">Projets</a>
                    <a class="status" id="status_bar" href="http://pamela.urlab.be/"></a>
                    <h3>Contact</h3>
                    <ul>
                        <li>
                            IRC : 
                            <a href="http://webchat.freenode.net/?channels=urlab">chat.freenode.org#urlab</a>
                        </li>
                        <li>Mail : contact@urlab.be</li>
                        <li>
                            Mailing-lists :
                            <a href="//www.cerkinfo.be/cgi-bin/mailman/listinfo/hackulb">Annonces</a>,
                            <a href="http://www.cerkinfo.be/cgi-bin/mailman/listinfo/urlab-discussions">Discussions</a>
                        </li>
                        <li>
                            Social : 
                            <a href="https://twitter.com/UrLabBxl" title="Twitter">
                                <i class="fa fa-twitter"></i>
                            </a>,
                            <a href="https://www.facebook.com/urlabbxl" title="Facebook">
                                <i class="fa fa-facebook-square"></i>
                            </a>,
                            <a href="https://github.com/UrLab" title="GitHub">
                                <i class="fa fa-github"></i>
                            </a>
                        </li>
                        <li>Adresse : 131, av. Buyl, 1050 Ixelles
                            <div id="carte-container">
                                <iframe id="carte" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="//www.openstreetmap.org/export/embed.html?bbox=4.380519390106201%2C50.811327967126935%2C4.388464093208312%2C50.81458530470962&amp;layer=mapnik&amp;marker=50.8129566643136%2C4.384491741657257"></iframe>
                                <br/>
                                <a href="//www.openstreetmap.org/?mlat=50.81296&amp;mlon=4.38449#map=18/50.81296/4.38449">Agrandir la carte</a>
                            </div>
                        </li>
                        <li><a href="http://hackerspaces.be">Autres hackerspaces en Belgique</a></li>
                        <li><a href="//hackeragenda.urlab.be">Agenda des évènements des hackerspaces</a></li>
                    </ul>
                    {% endblock %}
                </aside>
            </div>
        </div>
        <div id="footer-container" class="footer-container">
        <footer class="wrapper">
                UrLab, le hackerspace de l’Université Libre de Bruxelles − <a href="http://cerkinfo.be/">Cercle Informatique ASBL</a> −
                <a href="https://github.com/C4ptainCrunch/UrLab-homepage/blob/master/README.md">Licence and credits</a> − 
                <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC BY-SA</a>
            </footer>
        </div>

    </body>
</html>
