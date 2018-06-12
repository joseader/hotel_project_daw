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
  //Datepicker
  $('.input-daterange').datepicker({
    language:'es',
    startDate: 'today',
    todayHighlight: true,
    format: 'yyyy/mm/dd'
  });

  //Añadir habitaciones
  var count= 0;
  $('.addroom').click(function(){
    
    if(count<1){
      $(this).before('<div class="form-group col-md-9 added"><label for="tipohab2">Tipo de habitación</label><select class="form-control" id="tipohab2" name="tipo_habitacion2" required><option value="doble">Habitación Doble</option><option value="individual">Habitación Individual</option></select></div><div class="form-group col-md-3 added"><label for="numhab2">Cantidad</label><input type="number" class="form-control" id="numhab2" name="cantidad2" placeholder="Número de habitaciones" value="1" required></div>');
      $(this).html('<i class="fas fa-minus-circle mr-1 text-danger"></i>Quitar habitación');
      count=1;
    }else if(count==1){
      $('.added').remove();
      $(this).html('<i class="fas fa-plus-circle mr-1"></i>Añadir habitación');
      count=0;
    }
    
  })

  //Funciones Ajax

  $('#check-form').on('submit', function (e) {
    $('.ajax-loader').fadeIn(300);
    e.preventDefault();
    $.post('/reservas/comprobar/disponibilidad', $(this).serialize())
    .done(function (data) {
      console.log(data);
      
      if (data.length>=2){
        if(!data[0].disponibilidad || !data[1].disponibilidad){
          $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-danger col-md-12 text-center">No disponemos de esa cantidad de habitaciones para la combinación y la fecha indicada.</p>');
        } else{
          $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-success col-md-12 text-center">Hay habitaciones disponibles</p>');
        }
      } else if (!data[0].disponibilidad){
        $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-danger">No disponemos de esa cantidad de habitaciones para la fecha indicada.</p>');
      } else {
        $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-success col-md-12 text-center">Hay habitaciones disponibles</p>');
        $('a#disp').removeClass('active');
        $('a#resv').removeClass('disabled').addClass('active show');
        $('div#disponibilidad').removeClass('active show');
        $('div#reserva').addClass('active show');
        $('div#detalles-reserva').html('');
        /* <div class="container"> <div class="row"> <div> <div class="card "> <div class="card-header"> <div class="row"> <h3 class="text-xs-center">Payment Details</h3> <img class="img-fluid cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png"> </div> </div> <div class="card-block"> <form role="form"> <div class="row"> <div class="col-xs-12"> <div class="form-group"> <label>CARD NUMBER</label> <div class="input-group"> <input type="tel" class="form-control" placeholder="Valid Card Number" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> </div> </div> </div> </div> <div class="row"> <div class="col-xs-7 col-md-7"> <div class="form-group"> <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label> <input type="tel" class="form-control" placeholder="MM / YY" /> </div> </div> <div class="col-xs-5 col-md-5 float-xs-right"> <div class="form-group"> <label>CV CODE</label> <input type="tel" class="form-control" placeholder="CVC" /> </div> </div> </div> <div class="row"> <div class="col-xs-12"> <div class="form-group"> <label>CARD OWNER</label> <input type="text" class="form-control" placeholder="Card Owner Names" /> </div> </div> </div> </form> </div> <div class="card-footer"> <div class="row"> <div class="col-xs-12"> <button class="btn btn-warning btn-lg btn-block">Process payment</button> </div> </div> </div> </div> </div> </div></div><style> .cc-img { margin: 0 auto; }</style> </div>  */


      }
      
      $('.ajax-loader').fadeOut(300);
    })
    .fail(function(){
      alert('error');
    });
  });

})(jQuery); // End of use strict
