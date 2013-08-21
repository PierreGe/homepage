# Hoi !

This is what may be the future homepage for [UrLab.be](http://urlab.be).
It's written in Django, but the most part is static html/css, Djnago is used only for dynamically query the wiki.

For now, a test server is hosted on [homepage.urlab.be](http://homepage.urlab.be)

## Install

One shot install :
```shell
git clone https://github.com/UrLab/homepage.git
cd homepage
virtualenv --distribute --no-site-packages ve
source ve/bin/activate
pip install -r requirements.txt
chmod +x ./manage.py
```

Run :

```shell
source ve/bin/activate # Do only once (if it's a new tty)
./manage.py runserver
```

Goto [http://127.0.0.1:8000/](http://127.0.0.1:8000/) and enjoy !

## Contribute

Fork [this](https://github.com/UrLab/homepage) repo, make some nice modifications, and just make a pull request :)

Once the pull request is accepted, the automatic deployer will be triggered and your modifications will be live !

## License and credits
This project uses :

* [SlidesJS](http://slidesjs.com/) : Apache license. © 2012 Nathan Searles.
* [jQuery](http://jquery.com/) : Mit-Licence © jQuery Foundation
* [Subtle Grey](http://subtlepatterns.com/subtle-grey/) and [Wild Oliva](http://subtlepatterns.com/wild-oliva/) from [Subtle Patterns](http://subtlepatterns.com) : © Subtle Patterns Creative Commons Attribution-ShareAlike 3.0 Unported License.
* The initial template was generated with [Initializr](http://www.initializr.com/) : [Thanks to Jonathan Verrecchia ](https://twitter.com/verekia)

## Screenshot
![screenshot](https://pics.urlab.be/albums/divers/1377082016_Capture_d__cran_2013_08_21___12.45.45.png)