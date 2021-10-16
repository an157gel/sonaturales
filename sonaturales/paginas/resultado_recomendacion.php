<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="REFRESH" content="10; URL=alta_recomendacion.php">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alta de recomendación</title>
</head>
<body bgcolor="white">
    <h1 align="center">¡Recibimos tu recomendación!</h1>
    <?php
    $mysql = new mysqli("localhost", "root", "", "base4");
    if ($mysql->connect_error)
    die("Problemas con la conexión a la base de datos");

    $mysql->query("insert into recomendacion(sabor,precio,dias)
    values ('$_REQUEST[sabor]',$_REQUEST[precio],$_REQUEST[dias])") or
    die($mysql->error);

    echo '<center>¡Tomaremos en cuenta tu opinión para seguir mejorando!</center>';

    $mysql->close();
    ?>
    <br>
    <table border="1" bgcolor="#C3B091" align="center">
        <tr>
            <td><a href="alta_recomendacion.php">
            <input type="button" value="Regresar"></a></td>
        </tr>
    </table>
</body>
</html>