$(".img_cancel").click(function () {
    $("#popup").hide();
 });

 $("#home").click(function () {
    window.location = 'index.html'
 });
 $("#customize").click(function () {
    window.location = 'customize.html'
 });
 $("#speciel").click(function () {
    window.location = 'speciel.html'
 });
 $("#register").click(function () {
    window.location = 'register.html'
 });

 $("#login").click(function () {
    $(".relative_pop").show();
 });
 $(".relative_pop").click(function () {
    $(".relative_pop").hide();
 });