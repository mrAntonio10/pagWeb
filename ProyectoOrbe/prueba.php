<?php
//DATOS EXTRAS
//DATOS EXTRAS
include("include/conf.phpinc");
include("include/func.phpinc");
include("include/dbopen.php");
 //DISPLAY ERROR OFF
     error_reporting(0);
//PAGINA
include("include/headP.php");
    $val=$_REQUEST['Enviar'];
    $val2=$_REQUEST['Enviar2']; 
    $val3=$_REQUEST['Enviar3'];

ECHO "<br><br><br><br><br><br><br>";
echo "<div class=\"content\">";
 $color=intval($_REQUEST['color']);
  $tipo=intval($_REQUEST['tipo']);
   $estilo=intval($_REQUEST['estilo']);
    $talla=$_REQUEST['talla'];
     $precio=floatval(filter_var($_REQUEST['precio']));
      $stock=floatval(filter_var($_REQUEST['stock']));
       $disp=$_REQUEST['disp'];

        $num=$_REQUEST['idS'];


    $fic_nombre=$_FILES['fichero']['name'];
    $fic_tipo=$_FILES['fichero']['type'];
    $fic_tam=$_FILES['fichero']['size'];
    $fic_ubicacion=$_FILES['fichero']['tmp_name'];

       //PREGUNTA1
if($val==='Enviar'){

echo "ENVIASTE UN PRODUCTO :D<br>   ";
    
    $sql= "INSERT INTO ropa (id_color,id_tipo,id_estilo,talla,precio,stock,disponibilidad) VALUES ({$color},{$tipo},{$estilo},'{$talla}',{$precio},{$stock},'{$disp}');";
      
    query($sql);
      echo "<a href=\"OrbeStore.php\">";
      echo "<h2> Volver atras </h2><br>";
    echo "</a>";
}

    //PREGUNTA2
else if($val2==='Eliminar'){
   
    ECHO"ELIMINASTE UN PRODUCTO:D<br>";
    //DELETE
        $sql="UPDATE ropa SET disponibilidad='no' WHERE id=$num;";
    query($sql);
    echo "<a href=\"OrbeStore.php\">";
      echo "<h2> Volver atras </h2><br>";
    echo "</a>";
}
else if($val3==='Actualizar'){
    //DELETE
    ECHO"MODIFICASTE UN PRODUCTO :D<br>";
  $num=$_REQUEST['id'];
 $TALLA=strtoupper($_REQUEST['tal']);
    //DELETE
    $sql="UPDATE ropa SET talla='$TALLA' WHERE id=$num;";
    query($sql);
 echo "<a href=\"OrbeStore.php\">";
      echo "<h2> Volver atras </h2><br>";
    echo "</a>";
}   
else if($val==='Subir Imagen'){
  echo"hola :D<br>";

echo "Enviaste un fichero adjunto<br>";
    //La ubicacion temporal despues se elimina

    echo "Con el nombre de: $fic_nombre de $fic_tam bytes y de tipo $fic_tipo<br>";
   $destino= "C:\\Apache24\\htdocs\\ProyectoOrbe\\ficheros\\$fic_nombre";
  if(move_uploaded_file($fic_ubicacion, $destino)){
    echo "Exitoso";
  }
  else{
    echo"hubo un error";
  }

   echo "<a href=\"OrbeStore.php\">";
      echo "Volver atras<br>";
    echo "</a>";
}
else if($val3==='EnviarComentario'){
    $nombre=$_POST['nombre'];
         $preg="[A-Z]+";
         $firm = preg_match("/$preg/", $nombre);

         if(!$firm){
            $nombre_f=&$nombre;
              $nombre_f=strtoupper($nombre);

         }
    $comentario=$_POST['comentario'];
    $json= ["nombre"=>$nombre,"comentario"=>$comentario];
        $data= json_encode($json);
        file_put_contents("ficheros/comentarios.json", $data."\r\n",FILE_APPEND);
        ECHO"MUCHAS GRACIAS POR TUS COMENTARIOS\nNOS AYUDARÁN PARA MEJORAR";
     echo "<a href=\"OrbeStore.php\">";
      echo "<h2> Volver atras </h2><br>";
    echo "</a>";
}
echo "</div>";
  //CIERRE PAGINA
    echo "<div class=\"text-final-f\">";

     include("include/footer.php");
echo "</div>";
//CIERRE DATOS EXTRAS   
include("include/dbclose.phpinc");
?>