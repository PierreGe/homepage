$(function(){
    $("#slides").slides({
        play: 3000,
        hoverPause: true,
        pause: 1,
        paginationClass: 'pagination'
    });

    $.getJSON("//api.urlab.be/spaceapi/status", function(json) {
        if (json.state == "open")
            statustext = "Nous sommes ouverts, viendez ! :-)";
        else
            statustext = "Le hackerspace est fermé pour l'instant";
        $('#status_bar').addClass("status" + json.state);
        $('#status_bar').append(statustext);
        $('#status_bar').css('display', 'block');
    });
});
