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
                        <li><a href="//wiki.urlab.be/">Wiki</a></li>
                        <li><a href="//pamela.urlab.be">Pamela</a></li>
                        <li><a href="//github.com/UrLab">GitHub</a></li>
                        <li><a href="//wiki.urlab.be/">Contact</a></li>
                    </ul>
                </nav>
                <h2>Come to our side, we've got poneyz!</h2>
            </header>
        </div>
        <div class="main-container">
            <div class="main wrapper clearfix">
                <div id="content">
                    {% block content %} {% endblock %}
                </div>
                <aside>
                    {% block aside %} {% endblock %}
                </aside>
            </div>
        </div>
        <div id="footer-container" class="footer-container">
            <footer class="wrapper">
                UrLab, le hackerspace de l’ULB − <a href="https://github.com/C4ptainCrunch/UrLab-homepage/blob/master/README.md">Licence and credits</a> − <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC BY-SA</a>
            </footer>
        </div>

    </body>
</html>
