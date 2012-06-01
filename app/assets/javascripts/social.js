$(function() {

    // facebook like button
    $.getScript('http://connect.facebook.net/en_US/all.js', function() {
        FB.init({appId: '258640794169371',
                 status: false,
                 cookie: false,
                 xfbml: true,
                 channelURL: 'http://www.brightonbelles.com/channel.html',
                 oauth: false
                });
        $('#facebook').each(function() {
            var xfbml = '<fb:like href="' + $(this).attr('data-likeurl') + '" send="" ' +
                'width="100" show_faces="" font="" layout="button_count" action="like">' +
                '</fb:like>';
            $(this).replaceWith(xfbml);
        });
    });

    // tweet button
    var js = $('<script></script>');
    js[0].src = 'http://platform.twitter.com/widgets.js';
    js[0].id = 'twitter-wjs';
    $('.twitter-widget').after(js);
    $('.twitter-widget').after(js);
    
    // pinterest pin button
    js = $('<script></script>');
    js[0].src = 'http://assets.pinterest.com/js/pinit.js';
    $('.pin-it-button').after(js);
});
