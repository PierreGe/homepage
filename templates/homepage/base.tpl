{% load staticfiles %}
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/normalize.min.css">
        <link rel="stylesheet" href="css/main.css">

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
                        <li><a href="#">Wiki</a></li>
                        <li><a href="#">Pamela</a></li>
                        <li><a href="#">GitHub</a></li>
                    </ul>
                </nav>
                <h2>Come to our side, we've got poneyz!</h2>
            </header>
        </div>

        <div class="main-container">
            <div class="main wrapper clearfix">
                <article>
                    <div id="slides">
                        <div class="slides_container">
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

                    <header>
                        <h1>article header h1</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec.</p>
                    </header>
                    <section>
                        <h2>article section h2</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices. Proin in est sed erat facilisis pharetra.</p>
                    </section>
                    <section>
                        <h2>article section h2</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices. Proin in est sed erat facilisis pharetra.</p>
                    </section>
                    <footer>
                        <h3>article footer h3</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor.</p>
                    </footer>
                </article>

                <aside>
                    <h3>hacker /a.kœʁ/ <i>nom commun</i></h3>
                    <p>Passionné par la connaissance des arcanes de l’informatique, qui aime bricoler, bidouiller, sonder, explorer un système informatique physique (matériel) ou numérique (système d’exploitation, site Web...).</p>
                    <iframe width="300" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=4.380519390106201%2C50.811327967126935%2C4.388464093208312%2C50.81458530470962&amp;layer=mapnik&amp;marker=50.8129566643136%2C4.384491741657257"></iframe><br/>
                    <small><a href="http://www.openstreetmap.org/?mlat=50.81296&amp;mlon=4.38449#map=18/50.81296/4.38449">Agrandir la carte</a></small>
                </aside>

            </div> <!-- #main -->
        </div> <!-- #main-container -->

        <div id="footer-container" class="footer-container">
            <footer class="wrapper">
                UrLab, le hackerspace de l'ULB - <a href="https://github.com/C4ptainCrunch/UrLab-homepage/blob/master/README.md">Licence and credits</a>  - cc by-sa
            </footer>
        </div>

    </body>
</html>
