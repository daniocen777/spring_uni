<?php

require_once '../modelo/Estudiante.php';

$cod = $_POST["cod_profesor"];
$nombre = $_POST["nombre"];
$pat = $_POST["pat"];
$mat = $_POST["mat"];
$gen = $_POST["genero"];
$inicio = $_POST["inicio"];
// CONVERTIMOS LA FECHA DE INICIO
$inicio_Mysql = implode('-', array_reverse(explode('/', $inicio)));
$fin = $_POST["fin"];
// CONVERTIMOS LA FECHA FINAL
$fin_Mysql = implode('-', array_reverse(explode('/', $fin)));

$est = new Estudiante();
$est->add_Profesor($cod, $nombre, $pat, $mat, $gen, $inicio_Mysql, $fin_Mysql);