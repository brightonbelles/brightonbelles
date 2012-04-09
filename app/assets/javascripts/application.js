//= require jquery
//= require jquery_ujs
//= require_tree .
//= require twitter/bootstrap

$(document).ready(function() {

    $("a.thumbnail").mouseenter(function() {
        $(this).tab('show');
    });
    
});
