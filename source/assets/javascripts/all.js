document.addEventListener("keyup",function(e){
   var key = e.which||e.keyCode;
   switch(key){
      //left arrow
      case 37:
         document.getElementById("left").click();
      break;
      case 38:
         document.getElementById("back").click();
      break;
      //right arrow
      case 39:
         document.getElementById("right").click();
      break;
   }
});