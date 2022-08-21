<?php  
  
  include("include/conf.phpinc");
  include("include/func.phpinc");
  include("include/dbopen.php");
  //DISPLAY ERROR OFF
     error_reporting(0);
  //html
  include_once("include/headP.php");
$dato= $_REQUEST['cambio'];
echo "<div class=\"text-center\">";
echo "<div class=\"content\">";
echo "<br><br><br><br><br>";
//AÑADIR ELEMENTOS
 if($dato==1){
 	echo "<form action=\"prueba.php\" method=\"post\">";
  echo "<h2 style=\"color: grey;\">";
	echo "VAMOS A AÑADIR UN ELEMENTO";
  echo "</h2>";
	//TABLA
echo"<center>";
	echo"<table border=\"4\" bgcolor=\"grey\">";
	//COLOR
	echo"<tr >";
	 echo "<td>Color: </td>";
	 echo"<td align=\"center\" > <select name=\"color\" style=\"font-size: 20px;\">";
	 echo "<option value=\"1\"> Rojo </option> ";
	 echo "<option value=\"2\"> Amarillo </option> ";
	 echo "<option value=\"3\"> Verde </option> ";
	 echo "<option value=\"4\"> Azul </option> ";
	 echo "<option value=\"5\"> Rosa </option> ";
	 echo "<option value=\"6\"> Violeta </option> ";
	 echo "<option value=\"7\"> Cafe </option> ";
	 echo "<option value=\"8\"> Celeste </option> ";
	 echo "<option value=\"9\"> Gris </option> ";
	 echo "<option value=\"10\"> Negro </option> ";
	echo "</select> </td>";
	echo"</tr>";
	//TIPO
	echo"<tr>";
	 echo "<td>Tipo: </td>";
	 echo"<td align=\"center\"> <select name=\"tipo\" style=\"font-size: 20px;\">";
	 echo "<option value=\"1\"> jogger </option> ";
	 echo "<option value=\"2\"> Jogger </option> ";
	 echo "<option value=\"3\"> Short </option> ";
	 echo "<option value=\"4\"> Solera </option> ";
	 echo "<option value=\"5\"> Gorra </option> ";
	 echo "<option value=\"6\"> Hoodie </option> ";
	 echo "<option value=\"7\"> Abrigo </option> ";
	 echo "<option value=\"8\"> Camisa </option> ";
	 echo "<option value=\"9\"> Boxer </option> ";
	 echo "<option value=\"10\"> Bufanda </option> ";
	echo "</select> </td>";
	echo"</tr>";
	 //ESTILO
	 echo"<tr>";
	 echo"<td> Estilo: </td>";
     echo"<td align=\"center\"> <select name=\"estilo\" style=\"font-size: 20px;\">";
	 echo "<option value=\"1\"> Vintage </option> ";
	 echo "<option value=\"2\"> Urbano </option> ";
	 echo "<option value=\"3\"> Etiqueta </option> ";
	 echo "<option value=\"4\"> Aesthetic </option> ";
	 echo "<option value=\"5\"> Old </option> ";
	 echo "</select>";
	 echo "</td>";
	 ECHO"</tr>";
    //TALLAS
	  echo"<tr>";
	 echo"<td> Tallas: </td>";
     echo"<td align=\"center\"> <select name=\"talla\" style=\"font-size: 20px;\">";
	 echo "<option> S </option> ";
	 echo "<option> P </option> ";
	 echo "<option> M </option> ";
	 echo "<option> X </option> ";
	 echo "<option> XL </option> ";
	 echo "</select>";
	 echo "</td>";
	 ECHO"</tr>";
	 //PRECIO
	 echo"<tr>";
	 echo"<td> Precio: </td>";
     echo "<td align=\"center\">";
    echo"<input type=\"text\" name=\"precio\" size=\"6\" style=\"font-size: 20px;\">";
	 echo "</td>";
	 ECHO"</tr>";
	 //STOCK
	 echo"<tr>";
	 echo"<td> Stock: </td>";
     echo "<td align=\"center\">";
     echo"<input type=\"text\" name=\"stock\" size=\"6\" style=\"font-size: 20px;\" >";
	 echo "</td>";
	 ECHO"</tr>";
	 //DISPONIBILIDAD
	   echo"<tr>";
	 echo"<td> Disponibilidad: </td>";
     echo"<td align=\"center\"> <select name=\"disp\" style=\"font-size: 25px;\">";
	 echo "<option> si </option> ";
	 echo "</select>";
	 echo "</td>";
	 echo"</tr>";
	 //CERRAR TABLA
	echo"</table>";
	//BOTON Y ATRAS
	echo "<input type=\"submit\" name=\"Enviar\" value=\"Enviar\" style=\"font-size: 20px;\"><BR>";
	echo "<a href=\"OrbeStore.php\" style=\"font-size: 40px;\">";
    echo "Volver atras <br>";
    echo "</a>";
   echo"<center>";
 	

	 echo "</form>";
 }
 //ELIMINAR
 else if($dato==2){
    
    //FORMULARIO
   echo"<form action=\"prueba.php\" method=\"post\">";
   echo "<h2 style=\"color: grey\">";
   echo "VAMOS A ELIMINAR UN ELEMENTO</h2><br>";
   echo"<center><h2 style=\"color: grey;\"> ¿CUAL DESEA ELIMINAR?</h2> </center>";
   echo"<center>";
     echo "<table border=\"4\" bgcolor=\"grey\">";
     echo "<tr>";
      echo "<td align=\"left\"> id </td>";
      echo "<td align=\"right\"> Nombre </td>";
      echo "<td> Precio </td>";
     echo "</tr>";
      $sql = "SELECT * FROM ROPA,nombre_ropa WHERE ROPA.id_tipo=nombre_ropa.id_tipo AND ROPA.disponibilidad='si' ORDER BY ropa.id ASC;";
      $respuesta= query($sql);
      foreach ($respuesta as $fila) {
      	// code...
      echo"<tr >";
      //ID
       echo "<td >";
       echo "{$fila['id']}";
       echo "</td>";
      //NOMBRE ROPA
       echo "<td>";
       echo "{$fila['nombre_ropa']}";
       echo"</td>";
      //PRECIO
       echo"<td>";
       echo "{$fila['precio']}";
       echo"</td>";
      echo"</tr>";
      }
    echo"</table>";

    echo "<select name=\"idS\" style=\"font-size: 20px;\">";
     foreach($respuesta as $fila){
      $num1=$fila['id'];
      echo"<option value=\"$num1\">$num1 </option>";
     }
    echo"</select><BR>";
    
    echo"<input type=\"submit\" name=\"Enviar2\" value=\"Eliminar\"style=\"font-size: 20px;\" >";
   echo"</form>"; 
    echo "<a href=\"OrbeStore.php\">";
      echo "<h3 style=\"font-size: 40px;\">Volver atras  </h3><br>";
    echo "</a>";
   echo"</center>";
 }
 else if($dato==3){
    Echo "<h2 style=\"color: grey;\">VAMOS A MODIFICAR UN ELEMENTO</h2><br>";
      echo"<center><h2 style=\"color: grey\"> CUAL DESEA ELIMINAR? </h2></center>";
    //FORMULARIO
   echo"<form action=\"prueba.php\" method=\"post\">";
  echo"<center>";
    echo "<table border=\"4\" bgcolor=\"grey\" >";
     echo "<tr>";
      echo "<td align=\"left\"> id </td>";
      echo "<td align=\"right\"> Nombre </td>";
      echo "<td> Talla </td>";
     echo "</tr>";
      $sql = "SELECT * FROM ROPA,nombre_ropa WHERE ROPA.id_tipo=nombre_ropa.id_tipo AND ROPA.disponibilidad='si' Order By ROPA.id ASC;";
      $respuesta= query($sql);
      foreach ($respuesta as $fila) {
      	// code...
      echo"<tr>";
      //ID
       echo "<td>";
       echo "{$fila['id']}";
       echo "</td>";
      //NOMBRE ROPA
       echo "<td>";
       echo "{$fila['nombre_ropa']}";
       echo"</td>";
      //PRECIO
       echo"<td align=\"center\">";
       echo "{$fila['talla']}";
       echo"</td>";
      echo"</tr>";
      }
    echo"</table>";
    echo "<select name=\"id\" style=\"font-size: 20px\">";
  
     foreach($respuesta as $fila){
      $num1=$fila['id'];
      echo"<option value=\"$num1\">$num1 </option>";
     }
    echo"</select>";

    echo "   Nueva Talla: <input type=\"text\" name=\"tal\" style=\"font-size: 20px\">";
    echo"<input type=\"submit\" name=\"Enviar3\"value=\"Actualizar\" style=\"font-size: 20px\">";
   echo"</form>"; 
    echo "<a href=\"OrbeStore.php\">";
      echo "<h3 style=\"font-size: 40px;\">Volver atras  </h3><br>";
    echo "</a>";
  
 }
else if($dato==4){
  echo "<br>";
  ECHO"¿TIENES ALGÚN COMENTARIO?";
  
  //FORM PARA COMENTARIO
   //FORMULARIO
   echo"<form action=\"prueba.php\" method=\"post\">";
  echo"<center>";
    echo "<table border=\"4\" bgcolor=\"grey\" >";
     echo "<tr>";
      echo "<td align=\"left\"> Nombre: </td>";
      echo "<td align=\"right\"> Comentario: </td>";
     echo "</tr>";
     echo "<tr>";
      echo "<td> <input type=\"text\" name=\"nombre\" style=\"font-size: 20px\" required> </td>";
      echo "<td> <input type=\"text\" name=\"comentario\" style=\"font-size: 20px\" maxlength=\"35\" required> </td>";
    echo"</table>";
        echo"<input type=\"submit\" name=\"Enviar3\"value=\"EnviarComentario\" style=\"font-size: 20px\" >";
   echo"</form>"; 
   //FIN DEL FORM 
      //COMENTARIOS PAGINA
   echo "<br><br><h2>Comentarios de la Página: </h2> ";
  echo "<table border=\"4px\" style=\"font-size: 35px; \">";
         echo "<tr>";
            echo "<td align=\"left\"> Nombre </td>";
            echo "<td align=\"right\"> Comentarios </td>";
         echo "</tr>";
//APARTADO DE TEXTO :D 
      $recursofichero = fopen("ficheros/comentarios.json", "r");
    if ($recursofichero) {
     while (($linea = fgets($recursofichero)) !== false) {
         $data=json_decode($linea,true);
         echo "<tr>";
            echo "<td>";
            echo ($data["nombre"]);
            echo "</td>";
            echo "<td>";
            echo $data['comentario'];
            echo "</td>";
         echo "</tr>";
    }
         if (!feof($recursofichero)) {
        echo "Error: falla no esperada de fgets()<br />\n";
     }
     fclose($recursofichero);
    }
          echo "</table>";
  echo "<a href=\"OrbeStore.php\">";
      echo "<h3 style=\"font-size: 40px;\">Volver atras  </h3><br>";
    echo "</a>";
}
  echo"</center>";
  echo "</div>";
  
//CIERRE PAGINA
echo "<div class=\"text-final-f\">";

     include("include/footer.php");
echo "</div>";
//CIERRE DATOS EXTRAS   
include("include/dbclose.phpinc");
?>