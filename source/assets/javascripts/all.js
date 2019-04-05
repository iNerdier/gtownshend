document.addEventListener("keyup",function(e){
   var key = e.which||e.keyCode;
   switch(key){
      //left arrow
      case 37:
         document.getElementById("linkLeft").click();
      break;
      case 38:
         document.getElementById("linkBack").click();
      break;
      //right arrow
      case 39:
         document.getElementById("linkRight").click();
      break;
   }
});