<?php
include_once("include/conf.phpinc");
//PAGINA
include("include/header.php");


echo "<body>";
 
 //COOKIES 
 $USER= $_POST['USER'];
 $PASS= $_POST['PASS'];
 $DB= $_POST['DB'];
 $fijo=$_POST['fijo'];
 setcookie("USER",$USER);
 setcookie("PASS",$PASS);
 setcookie("DB",$DB);
//FOTO
echo "<center><img src=\"https://images3.alphacoders.com/787/78747.jpg\" widht=\"50%\" height=\"50%\" border=\"10 solid black\" > </center>";

//FOTO
//echo "<center><img src=\"https://i.pinimg.com/originals/e2/85/7b/e2857ba964a9456853a4fb3436b415a6.gif\" > </center>";

//APARTADO DE TEXTO :D 
 echo "<div class=\"text-center\">";
      $recursofichero = fopen("intro.txt", "r");
    if ($recursofichero) {
     while (($linea = fgets($recursofichero)) !== false) {
        echo $linea;
        echo"<br>";
    }
         if (!feof($recursofichero)) {
        echo "Error: falla no esperada de fgets()<br />\n";
     }
     fclose($recursofichero);
    }
echo "</div>";
if($fijo!=1){
//esto es mi css 
echo"<form action=\"#\" method=\"post\">";
echo "<h3 align=\"center\">";
  echo "<table BORDER=\"5\" CELLPADDING=\"0\" CELLSPACING=\"0\" align=\"center\">";
    echo "<tr bgcolor=\"#1e90ff\">";
      echo "<td ALIGN=\"center\" width=\"452\">";
        echo"<font size=\"6px\">";
        echo "<a href=\"javascript:abrir()\" style=\"color:white;\">";
        ECHO "Coneccion a mi Base de Datos";
        echo "</a>";
        echo "</font>";

      echo "</td>";
    echo "</tr>";
  echo "</table>";
echo "</h3>";

//POP UP :D de ventana
echo "<div class=\"ventana\" id=\"vent\" style=\"color: white; text-shadow: -3px -3px 3px red, 3px -3px 3px red, -3px 3px 3px red;\">";
  //BOTON Cerrar
echo "<div id=\"cerrar\">";
    echo "<a href=\"javascript: cerrar()\">";
    ECHO "<img src=\"https://w7.pngwing.com/pngs/844/786/png-transparent-maine-computer-icons-close-icon-thumbnail.png\" widht=\"15\" height=\"25\">";
   echo " </a>";
echo "</div>";
//FIN DEL BOTON CERRAR
//FORM
 echo "<center>";
   echo "<h4 style=\"margin:0px;\">";
   ECHO "INICIE SESION";
   echo "<br>";
    echo "<b><h3>";
    ECHO "DB User:";
    echo "</h3> </b> <input placeholder=\"ZzzarcoX\"  name=\"USER\" required style=\"color: red;\">";
  echo "<br>";
   echo "<b><h3>";
    ECHO "Password:";
     echo"</h3></b> <input type=\"password\" placeholder=\"******\"  name=\"PASS\" required style=\"color: red;\">";
    echo "<br>";
    echo "<b><h3>";
    ECHO  "Db Name";
     echo "</h3></b><input placeholder=\"Abejita\" name=\"DB\" required style=\"color: red;\">";
       echo "<br>";

  echo "<br><br>";
  echo"<input type=\"hidden\" name=\"fijo\" value=\"1\">";
    echo "<input type=\"submit\"  name=\"accion\" value=\"Conectar\" style=\"background-color: skyblue\"> ";
 echo" </h4> </center>";
//FIN DEL POP UP
 ECHO "</div>";


echo "</form>";

 echo " <script> ";
   echo "function continuar() {";
    echo "document.getElementById(\"boton\").style.display=\"block\";";
  echo "}";

  echo "function abrir(){";
    echo "document.getElementById(\"vent\").style.display=\"block\";";
 echo  "}";
  echo "function cerrar(){";
    echo "document.getElementById(\"vent\").style.display=\"none\";";
  echo "}";
echo "</script>";
}
else{
  echo "<script>";

  ECHO"</script>";

    echo" <META HTTP-EQUIV=\"REFRESH\" CONTENT=\"2;URL=OrbeStore.php\">";
}
//CIERRE PAGINA
echo "<div class=\"text-final\">";
     include("include/footer.php");
     echo "</div>";
?>