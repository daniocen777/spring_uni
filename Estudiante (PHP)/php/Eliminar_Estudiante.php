<?php
require_once '../modelo/Estudiante.php';

$est = new Estudiante();
$est->eliminar_Estudiante($_GET["id"]);


