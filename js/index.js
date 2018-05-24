window.onload = function(){
    var skill_length = document.getElementsByClassName("each_box");
    var skill_width = skill_length[0].offsetWidth;
    
    for (i = 0; i < skill_length.length; i++) {
        skill_length[i].style.height = skill_width+"px";
    }
   
    
}

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
    $(".relative").show();
 });


 $('.each_rice').click(function() {
    $(this).css({
        'box-shadow': '0px 12px 32px rgba(0, 0, 0, 0.5)'
    });
});