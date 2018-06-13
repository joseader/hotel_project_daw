<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

// Renderiza la página de inicio
$app->get('/[{name}]', function (Request $request, Response $response, array $args) {
    return $this->renderer->render($response, 'index.html', $args);
});

//Renderiza la página de administración
$app->get('/admin/[{name}]', function (Request $request, Response $response, array $args) {
    return $this->renderer->render($response, 'admin/index.html', $args);
});

$app->post('/reservas/comprobar/disponibilidad', function (Request $request, Response $response, array $args) {
    header("Access-Control-Allow-Origin: *");
    
    $result=array();    
    
    if(isset($_POST['tipo_habitacion']) && isset($_POST['cantidad'])){

        $query = $this->db->prepare("SELECT count(*) AS reservadas FROM reservas JOIN habitacion 
        ON habitacion.id_habitacion = reservas.habitacion 
        WHERE (habitacion.tipo_habitacion ='".$_POST['tipo_habitacion']."') 
        AND ('".$_POST['fec_entrada']."' BETWEEN reservas.fec_entrada AND reservas.fec_salida)");
        $query->execute();
        $data= $query->fetch();
        
        $disponibilidad= comprobarDisponibilidad($_POST['tipo_habitacion'],$_POST['cantidad'],$data['reservadas']);

        array_push($result, array('reservadas'=>$data['reservadas'],'tipo_habitacion'=>$_POST['tipo_habitacion'], 'cantidad'=>$_POST['cantidad'],'disponibilidad'=>$disponibilidad));
    }
    
    if(isset($_POST['tipo_habitacion2']) && isset($_POST['cantidad2'])){

        $query = $this->db->prepare("SELECT count(*) AS reservadas FROM reservas JOIN habitacion 
        ON habitacion.id_habitacion = reservas.habitacion 
        WHERE (habitacion.tipo_habitacion ='".$_POST['tipo_habitacion2']."') 
        AND ('".$_POST['fec_entrada']."' BETWEEN reservas.fec_entrada AND reservas.fec_salida)");
        $query->execute();
        $data= $query->fetch();

        $disponibilidad= comprobarDisponibilidad($_POST['tipo_habitacion'],$_POST['cantidad'],$result[0]['reservadas'],$_POST['tipo_habitacion2'],$_POST['cantidad2'],$data['reservadas']);
        
        array_push($result, array('reservadas'=>$data['reservadas'],'tipo_habitacion'=>$_POST['tipo_habitacion2'], 'cantidad'=>$_POST['cantidad2'], 'disponibilidad'=>$disponibilidad));
    }
    
    
    return $this->response->withJson($result);
});