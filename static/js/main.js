$(function(){
    $("#slides").slides({
        play: 3000,
        hoverPause: true,
        pause: 1,
        paginationClass: 'pagination'
    });

    $.getJSON("http://api.urlab.be/spaceapi/status", function(json) {
        if (json.state == "open")
            statustext = "Nous sommes ouverts, viendez ! :-)";
        else
            statustext = "Le hackerspace est fermé pour l'instant";
        $('aside').prepend($.parseHTML('<a href="http://pamela.urlab.be/" class="status status'+json.state+'">'+statustext+'</a>'));
    });
});
