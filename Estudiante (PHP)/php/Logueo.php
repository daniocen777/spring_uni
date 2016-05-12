<?php

require_once '../modelo/Estudiante.php';

$est = new Estudiante();

$usuario = $_POST["usuario"];
$pass = $_POST["pass"];

$est->acceso_Sistema($usuario, $pass);

