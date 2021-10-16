<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alta de recomendacion</title>
</head>
<body bgcolor="white">
<center><font color="black" size="10">Recomienda nuevos sabores</font></center> 
    <form action="resultado_recomendacion.php" method="Post">
        <table border="1" bgcolor="#C3B091" align="center" width="700px" height="600px" font-size="30px">
            <tr>
               <td align="center" style="font-size:25px;">¿Que otro sabor le gustaria que tuvieramos?</td>
               <td><input type="text" name="sabor"></td>
            </tr>
            <tr>
             <td align="center" style="font-size:25px;">¿Cual cree que seria el precie adecuado?
                </td>
                <td><input type="text" name="precio"></td>
            </tr>
            <tr>
                <td align="center" style="font-size:25px;"> ¿Cuantos días a la semana deberiamos venderlo?</td>
                <td><input type="text" name="dias">
                    <?php
                    $mysql = new mysqli("localhost", "root", "", "base4");
                    if ($mysql->connect_error)
                    die("Problemas con la conexión en la base de datos");
                    
                    $registros = $mysql->query("select sabor,precio,dias from recomendacion") or
                    die($mysql->error);
                    ?>
            </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                <input type="submit" value="Confirmar"></td>
            </tr>
        </table>
    </form>