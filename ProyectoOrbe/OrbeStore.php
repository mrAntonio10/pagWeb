<?php
//DATOS EXTRAS

include("include/conf.phpinc");
include("include/func.phpinc");
include("include/dbopen.php");
//PAGINA
include("include/headP.php");
 $dato= $_POST['datos'];
  //DISPLAY ERROR OFF
     error_reporting(0);
 //-------------------------------------------------

echo "<div class=\"content\">";
 if(!isset($dato)){
  $dato=10;
 }
 

 
     //$pedir= $dbh->prepare("select * from ropa");
   $sql="Select * from estilo_ropa; ";
   $respuesta=query($sql);
   //FORM
echo "<form action=\"#\" method=\"post\">";
    echo "<center>";
   
    echo "<br><br><br><br>";
    /* HAYA QUERIDO QUE FUNCIONE PERO LA PLATAFORMA NO DEJA MAS DE 20MB !!!!!!!!!
     echo "<audio autoplay controls>";
   echo "<source src=\"https://youtu.be/oeC6_AJye5U\" type=\"audio/mpeg\">";
   echo "</audio>";
   echo "  <h4 style=\"color: black\" align=\"left\">Autor de la música: Alexey Dávalos</h4>";
   */
//flecha
   echo "<div align=\"left\" style=\"font-size: 20px;position:absolute; left: 8%;\">Interactuar:</div>";
  echo "<img src=\"https://1.bp.blogspot.com/-TbodBfi5ZB4/XoRcm-2OMGI/AAAAAAAAAHM/ua6bosWUG5Q6qBmR6Tg3dskCCIjdEwAXgCLcBGAsYHQ/s1600/AfraidRadiantGull-size_restricted.gif\" widht=\"120px\" height=\"200px\" align=\"left\">";
  //saludo
 echo "<img src=\"https://c.tenor.com/Aujc9Y0s2tkAAAAC/saludo-hola.gif\" widht=\"200px\" height=\"200px\" onmouseover=\"javascript:abrir()\" align=\"left\" border=\"10 black\">";


echo "<br><br>";
echo "<br><br>";
echo "<br><br>";
echo "<br><br>";
echo "<br><br>";
//AQUI INICIA LA PAGINA
?>
<iframe width="560" height="315" src="https://www.youtube.com/embed/ZP2kaapshXU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


<?php
echo "  <h4 style=\"color: black\" align=\"left\">Autor de la música: Alexey Dávalos</h4>";
echo "<h2>";
echo"Estilo de Ropa: ";
switch ($dato) {
  case '1':
    // code...
  echo "Vintage";
    break;
  case '2':
    // code...
  echo "Urbano";
    break;
    case '3':
    // code...
  echo "Etiqueta";
    break;
    case '4':
    // code...
  echo "Aesthetic";
    break;
    case '5':
    // code...
  echo "Old";
    break;
  default:
    // code...
  echo "A TU ELECCIÓN";
    break;
}
echo "</h2>";
  //AQUI VA EL BUSCADOR
echo " <br>";

     echo "<select name=\"datos\" style=\"font-size: 35px;\">";
  
     foreach ($respuesta as $fila) {
    
      $id_estilo=$fila['id_estilo'];
   
      $tipo_estilo=$fila['tipo_estilo'];
         
      echo"<option value=\"$id_estilo\">";
       echo "$tipo_estilo";
      echo "</option>";
     }
   echo"</select><br>";
    echo "<input type=\"submit\" value=\"buscar\" style=\"font-size: 30px;\">";
  //SQL
$sql2= "Select * from ropa,nombre_ropa where disponibilidad=\"si\" and id_estilo=$dato and nombre_ropa.id_tipo=ropa.id_tipo and ropa.stock>0 and ropa.precio>0;";
$respuesta=query($sql2);

//INICIO DE LA TABLA
  echo "<table border=\"10\">";
   echo "<tr bgcolor=\"yellow\">";
   echo "<td> Nombre </td>";
    echo "<td> Talla </td>";
    echo "<td> Color </td>";
    echo "<td> Precio </td>";
    ECHO "<td> Stock </td>";
   echo "</tr>";

     foreach ($respuesta as $fila) {
      echo"<tr bgcolor=\"#F7D4C9\">";
      echo "<td> {$fila['nombre_ropa']} </td>";
      echo "<td> {$fila['talla']} </td>";
      echo "<td> Color </td>";
      echo "<td> {$fila['precio']} </td>";
      echo "<td> {$fila['stock']} </td>";
   echo "</tr>";
     } 
  echo "</table>";
  
  echo "</center>";
echo "</form>";

//FOTOS
 echo "<img src=\"img/$dato.jpg\" widht=\"400\" height=\"400\" border=\"10 black\">";
//FICHEROS
 echo "<div align=\"center\">";
echo "<form action=\"prueba.php\" method=\"post\" enctype=\"multipart/form-data\">";
echo"<br>";
 echo "Fichero: <input type=\"file\" name=\"fichero\" accept=\".jpg, .png, .jpeg, .gif\" style=\"font-size: 20px;\">";
    echo"<br>";
    echo "<input type=\"submit\" name=\"Enviar\" value=\"Subir Imagen\" style=\"font-size: 30px;\">";
echo"</form>";
   //SEGUNDAS OPCIONES DEL PROGRAMA CRUD
     echo "<br><h3> OPCIONES DE ADMIN</h3><br>";
     echo "<form action=\"mod.php\" method=\"post\">";
      echo "<table border=\"10\">";
       echo "<tr bgcolor=\"red\" style=\"color: yellow;\">";
       echo "<td align=\"left\"> Metodo </td>";
       echo "<td align=\"right\">";
        echo "<input type=\"radio\" name=\"cambio\" value=\"1\"> Añadir <br>";
        echo "<input type=\"radio\" name=\"cambio\" value=\"2\"> Eliminar<br>";
        echo "<input type=\"radio\" name=\"cambio\" value=\"3\"> Modificar<br>";
         echo "<input type=\"radio\" name=\"cambio\" value=\"4\"> Enviar Comentario<br>";
       echo"</td>";
      echo "</table>";
      echo "<input type=\"submit\" value=\"MOD\" style=\"font-size: 30px;\">";
     echo "</form>";


echo "</div>";
echo "</div>";


//POP UP :D de ventana
echo "<div class=\"ventana\" id=\"vent\" style=\"color: white; text-shadow: -3px -3px 3px red, 3px -3px 3px red, -3px 3px 3px red;font-size: 32px;align-text:center;\">";
  //BOTON Cerrar
echo "<div id=\"cerrar\">";
  echo "<a href=\"javascript: cerrar()\">";
  ECHO "<img src=\"https://w7.pngwing.com/pngs/844/786/png-transparent-maine-computer-icons-close-icon-thumbnail.png\" widht=\"15\" height=\"25\">";
 echo " </a>";
echo "</div>";
//FIN DEL BOTON CERRAR
//FORM
   $recursofichero = fopen("$dato.txt", "r");
    if ($recursofichero) {
     while (($linea = fgets($recursofichero)) !== false) {
      echo "<div clas=\"content\">";
        echo $linea;
        echo"<br>";
      echo "</div>";
    }
         if (!feof($recursofichero)) {
        echo "Error: falla no esperada de fgets()<br />\n";
     }
     fclose($recursofichero);
    }
 ECHO "aqui viene el texto";
//FIN DEL POP UP
 ECHO "</div>";

 echo " <script> ";
  echo "function abrir(){";
    echo "document.getElementById(\"vent\").style.display=\"block\";";
 echo  "}";
  echo "function cerrar(){";
    echo "document.getElementById(\"vent\").style.display=\"none\";";
  echo "}";
  //TEXTO A AÑADIR A VER SI LO DETECTA EN FIREFOX

echo "</script>";

//CIERRE PAGINA
echo "<div class=\"text-final\">";
     include("include/footer.php");
echo "</div>";
//CIERRE DATOS EXTRAS   
include("include/dbclose.phpinc");

?>


