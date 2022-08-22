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
 $recibida = $_GET['id'];

     //RELACIONO ID DE TABLA DATOS EMPRESA CON empleados_empresa
$pregunta = "select  * from abeja as A,abejas_empresa as AE where A.Tipo_Abeja=AE.tipo_abeja and A.Tipo_Abeja='$recibida';";
	   // proceso la consulta
	   echo "<ul>\n";
   echo "<table   cellspacing=\"0\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
   echo "<td> NIT_Empresa</td>";
     echo "<td>  Tipo_Abeja</td>";

			   


    $respuesta = $dblink->query($pregunta);
    while ($fila = $respuesta->fetch_object()) {

	echo"<tr>";
	     echo "<td bgcolor=\"#CCCCCC\">$fila->NIT_Empresa</td>";
      echo "<td bgcolor=\"#CCCCCC\" align=\"center\">$fila->Tipo_Abeja</td>";
	 echo "</tr>";
    }
 echo "</ul>\n";
 echo "</table>";
 echo "<a href=\"abejas.php\">Volver al Inicio</a>";
 
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