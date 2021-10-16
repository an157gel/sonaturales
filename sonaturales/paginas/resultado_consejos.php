<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="REFRESH" content="10; URL=alta_consejos.php">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alta de articulos</title>
</head>
<body bgcolor="white">
    <h1 align="center">¡Recomendación recivida!</h1>
    <?php
    $mysql = new mysqli("localhost", "root", "", "base4");
    if ($mysql->connect_error)
    die("Problemas con la conexión a la base de datos");

    $mysql->query("insert into consejos(sabor,producto,precio)
    values ('$_REQUEST[sabor]',$_REQUEST[producto],$_REQUEST[precio])") or
    die($mysql->error);

    echo '<center>¡Tomaremos en cuenta tu recomendación!</center>';

    $mysql->close();
    ?>
    <br>
    <table border="1" bgcolor="red" align="center">
        <tr>
            <td><a href="alta_consejos.php">
            <input type="button" value="Regresar"></a></td>
        </tr>
    </table>
</body>
</html>