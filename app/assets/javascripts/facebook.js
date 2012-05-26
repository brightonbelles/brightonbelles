// facebook recommend button                                                    
$(function() {
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
});
