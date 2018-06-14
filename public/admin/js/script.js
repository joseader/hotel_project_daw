function getReservas(){

        if (localStorage.getItem('usuario') === 'registrado') {
            $('#contentdiv').addClass('hidden');          
            

            $.getJSON("funciones/getReservas", "json")
            .done(function (data, textStatus, jqXHR) {
                console.log(data);
                $('.container>h1').removeClass('hidden');
                $('#reservas').removeClass('hidden');
                text="<thead> <tr> <th>Id Reserva</th> <th>Id Cliente</th> <th>Habitación</th> <th>Desayuno</th> <th>Fecha de entrada</th> <th>Fecha de salida</th> <th>Localizador</th> <th>Código promocional</th> <th>Administrador</th> </tr> </thead><tbody>";
                $.each(data, function (key, value) {

                    text += '<tr><td>'+value.id_reserva+'</td><td>'+value.cliente+'</td><td>'+value.habitacion+'</td><td>'+value.desayuno+'</td><td>'+value.fec_entrada+'</td><td>'+value.fec_salida+'</td><td>'+value.localizador+'</td><td>'+value.promo+'</td><td>'+value.administrador+'</td></tr>';
                });
                $('#reservas').html(text+'</tbody>');
            })
            .fail(function (jqXHR, textStatus, errorThrown) {
                console.log('Error en la conexión');
            });

            
        }
}

function loguear() {
    var nombre = $('#usuario').val();
    var clave = $('#password').val();
    if (nombre!="" && clave!="") {
        var datos = {"usuario": nombre, "clave": clave};
        console.log(datos);
        $.post("funciones/login", datos, null, "json")
            .done(function (data, textStatus, jqXHR) {
                console.log(data);
                localStorage.setItem('usuario', data.usuario);
                if (localStorage.getItem('usuario') === "registrado") {
                    
                    localStorage.setItem('idUsuario', data.id_usuario);
                    localStorage.setItem('nombre', data.nombre);
                    getReservas();
                    

                } else if (localStorage.getItem('usuario') === "incorrecto") {
                    $('#mensaje').removeClass('hidden');
                    $('#mensaje').addClass('alert alert-danger');
                    $('#mensaje').html('Usuario/Contraseña incorrectos.');
                }
            })
            .fail(function (jqXHR, textStatus, errorThrown) {
                if (console && console.log) {
                    console.log("La solicitud a fallado: " + textStatus + errorThrown);
                }
            });
    } else {
        $('#mensaje').removeClass('hidden');
        $('#mensaje').addClass('alert alert-danger');
        $('#mensaje').html('Campos obligatorios.');
    }
    
}