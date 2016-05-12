<?php ?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso al sistema</title>
        <style>
            @import "../estilo/logueo.css";
        </style>
    </head>
    <body>
    <center>
        <div id="principal">
            <div id="header" align="left">
            </div>

        </div>
        <h1 align="center">INGRESO AL SISTEMA</h1>
        <form action="../php/Logueo.php" method="POST" name="login-Frm">

            <div id="footer">&copy; Yonatan</div>
            <br>

            <table border="0" align="center">

                <tbody>
                    <tr>
                        <td>Usuario</td>
                        <td><input required type="text" name="usuario" value="" size="30" /></td>
                        <td rowspan="3" align="center"><img src="../imagen/open-access1.jpg" width="173" height="128" alt="Oriunda_img"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input required type="password" name="pass" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Acceder" name="acceso" style="width: 100%; height: 100%; font-family: fantasy"/></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3"><a href="IU_Recuperar_Contrasena.php">¿Olvidó su contraseña?</a></td>
                    </tr>
            </table>
        </form>
    </center>
</body>

</html>