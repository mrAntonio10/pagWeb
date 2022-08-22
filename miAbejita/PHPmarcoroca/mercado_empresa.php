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
	
	
 //AQUI ALMACENO LA VARIABLE NIT EMPRESA
 $recibida = $_GET['id'];

     //RELACIONO ID DE TABLA DATOS EMPRESA CON empleados_empresa
$pregunta = "select  * from Mercado as M, mercado_empresa as ME where M.NIT_Mercado=ME.NIT_Mercado and ME.NIT_Mercado=$recibida;";
	   // proceso la consulta
    $respuesta = $dblink->query($pregunta);
 
  
    echo "<br>";
 echo "<table   cellspacing=\"0\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
    // TR es table row o fila
    echo "<tr>\n";
    // ahora que ya he iniciado una fila, debo crear las celdas o columnas
    // dentro de la fila creada, eso lo hago con TD
    echo " <td bgcolor=\"#000080\"><font color=\"#ffffff\">NIT_Mercado</font></td>";
    echo " <td bgcolor=\"#000080\"><font color=\"white\">NIT_Empresa</font></td>\n";
	echo " <td bgcolor=\"#000080\"><font color=\"white\">Producto</font></td>\n";
	echo " <td bgcolor=\"#000080\"><font color=\"white\">Fecha_Venta</font></td>\n";
		echo " <td bgcolor=\"#000080\"><font color=\"white\">Cantidad</font></td>\n";
    echo "</tr>\n";
 
      while ($pr = $respuesta->fetch_object()) {
	echo "<tr>";

      echo "<td bgcolor=\"#CCCCCC\">$pr->NIT_Mercado</td>";
	  echo "<td bgcolor=\"#CCCCCC\">$pr->NIT_Empresa</td>";
	  echo "<td bgcolor=\"#CCCCCC\">$pr->Producto</td>";
	  echo "<td bgcolor=\"#CCCCCC\">$pr->Fecha_Venta</td>";
	   echo "<td bgcolor=\"#CCCCCC\"><center>$pr->Cantidad</center></td>";
	   
	  
	echo "</tr>";
}
 
echo "<br>";
  echo "</table>";
  echo "<br>";
	   echo "<a href=\"Mercado.php\">Volver al Inicio</a>";
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