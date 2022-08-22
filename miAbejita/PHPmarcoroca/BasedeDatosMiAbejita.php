<html>
<head> <title> Apicultores En Bolivia  </title>
<body background="imagenes/abejitape.jpg">
 <h1 style="background:#33FF00" > <center> 
 Base De Datos Apicultores-Bolivia
</center></h1>


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
 $dblink->close();

   ?>
      <hr color="#0099CC">
	  <?php
	  echo "Saludos \n";
	   echo"Bienvenido administrador :D<br>\n";
	   
	 echo"Seleccione para acceder la base de datos de:\n";
	
	 echo "<table  align=\"center\" cellspacing=\"4\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
	 echo "<tr>";
	 echo "<td bgcolor=\"#66FFCC\"> <a href=\"Datos Empresa.php\">Empresa </a></td>";
	 echo "<td bgcolor=\"#66FFCC\"> <a href=\"Mercado.php\">Mercado </a></td>";
	 
	 echo "<td bgcolor=\"#66FFCC\"> <a href=\"abejas.php\"> Abejas </a></td>";
	 echo "</tr>";
	 echo "</table>";
	 	 echo "<table  align=\"center\"  cellspacing=\"4\"border=\"3\" bgcolor=\"#66FFCC\">\n  ";
	
	 echo "</table>";
	 
	 
    $dblink->close();
	  ?>

<h3 style="background:#33FFCC"
   <br>
 <h4 style="background:#339999">  Fuente: <u> Elaboraci&oacute;n Propia.  </u> <br> 
Marco Antonio Roca Montenegro.              &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <u>UPB_Santa Cruz.</u> <br>
C&oacute;digo: <u>55995</u></h4>
<br><br>


</body>
</head>
</html>