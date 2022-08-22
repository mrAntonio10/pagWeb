<html>
<head> <title> Apicultores En Bolivia  </title>
<body background="imagenes/abejitape.jpg">
 <h1 style="background:#33FF00" > <center> 
 Base De Datos Apicultores-Bolivia
</center></h1>

 </center>
   <?php
    // Variables de la Base de datos
  $db_name = "DatosMiAbejita";
    $db_user = "admin";
    $db_pass = "4708";
    // Abrir la conexión a la base
    echo "Conectando a la base de datos $db_name ";
    echo "con el usuario $db_user ...<br />\n";
    $dblink = new mysqli('localhost', $db_user, $db_pass, $db_name);
    // La conexión está en el objeto $dblink
    if ($dblink->connect_error) {
      die('Error al conectar a la Base de Datos (' . $dblink->connect_errno . ') '. $dblink->connect_error);
    }
    $ver_base = mysqli_get_server_info($dblink);
    echo "Conectado a la base $ver_base<br /><br>";
    // Recibir las variables enviadas mediante el metodo POST asi:
	
	
    $nit = $_POST["NIT_Mercado"];
	$nom = $_POST["Nombre_Mercado"];


    // Armo mi insert
    $nueva = "update Mercado set nombre_Mercado = '$nom' where NIT_Mercado like '$nit';";
    // Ahora, mandare a la bd
    $resultado = $dblink->query($nueva);

    // Cerrar la conexion a la base
    $dblink->close();

   ?>
   <br>
   <a href="Mercado.php">  Volver al inicio </a>

 </body>
</html>