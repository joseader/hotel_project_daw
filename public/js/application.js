(function($) {
  "use strict"; // Start of use strict

  // Desvanecer al hacer scrolling usando jQuery easing
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: (target.offset().top - 57)
        }, 1000, "easeInOutExpo");
        return false;
      }
    }
  });

  // Cerrar menú responsive cuando se hace click en alguno de sus links
  $('.js-scroll-trigger').click(function() {
    $('.navbar-collapse').collapse('hide');
  });

  // Activar ScrollSpy
  $('body').scrollspy({
    target: '#mainNav',
    offset: 57
  });

  // Mostrar-Ocultar menú de navegación
  var navbarCollapse = function() {
    if ($("#mainNav").offset().top > 100) {
      $("#mainNav").addClass("navbar-shrink");
    } else {
      $("#mainNav").removeClass("navbar-shrink");
    }
  };
  // Ocultar si no está en el inicio
  navbarCollapse();
  // Mostrar al hacer scroll
  $(window).scroll(navbarCollapse);

  // Scroll Reveal plugin
  window.sr = ScrollReveal();
  sr.reveal('.sr-icons', {
    duration: 600,
    scale: 0.3,
    distance: '0px'
  }, 200);
  sr.reveal('.sr-button', {
    duration: 1000,
    delay: 200
  });
  sr.reveal('.sr-contact', {
    duration: 600,
    scale: 0.3,
    distance: '0px'
  }, 300);
  
  //Slick Slider plugin

  $('.slider').slick({
    infinite: false,
    mobileFirst:true

  });

  //Añadir habitaciones
  var count= 0;
  $('.addroom').click(function(){
    if(count<1){
      $(this).before('<div class="form-group col-md-9 added"><label for="tipohab'+count+'">Tipo de habitación</label><select class="form-control" id="tipohab'+count+'" placeholder="Seleccionar..." required="required"><option value="individual">Habitación Individual</option><option value="doble">Habitación Doble</option></select></div><div class="form-group col-md-3 added"><label for="numhab'+count+'">Cantidad</label><input type="number" class="form-control" id="numhab'+count+'" placeholder="Número de habitaciones" value="1" required="required"></div>');
      $(this).html('<i class="fas fa-minus-circle mr-1 text-danger"></i>Quitar habitación');
      count=1;
    }else if(count==1){
      $('.added').remove();
      $(this).html('<i class="fas fa-plus-circle mr-1"></i>Añadir habitación');
      count=0;
    }
    
  })

})(jQuery); // End of use strict
