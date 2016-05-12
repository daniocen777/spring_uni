<?php
require_once '../modelo/Estudiante.php';
//CAPTURO MIS VARIABLES DE MI FORMULARIO
$cod_aula = $_POST["cod_aula"];
$local = $_POST["local"];
$desc = $_POST["descripcion"];
//CREO MI OBJETO
$est = new Estudiante();
// VOY AL METODO ADD_AULA
$est->add_Aula($cod_aula, $local, $desc);


