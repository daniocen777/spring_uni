<?php

?>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form name="Nuevo_Estudiante-Frm" action="../php/Nuevo_Estudiante.php" method="POST">
            <table border="1" align="center">
                <thead>
                    <tr>
                        <th>CÓDIGO</th>
                        <th>NOMBRE</th>
                        <th>AP. PATERNO</th>
                        <th>AP. MATERNO</th>
                        <th>F. NACIMIENTO</th>
                        <th>GÉNERO</th>
                        <th>DETALLE</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input required type="text" name="cod_estudiante" value="" size="20" /></td>
                        <td><input required type="text" name="nombre" value="" size="20" /></td>
                        <td><input required type="text" name="pat" value="" size="20" /></td>
                        <td><input required type="text" name="mat" value="" size="20" /></td>
                        <td><input required type="date" name="fecha" size="100px" value=""/></td>
                        <td><input required type="text" name="genero" value="" size="20" placeholder="M/F"/></td>
                        <td><input type="text" name="detalle" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td colspan="7" align="center"><input type="submit" value="Registrar" /></td>
                      
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>

