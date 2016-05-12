<?php ?>
<html>
    <head>
        <title>Buscar pofesor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form  action="../php/Buscar_Profesor.php" method="POST">
            <table border="1" align="center">

                <tbody>
                    <tr>
                        <td>Ingrese el código de profesor</td>
                        <td><input type="text" name="cod" value="" size="20" /></td>
                        <td><input type="submit" value="Buscar" /></td>                        
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>