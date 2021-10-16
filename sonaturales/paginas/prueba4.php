<!--Hecho por Angel Martínez-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Listado de Sorbetes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
  
    </head>
    <body bgcolor="white">
        <h1 align="center">Listado de Sorbetes</h1>
        <div class="row mb-5">
            <?php
                include('conexion.php');
                $resultado = $conexion ->query("select * from sorbetes1 order by id DESC")or die($conexion -> error);
                while($fila = mysqli_fetch_array($resultado)){  
            ?>
                <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                    <figure class="block-4-image">
                    <a href="shop-single.php"><img src="..img/<?php echo $fila['imagen'];?>" alt="<?php echo $fila['sabor'];?>" class="img-fluid"></a>
                    </figure>
                    <div class="block-4-text p-4">
                    <h3><a href="shop-single.php"><?php echo $fila['sabor'];?></a></h3>
                    <p class="mb-0"><?php echo $fila['adicion'];?></p>
                    <p class="text-primary font-weight-bold">$<?php echo $fila['precio'];?></p>
                    </div>
                </div>
                </div>
               <?php } ?>
    
</body>
</html>