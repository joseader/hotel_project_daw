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
    var habitacion = "";
    if ($('#tipohab').val()=='individual'){
      habitacion = '<option value="doble">Habitación Doble</option>';
    } else {
      habitacion = '<option value="individual">Habitación Individual</option>'
    }
    if(count<1){
      $(this).before('<div class="form-group col-md-9 added"><label for="tipohab2">Tipo de habitación</label><select class="form-control" id="tipohab2" name="tipo_habitacion2" required>'+habitacion+'</select></div><div class="form-group col-md-3 added"><label for="numhab2">Cantidad</label><input type="number" class="form-control" id="numhab2" name="cantidad2" placeholder="Número de habitaciones" value="1" required></div>');
      $(this).html('<i class="fas fa-minus-circle mr-1 text-danger"></i>Quitar habitación');
      $('#tipohab').attr('disabled', 'disabled');
      count=1;
    }else if(count==1){
      $('.added').remove();
      $(this).html('<i class="fas fa-plus-circle mr-1"></i>Añadir habitación');
      $('#tipohab').removeAttr('disabled');
      count=0;
    }
    
  })

  //Funciones Ajax

  $('#booking-form').on('submit', function (e) {
    $('.ajax-loader').fadeIn(300);
    e.preventDefault();
    $.post('/reservas/comprobar/disponibilidad', $(this).serialize())
    .done(function (data) {
      console.log(data);
      var disponibilidad = true;
      if((data[0].num_individuales+data[0].cantidad)>data[0].total){
        $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-danger">No disponemos de esa cantidad de habitaciones individuales para la fecha indicada.</p>');
        disponibilidad = false;
      }
      if (data.length>=2){
        if((data[1].num_individuales+data[1].cantidad)>data[0].total){
          $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-danger col-md-12 text-center">No disponemos de esa cantidad de habitaciones dobles para la fecha indicada.</p>');
          disponibilidad=false;
        }
      }
      
      if(disponibilidad){
          $('#alert-disponibilidad').fadeIn(300).html('<p class="alert alert-success col-md-12 text-center">Hay habitaciones disponibles</p>');        
      }
      $('.ajax-loader').fadeOut(300);
    })
    .fail(function(){
      alert('error');
    });
  });

})(jQuery); // End of use strict
