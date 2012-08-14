$(function() {

    $("a.tracked").click(function() {
        var link = $(this);
        var dest = link.attr('href');
        var type = link.attr('data-type');
        _gaq.push(['_trackEvent', 'Outbound Links', type, dest]);
    });

});
