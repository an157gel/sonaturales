<?php

# Leslie Noemi Armijo -> creador

  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $dbname = "base_crud";


  $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  if (!$conn) {
      die ("No hay conexión:".mysqli_connect_error());
  }


  $nombre = $_POST["user"];
  $pass = $_POST["password"];
   #login
  if(isset($_POST["btningresar"]))
  {
      $query = mysqli_query($conn, "SELECT * FROM usuarios WHERE user='$nombre' AND password='$pass' ");
      $nr = mysqli_num_rows($query);
      if ($nr==1) {
          echo "<script> alert('Bienvenido $nombre'); window.location='crud.html'</script>";
      }else {
        echo "<script> alert('Usuario no existe'); window.location='../index.html'</script>";
      }
  }
  #registro
   if(isset($_POST["btnregistrar"])){
       $sqlgrabar = "INSERT INTO usuarios(user,password) values ('$nombre', '$pass')";

       if (mysqli_query($conn, $sqlgrabar)) {
        echo "<script> alert('Usuario registrado con exito:  $nombre'); window.location='crud.html'</script>";
       } else{
           "Error: ".$sql."<br>".mysql_error($conn);
       }
   }

?>