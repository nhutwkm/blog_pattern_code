  function resizediv(){
     var h=0;
     var h1=document.getElementById("menu").clientHeight;
    
     var h2=document.getElementById("right").clientHeight;
     if (h2>h1){ var h=h2; }else{ var h=h1}
    
     document.getElementById("menu").style.height=h+"px";
     
     document.getElementById("right").style.height=h+"px";

   }
