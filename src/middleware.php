<?php
// Application middleware

// e.g: $app->add(new \Slim\Csrf\Guard);

function comprobarDisponibilidad($tipohab1, $cantidad1, $reservadas1, $tipohab2=null, $cantidad2=null, $reservadas2=null){

    $total= 40;
    $total_iguales=0;
    $disponibilidad=false;
    if (!isset($tipohab2)){
        if( $tipohab1 == "doble"){
            $total= 60;
        }
        if (($reservadas1+$cantidad1)<=$total) {
            $disponibilidad= true;
        }
    } else {
        if( $tipohab2 == "doble"){
            $total= 60;
        }
        if ($tipohab1 == $tipohab2) {
            $total_iguales = $cantidad1+$cantidad2;
        }
        if (($reservadas2+$cantidad2)<=$total) {
            if ($reservadas1+$reservadas2<=100) {
                if ($total_iguales<=$total && ($cantidad1+$cantidad2)<=100) {
                    $disponibilidad= true;
                }
            }
        }
    }
    return $disponibilidad;  
}