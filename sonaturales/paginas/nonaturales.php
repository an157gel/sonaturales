<!--Hecho por Angel Martínez-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>consulta de artículos</title>
    <title>Listado de productos NO Naturales</title>
    <style>
        .tablalistado {
            border-collapse: collapse;
            box-shadow: 0px 0px 8px #000;
            margin: 20px;
            margin: auto;
            font-size: 30px;
        }
        
        .tablalistado th {
            border: 1px solid #000;
            padding: 5px;
            background-color: #C3B091;
        }

        .tablalistado td {
            border: 1px solid #000;
            padding: 5px;
            background-color: white;
        }
    </style>
    </head>
    <body bgcolor="white">
    <center><font color="black" size="10">Listado de productos NO naturales</font></center>  
        <?php
        $mysql = new mysqli("localhost", "root", "", "base4");
        if ($mysql->connect_error)
        die("Problemas con la conexión a la base de datos");
        
    $registros = $mysql->query("select nombre,sabor,precio,producto from nonatural") or
    die($mysql->connect_error);

        echo '<table class="tablalistado" width="800px" height="800px">';
        echo "<tr><th>Nombre</th><th>Sabor</th><th>Precio</th><th>Producto</th></tr>";
        while ($reg = $registros->fetch_array()) {
            echo "<tr>";
            echo "<td>";
            echo "<center>",$reg["nombre"],"</center>";
            echo "</</td>";
            echo "<td>";
            echo "<center>",$reg["sabor"],"</center>";
            echo "</td>";
            echo "<td>";
            echo "<center>",$reg["precio"],"</center>";
            echo "</td>";
            echo "<td>";
            echo "<center>",$reg["producto"],"</center>";
            echo "</td>";
            echo "</tr>";
        }
        echo "</table>";

        $mysql->close();

        ?>
</body>
</html>