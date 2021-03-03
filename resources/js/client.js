
 //NAVBAR/HEADER STICKY CLASS
 window.addEventListener( "scroll", () => {
   const header = document.querySelector("header");
   header.classList.toggle("sticky", window.scrollY > 0);
  } );
 

document.getElementById("toggleHamburger").addEventListener("click", () => {
   const menuToggle = document.querySelector(".menu")
   menuToggle.classList.toggle("active-menu");
   
  });
document.getElementById("times").addEventListener("click", () => {
      const menuToggle = document.querySelector(".menu")
     menuToggle.classList.remove("active-menu");

});