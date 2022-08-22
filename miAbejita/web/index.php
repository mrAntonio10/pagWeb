<html>
<head>
  <title>- Método de Pago</title>
  <style type="text/css">
    <?php
    include("ingresarTarjeta.css");
  ?>
  </style>
</head>
<body bgcolor="#a9a9a9" >


<h1 align="center"><%= "Cartera" %> </h1>
<br>

<form action="Tarjeta" method="post">
<%
  java.util.List<Tarjeta> listaTarjetas = (java.util.List)request.getAttribute("listaTarjetas");
%>

<%-- listar las tarjetas aqui--%>
  <%
    if(listaTarjetas!=null)
      for (Tarjeta t: listaTarjetas) {
  %>
  <table BORDER="1" CELLPADDING="0" CELLSPACING="0" align="center">
    <tr BGCOLOR="#1e90ff">

      <td ALIGN="center" width="5">
        Seleccionar
      </td>
      <td align="center" width="150">
        Número de Tarjeta
      </td>
        <td align="center">
            Tarjeta
        </td>

    </tr>
  <tr>

    <td>
      <a href="javascript: continuar()">
      <input type="radio" name="rdElegir" value="<%=t.getCodigo_tarjeta()%>" align="center" onclick="continuar()">
      </a>
    </td>
    <td align="center">

       <%="**** **** **** "+t.getCodigo_tarjeta().charAt(12)+t.getCodigo_tarjeta().charAt(13)+t.getCodigo_tarjeta().charAt(14)+t.getCodigo_tarjeta().charAt(15)%>
    </td>
      <td align="center">
          <%
              if(t.getCodigo_tarjeta().charAt(0)=='4'){
          %>

          <img src="img_src/visa.png" width="48" height="30 "  />

          <%
              }

              else{
                  %>
          <img src="img_src/masterCard.png" width="48" height="28" />
          <%
              }
          %>
      </td>

  </tr>
  <%
      }
  %>
</table>
  <br>
<div class="boton" style="display: none" id="boton">
    <center>
      <input type="submit"  name="accion" value="Continuar" style="background-color: skyblue" >
        <input type="submit"  name="accion" value="Eliminar" style="background-color: skyblue">
    </center>
</div>


<%--script para mostrar añadir tarjeta :3--%>
<h3 align="center">
  <table BORDER="1" CELLPADDING="0" CELLSPACING="0" align="center">
    <tr bgcolor="#1e90ff">
      <td ALIGN="center" width="450">
        <a href="javascript:abrir()">Añadir Tarjeta</a>
      </td>
    </tr>
  </table>
</h3>

<%--POPUP lo tengo invisible--%>
<div class="ventana" id="vent">
  BOTON Cerrar
<div id="cerrar">
  <a href="javascript: cerrar()">
  CERRAR
  </a>
</div>
<%-- ingresar tarjetas aqui--%>
 <center>
   <h4>Tarjeta De Crédito/Débito
   <br><br><br>
    <b>Código:</b> <input placeholder="CodigoTarjeta"  name="CODIGO" maxlength="16" pattern="[0-9]+" >
  <br>
   <b>Valid Mes/Año:</b> <input placeholder="02"  name="MES" size="3" maxlength="2" pattern="[0-9]+" >
       <input placeholder="24" name="final" size="3" maxlength="2" pattern="[0-9]+" >
    <br>
    <b>CVC</b><input placeholder="357" name="CVC" size="3" maxlength="3" pattern="[0-9]+">
       <br>

  <br>
    <br>
    <input type="submit"  name="accion" value="Guardar" style="background-color: skyblue">
 </h4>
 </center>
     </div>
  <%--cierro el campo que se volvería visible--%>
  <center>

 <input type="submit" name="accion" value="listar">

  </center>
</form>
<%--USAMOS UN SCRIPT JAVA :D--%>
<script>
  function continuar() {
    document.getElementById("boton").style.display="block";
  }

  function abrir(){
    document.getElementById("vent").style.display="block";
  }
  function cerrar(){
    document.getElementById("vent").style.display="none";
  }
</script>

</body>
</html>