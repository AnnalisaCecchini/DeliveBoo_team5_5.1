 //HOMEPAGE BACKGROUND COLOR CHANGING FUNCTION
 function bgChanger(){
    if(this.scrollY > this.innerHeight / 2){
        document.body.classList.add("bg-active");
    }
    else{
        document.body.classList.remove("bg-active");  
    }
}
window.addEventListener("scroll",bgChanger);

 //HOMEPAGE TYPING ANIMATION FUNCTION
 const texts = ["veloce ","delizioso ","conveniente "];

 let count = 0;

 let index = 0;
 let currentText = "";
 let letter = "";
 
  (function type(){
      if (count === texts.length){
          count = 0;
      }
      currentText = texts[count]; 
      letter = currentText.slice(0, ++index);
      document.querySelector(".typing").textContent = letter;
      if(letter.length === currentText.length){
          count++;
          index = 0;
      }
      setTimeout(type, 350);
  }());
