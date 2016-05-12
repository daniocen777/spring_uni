<?php

class Estudiante {

    private $est;
    private $profe;

    // CONSTRUCTOR PARA EL ESTUDIANTE
    public function __construct() {
        $this->est = array();
    }

    // CONSTRUCTOR PARA EL PROFESOR
    public function construct_Profesor() {
        $this->profe = array();
    }

    public static function Conectar() {
        $conexion = new mysqli("localhost", "root", "", "estudiante");
        $conexion->query("set name 'utf8'");
        return $conexion;
    }

    public function close_Connection() {
        Estudiante::Conectar()->close();
    }

    public function acceso_Sistema($usuario, $pass) {
        $sql = "select usuario, password from usuario where usuario = '$usuario' and password = '$pass';";
        $resultado = Estudiante::Conectar()->query($sql);
        if ($registro = $resultado->fetch_assoc()) {
            echo '<script type="text/javascript">window.location="../pagina/Indice.php";</script>';
        } else {
            echo '<script type="text/javascript">alert("Usted no tiene acceso"); window.location="../pagina/Index.php";</script>';
        }
    }

    // FUNCIÓN PARA AGREGAR UNA NUEVA AULA
    public function add_Aula($cod_aula, $local, $desc) {
        // VEMOS SI HAY UN AULA CON EL MISMO CÓDIGO
        $sql = "SELECT * FROM aula WHERE cod_aula = '$cod_aula'";
        $consulta = Estudiante::Conectar()->query($sql);
        if ($consulta->fetch_assoc()) {
            echo '<script type="text/javascript">alert("Este código ya existe"); window.location="../pagina/Nueva_Aula_Pgn.php";</script>';
        }
        // SI NO HAY UN AULA CON ESE CÓDIGO, ENTONCES INSERTO ESA AULA CON ESE CÓDIGO 
        else {
            $query = "INSERT INTO aula VALUES ('$cod_aula', '$local', '$desc')";
            $result = Estudiante::Conectar()->query($query);
            Estudiante::Conectar()->close();
        }
    }

    public function add_Estudiante($cod_est, $nombre, $ap_Pat, $ap_Mat, $fecha_Nac, $gen, $detal) {
        // VEMOS SI HAY UN ESTUDIANTE CON EL MISMO CÓDIGO
        $sql = "select * from estudiante where cod_estudiante = '$cod_est'";
        $consulta = Estudiante::Conectar()->query($sql);
        if ($consulta->fetch_assoc()) {
            echo '<script type="text/javascript">alert("Este código ya existe"); window.location="../pagina/Nuevo_Estudiante_Pgn.php";</script>';
        } else {
            $query = "INSERT INTO estudiante VALUES ('$cod_est', '$nombre', '$ap_Pat', '$ap_Mat', '$fecha_Nac', '$gen', '$detal')";
            $result = Estudiante::Conectar()->query($query);
            Estudiante::Conectar()->close();
        }
    }

    public function add_Profesor($cod, $nombre, $pat, $mat, $gen, $inicio, $fin) {
        // VEMOS SI EXISTE UN PROFESOR CON EL MISMO CÓDIGO
        $sql = "select * from profesor where cod_profesor = '$cod'";
        $consulta = Estudiante::Conectar()->query($sql);
        if ($consulta->fetch_assoc()) {
            echo '<script type="text/javascript">alert("Este código ya existe"); window.location="../pagina/Nuevo_Profesor_Pgn.php";</script>';
        } else {
            $query = "INSERT INTO profesor VALUES('$cod','$nombre','$pat','$mat','$gen','$inicio','$fin')";
            $result = Estudiante::Conectar()->query($query);
            Estudiante::Conectar()->close();
        }
    }

    // SELECCIONAR A UN ESTUDIANTE MEDIANTE SU CÓDIGO
    public function get_Estudiante_Id($cod_est) {
        $query = "SELECT * FROM estudiante WHERE cod_estudiante = '$cod_est'";
        $resul = Estudiante::Conectar()->query($query);
        if ($registro = $resul->fetch_assoc()) {
            $this->est[] = $registro;
            return $this->est;
        } else {
            echo '<script type="text/javascript">alert("Este código no existe"); window.location="../pagina/Buscar_Estudiante_Pgn.php";</script>';
        }
    }

    public function eliminar_Estudiante($id) {
        $query = "DELETE FROM estudiante WHERE cod_estudiante = '$id'";
        $result = Estudiante::Conectar()->query($query);
        Estudiante::Conectar()->close();
        echo '<script type="text/javascript"> alert("El registro fue eliminado"); window.location="../Pagina/Menu.php";</script>';
    }

    // FUNCIÓN PARA BUSCAR PROFESOR -- NECESITO OTRO VECTOR PARA EL PROFESOR
    public function get_Profesor($id){
        $query = "SELECT * FROM profesor WHERE cod_profesor = '$id'";
        $result = Estudiante::Conectar()->query($query);
        if ($registro = $resul->fetch_assoc()) {
            $this->profe[] = $registro;
            return $this->profe;
        } else {
            echo '<script type="text/javascript">alert("Este código no existe"); window.location="../pagina/Buscar_Profesor_Pgn.php";</script>';
        }
    }
    
    // PROBANDO -- AGREGO NIVEL Y CURSO MEDIANTE UN PROCEDURE -- FUNCIONA
    public function add_Curso($nivel, $cod_curso, $nombre_curso){
        if(!Estudiante::Conectar()->query("CALL add_curso_2('$nivel','$cod_curso','$nombre_curso')")){
            echo "Falló la llamada: (" . $mysqli->errno . ") " . $mysqli->error;
        }
    }
}
