<?php

// $FechaMySQL = implode( '-', array_reverse( explode( '/', $fecha_original ) ) ) ;

require_once '../modelo/Estudiante.php';

$cod_estudiante = $_POST["cod_estudiante"];
$nombre = $_POST["nombre"];
$pat = $_POST["pat"];
$mat = $_POST["mat"];
$fecha = $_POST["fecha"];
// CONVERTIMOS LA FECHA A FORMATO MYSQL
$fecha_Mysql = implode('-', array_reverse(explode('/', $fecha)));
$gen = $_POST["genero"];
$detal = $_POST["detalle"];

$est = new Estudiante();

$est->add_Estudiante($cod_estudiante, $nombre, $pat, $mat, $fecha_Mysql, $gen, $detal);


