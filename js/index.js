window.onload = function(){
    var skill_length = document.getElementsByClassName("each_box");
    var skill_width = skill_length[0].offsetWidth;
    
    for (i = 0; i < skill_length.length; i++) {
        skill_length[i].style.height = skill_width+"px";
    }
   
    
}
