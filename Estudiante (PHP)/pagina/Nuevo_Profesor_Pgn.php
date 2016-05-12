<?php

?>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form name="Nuevo_Profesor-Frm" action="../php/Nuevo_Profesor.php" method="POST">
            <table border="1" align="center">
                <thead>
                    <tr>
                        <th>CÓDIGO</th>
                        <th>NOMBRE</th>
                        <th>AP. PATERNO</th>
                        <th>AP. MATERNO</th>
                        <th>GÉNERO</th>
                        <th>F. ASIGNACIÓN</th>
                        <th>F. FINALIZACIÓN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input required type="text" name="cod_profesor" value="" size="20" /></td>
                        <td><input required type="text" name="nombre" value="" size="20" /></td>
                        <td><input required type="text" name="pat" value="" size="20" /></td>
                        <td><input required type="text" name="mat" value="" size="20" /></td>
                        <td><input required type="text" name="genero" value="" size="20" placeholder="M/F"/></td>
                        <td><input required type="date" name="inicio"/></td>
                        <td><input required type="date" name="fin"/></td>
                    </tr>
                    <tr>
                        <td colspan="7" align="center"><input type="submit" value="Registrar" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
