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
 

   ?>
      <hr color="#0099CC">
	  <?php
	echo "Tabla  Datos_Empresa";
	
	   echo "<ul>\n";
  $consulta = "select * from empleado;";
   echo "<table   cellspacing=\"0\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
   echo "<td> CI </td>";
     echo "<td>  NOMBRE_EMPlEADO</td>";
	      echo "<td> APELLIDO_EMPLEADO </td>";
		   echo "<td> FECHA_CONTR </td>";
		  
    $respuesta = $dblink->query($consulta);
    while ($fila = $respuesta->fetch_object()) {

	echo"<tr>";
	     echo "<td bgcolor=\"#CCCCCC\">$fila->CI</td>";
      echo "<td bgcolor=\"#CCCCCC\">$fila->nombre_empleado</td>";
	       echo "<td bgcolor=\"#CCCCCC\">$fila->apellido_empleado</td>";
		   echo "<td bgcolor=\"#CCCCCC\">$fila->fecha_contr</td>";
	 echo "</tr>";
    }
 echo "</ul>\n";
 echo "</table>";
 echo "<a href=\"Datos Empresa.php\">Volver al Inicio</a>";
 
	$dblink->close();
	  ?>
	
  

   <br>
 <h4 style="background:#339999">  Fuente: <u> Elaboraci&oacute;n Propia.  </u> <br> 
Marco Antonio Roca Montenegro.              &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <u>UPB_Santa Cruz.</u> <br>
C&oacute;digo: <u>55995</u></h4>
<br><br>


</body>
</head>
</html>