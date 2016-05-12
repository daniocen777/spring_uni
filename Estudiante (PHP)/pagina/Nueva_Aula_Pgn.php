<?php
//echo 'Nueva aula';
?>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form name="nueva_Aula-Frm" action="../php/Nueva_Aula.php" method="POST">
            <table border="1" align="center">
                <thead>
                    <tr>
                        <th>CÓDIGO DE AULA</th>
                        <th>LOCAL</th>
                        <th>DESCRIPCIÓN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input required type="text" name="cod_aula" value="" size="18" /></td>
                        <td><input required type="text" name="local" value="" size="18" /></td>
                        <td><input required type="text" name="descripcion" value="" size="18" /></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><input type="submit" value="Agregar" /></td>

                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>