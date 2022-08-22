<%@ page import="edu.upb.PasarelaPago.estructura.entidades.Tarjeta" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="edu.upb.PasarelaPago.estructura.entidades.Comprobante" %><%--
  Created by IntelliJ IDEA.
  User: Marcoro
  Date: 27/06/2021
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%
    String USUARIO ="Marco Antonio Roca";
    String p1="Soda Coca-Cola";
    String p2="Pipocas ";
    String p3="Hamburguesa Fridosa";
    float r1= Float.parseFloat("12.50");
    float r2= Float.parseFloat("7.80");
    float r3= Float.parseFloat("48.50");
    int nit= 4576480;
    int nit_v=9978653;
%>

<html>
<head>
    <title> Opciones Pago</title>
    <style type="text/css">
        <%@include file="ingresarTarjeta.css"%>
    </style>
</head>
<body  bgcolor="#a9a9a9" >

<form action="factura" method="post">
<center><h1>Opciones De Pago</h1></center>
<br /><br /><BR /><br /><br /><BR /><br /><br />
<center>
    Pago Directo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Transferencia
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Código QR &nbsp;
    <br />
    <%--IMAGEN PAGO :D--%>
    <a href="javascript:pagamos()" style="border-color: black">
    <img src="img_src/pago.jpg" alt="PagoDirecto" width="132" height="119" border="3" usemap="#Map" />
    </a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%--IMAGEN TRANSFERENCIA :D--%>
    <a href="javascript: transferimos()">
        <img src="img_src/transferencia.jpg" alt="Transferencia" width="132" height="119" border="3" usemap="#Map" />
    </a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%--IMAGEN QR--%>
    <a href="javascript: qr()">
        <img src="img_src/cobroQR.png" alt="CodigoQR" width="132" height="119" border="3" usemap="#Map" />
    </a>
</center>


<%--AQUI VOY A HACER MIS POPUPS SEGUN LO SELECCIONADO :D--%>

<%-- lo tengo invisible--%>

<%-- PAGAR DIRECTO--%>
<div class="pago" id="pag">
    <%-- BOTON CERRAR PAGO--%>
    <div id="cerrar0">
        <a href="javascript: cerrar()">
            <img src="img_src/cerrar.png" width="26" height="25" >
        </a>
    </div>
<%--AQUI TENGO Q REVISAR LOS DATOS DE LO QUE ESTARIAMOS FACTURANDO :D--%>
    <center><b>Factura</b></center>
    <br> <br>
         <b>NIT VENDEDOR:</b> <input placeholder="NitVendedor" name="nitV" value="<%=nit_v%>" >
        <br>
    <b> Nombre:</b> <input placeholder="Nombre" name="NOMBRE" value="<%=USUARIO%>" >
    <br>    <b>NIT:</b> <input placeholder="NitComprador" name="nitC" value="<%=nit%>" >
    <br>
    <b>Productos:</b>&nbsp;&nbsp;&nbsp;&nbsp; <b>Precio</b> Bs:
        <br>
        <%=p1%>    &nbsp;&nbsp;&nbsp;&nbsp;<%=r1%>
        <br>
        <%=p2%> &nbsp;&nbsp;&nbsp;&nbsp; <%=r2%>
        <br>
        <%=p3%>  &nbsp;&nbsp;&nbsp;&nbsp;<%=r3%>
    <br> Total:<input type="text" name="TOTAL" value="<%=r1+r2+r3%>" size="8" readonly>
    <br> Fecha: <input type="text" name="FECHA_E" value="<%=LocalDate.now()%>" readonly>

        <br><br>
    <center>
        <input type="submit" name="accion" value="Aceptar">
    </center>
</div>


<%-- TRANSFERIMOS A CUENTA--%>
<%-- ESTO ME TIENE Q DESPLEGAR UN COMPROBANTE ._. NO MÁS--%>

<div class="transferimos" id="trf">
    <div id="cerrar1">
        <a href="javascript: cerrar1()">
            <img src="img_src/cerrar.png" width="26" height="25" >
        </a>
    </div>
    <center>

        <b>Depósito</b>
        <br><br>
        <b>Cuenta Destino:</b>  <input placeholder="Cuenta Destino" name="DESTINO" maxlength="10" pattern="[0-9]+">
        <br>
        <b>Monto:</b> <input placeholder="88.9"  name="MONTO">
        <br>
        <b>Descripción:</b> <input placeholder="Descripcion"  name="DESC" maxlength="40" >
        <br>
    <input type="submit" name="accion" value="Finalizar">
        <br>

    </center>
</div>



<%-- PAGAMOS CON QR GENERADO--%>

<div class="QR" id="qr">
    <div id="cerrar2">
        <a href="javascript: cerrar2()">
            <img src="img_src/cerrar.png" width="26" height="25" >
        </a>
    </div>
    <h4 align="center">
        <center>Generar QR</center>
        <br><br><br>

       <b>Monto:</b> <input type="text" name="monto_qr" placeholder="100.98">
        <br>
        <b>Descripcion:</b> <input type="text" name="descripcion" placeholder="Descripcion" maxlength="40">
        <br>
        <br>
        <input type="submit" name="accion" value="Generar" style="background-color: skyblue">

    </h4>
</div>

</form>
<%--USAMOS UN SCRIPT JAVA :D--%>
<script>
    function pagamos(){
        document.getElementById("pag").style.display="block";
    }
    function transferimos(){
        document.getElementById("trf").style.display="block";
    }
    function qr(){
        document.getElementById("qr").style.display="block";
    }
    function cerrar(){
        document.getElementById("pag").style.display="none";
    }
    function cerrar1(){
        document.getElementById("trf").style.display="none";
    }
    function cerrar2(){
        document.getElementById("qr").style.display="none";
    }

    function cerrar4(){
        document.getElementById("genQr").style.display="none";
    }
    function recibo(){
        document.getElementById("trf").style.display="none";
        document.getElementById("comp").style.display="block";
    }


</script>
</body>
</html>
