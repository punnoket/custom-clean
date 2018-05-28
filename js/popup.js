
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
 $("#cart").click(function () {
    window.location = 'cart.html'
 });
 $("#login").click(function () {
    $(".relative_pop").show();
    $(".popup_box").show();
 });
 $(".relative_pop").click(function () {
    $(".popup_box").hide();
    $(".relative_pop").hide();
 });
 


 

$(".img_cancel").click(function () {
    $("#popup").hide();
 });

