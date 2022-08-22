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
	//desde aqui ta mal
	   echo "<ul>\n";
  $consulta = "select * from datos_empresa;";
  
   echo "<table   cellspacing=\"0\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
   echo "<td> NIT_EMPRESA </td>";
     echo "<td>  NOMBRE_EMPRESA</td>";
	      echo "<td> POB_ABEJA </td>";
    $respuesta = $dblink->query($consulta);
    while ($fila = $respuesta->fetch_object()) {

	echo"<tr>";
	     echo "<td bgcolor=\"#CCCCCC\"> <a href=\"Empresa_empleado.php?id=$fila->NIT_empresa\">$fila->NIT_empresa </a></td>";
      echo "<td bgcolor=\"#CCCCCC\">$fila->nombre_empresa</td>";
	       echo "<td bgcolor=\"#CCCCCC\">$fila->pob_abeja</td>";
	 echo "</tr>";
    }
	echo "</table>";
 echo "</ul>\n";
 echo "<a href=\"BasedeDatosMiAbejita.php\">Volver al Inicio</a>";
 //tabla empleado:turno:rol
	echo "<table  align=\"center\" cellspacing=\"4\" border=\"3\" bgcolor=\"#66FFCC\">\n  ";
	echo "<tr>";
	echo "<td bgcolor=\"#66FFCC\"><a href=\"Empleados.php\"> Empleados</a> </td>";
	echo "<tr>";
	 echo "<tr>";
	 echo "<td bgcolor=\"#66FFCC\"><a href=\"ocupacion.php\">  Ocupaci&oacute;n </a> </td>";
	 echo "<td bgcolor=\"#66FFCC\"><a href=\"turno.php\"> Turno </a></td>";
	 echo "</tr>";
	 echo "<table>";
	$dblink->close();
	
	  ?>
		  <br><br>
		  <br><br> <b>ADICIONAR EMPRESA</b><br>
   <form method="POST" action="adicionar_empresa.php" >
   
    NIT_Empresa: <input type="text"  name="NIT_Empresa"><br>
    Nombre_Empresa: <input type="text" name="Nombre_Empresa"><br>
	Poblacion_Abejas: <input type="tex" name="Poblacion_Abeja"><br>
    <input type="reset" value="Limpiar"> 
    <input type="submit" value="Enviar">
	
	
   </form>
   <br><br> <b>ELIMINAR EMPRESA</b><br>
   <form method="post" action="eliminar_empresa.php">
   NIT_Empresa: <input type="text" name="NIT_Empresa">
   <br>
   <input type="submit" value="EliminarEmpresa">
   </form>
   <br><br> <b>SET EMPRESA</b><br>
   <form method="post" action="set empresa.php">
   NIT_Empresa: <input type="text" name="NIT_Empresa"><br>
      Nombre_Empresa: <input type="text" name="Nombre_Empresa"><br>
Poblacion_Abeja: <input type="text" name="pob_abeja"><br>
   <br>
   <input type="submit" value="Set Empresa">
   </form>

   <br>
 <h4 style="background:#339999">  Fuente: <u> Elaboraci&oacute;n Propia.  </u> <br> 
Marco Antonio Roca Montenegro.              &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <u>UPB_Santa Cruz.</u> <br>
C&oacute;digo: <u>55995</u></h4>
<br><br>


</body>
</head>
</html>