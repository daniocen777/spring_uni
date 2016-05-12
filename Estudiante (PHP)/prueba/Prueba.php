<?php

require_once '../modelo/Estudiante.php';

$est = new Estudiante();

//$est->acceso_Sistema('d8', 'noseasloco');
//$est->add_Aula('A005', 'Comas', '223-A'); PRUEBA DE INSERTAR AULA

//$est->add_Estudiante('102111', 'Paola', 'Salazar', 'Madrid', '1991-02-12', 'F', 'Loca');  PRUEBA DE INSERTAR ESTUDIANTE

// PRUEBA DE INSERTAR PROFESOR
//$est->add_Profesor('323232', 'Hermes', 'Pinzon', 'Galarza', 'M', '2014-12-12', '2015-04-12');  


// PROBANDO EL BUSCADOR DE ESTUDIANTE POR CÓDIGO
//$registro = $est->get_Estudiante_Id('22222');
//echo $registro[0]["cod_estudiante"] . '<br>'; 
//echo $registro[0]["nombre_estudiante"] . '<br>';
//echo $registro[0]["ap_paterno"] . '<br>';

// PROBANDO EL PROCEDIMIENTO ALMACENADO
//$est->add_Curso('C-E', 'SI-2', 'Artificial'); // FUNCIONA

//$nuevafecha = strtotime ( '-7 hour' , strtotime ( date('H:i:s') ) ) ;
//
//echo $nuevafecha;
//echo "Fecha" . " ". date('Y-m-d') ." " . "hora" . " " . date('s:h:i');


// ESTA ES PARA ARREGLAR LA HORA, RESTANDO 
$fecha = date('Y-m-j H:i:s');
$nuevafecha = strtotime ( '-7 hour' , strtotime ( $fecha ) ) ;
//$nuevafecha = strtotime ( '+13 minute' , strtotime ( $fecha ) ) ;
//$nuevafecha = strtotime ( '+30 second' , strtotime ( $fecha ) ) ;
$nuevafecha = date ( 'Y-m-j H:i:s' , $nuevafecha );
 
echo $nuevafecha;
