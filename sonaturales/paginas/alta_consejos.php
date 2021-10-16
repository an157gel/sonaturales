<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Recomendacion</title>
</head>
<body bgcolor="black">
<center><font color="white" size="10">Recomendación del cliente</font></center>  
    <form action="resultado_consejos.php" method="post">
        <table border="1" bgcolor="#51050F" align="center">
            <tr>
                <td>¿Qué nuevo sabor te gustaria probar?</td>
                <td><input type="text" name="sabor" required></td>
            </tr>
            <tr>
                <td>¿En paleta o sorbete?</td>
                <td><input type="text" name="producto"></td>
            </tr>
            <tr>
                <td>¿Que precio seria el más adecuado?</td>
                <td><input type="text" name="precio"> </input></td>
                    <?php
                    $mysql = new mysqli("localhost", "root", "", "base4");
                    if ($mysql->connect_error)
                    die("Problemas con la conexión en la base de datos");
                    
                    $registros = $mysql->query("select * from consejos") or
                    die($mysql->error);
                    ?>
            </tr>
            <tr align="center">
                <td colspan="2">
                <input type="submit" value="Confirmar"></td>
            </tr>
        </table>
    </form>
</body>
</html>