<?php

require_once '../modelo/Estudiante.php';
$est = new Estudiante();
$cod = $_POST["cod"];
$registro = $est->get_Estudiante_Id($cod);
?>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" language="javasript" src="../javascript/Funciones.js"></script>
    </head>
    <body>
        <table border="1" align="center">
            <thead>
                <tr>
                    <th style="background-color: #ccffcc">CÓDIGO</th>
                    <th style="background-color: #ccffcc">NOMBRE</th>
                    <th style="background-color: #ccffcc">AP. PATERNO</th>
                    <th style="background-color: #ccffcc">AP. MATERNO</th>
                    <th style="background-color: #ccffcc">F. NACIMIENTO</th>
                    <th style="background-color: #ccffcc">GENERO</th>
                    <th style="background-color: #ccffcc">DETALLE</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <?PHP
                        echo $registro[0]["cod_estudiante"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["nombre_estudiante"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["ap_paterno"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["ap_materno"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["fecha_nac"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["genero"];
                        ?>
                    </td>
                    <td>
                        <?PHP
                            echo $registro[0]["detalle"];
                        ?>
                    </td>
                    <td align="center" rowspan="2"><a href="javascript:void(0);" onclick="Eliminar('./Eliminar_Estudiante.php?id=<?PHP echo $registro[0]["cod_estudiante"];?>')" title="Eliminar"><img src="../imagen/she_user_remove.png" width="24" height="24" alt="she_user_remove"/>
                        </a></td>
                </tr>
         
            </tbody>
        </table>

    </body>
</html>


