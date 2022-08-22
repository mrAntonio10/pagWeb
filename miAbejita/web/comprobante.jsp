<%@ page import="edu.upb.PasarelaPago.estructura.entidades.Comprobante" %>
<%@ page import="edu.upb.PasarelaPago.estructura.entidades.Qr" %><%--
  Created by IntelliJ IDEA.
  User: Marcoro
  Date: 29/06/2021
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Comprobante</title>
</head>
<body>

<form action="comprobantes" method="post">
<%
    java.util.List<Comprobante> listaComprobantesTR = (java.util.List)request.getAttribute("listaComprobante");
%>
<%
    if(listaComprobantesTR!=null)
        for (Comprobante c: listaComprobantesTR) {
%>

<%--apartado para generar COMPROBANTE--%>



    <center>
        <hr>
        <b>Depósito</b>
        <br><br>
        <b>Cuenta Remitente:</b> <input type="text" value="162875463" readonly>
        <br>
        <b>Cuenta Destino:</b>  <input type="text" value="<%=c.getCuentaDestino()%>" name="DESTINO" readonly >
        <br>
        <b>Monto:</b> <input type="text" value="<%=c.getMonto()%>" readonly>
        <br>
        <b>Descripción:</b> <input type="text"  name="DESCR" value="<%=c.getDescripcion()%>" readonly>
        <br>

        <br>



    </center>

<%
        }
%>


<%
    java.util.List<Qr> listaComprobantesQR = (java.util.List)request.getAttribute("listaComprobanteQR");
%>
<%
    if(listaComprobantesQR!=null)
        for (Qr c2: listaComprobantesQR) {
%>

<%--apartado para generar QR--%>

    <center>
        <hr>
        <center>QR GENERADO</center>
        <br>
        <h6>Compartir Qr para completar el pago</h6>
        <br>
        <img src="img_src/flowcode.png" width="150" height="150">
        <br><br>
        <b>Monto:</b> <input type="text" value="<%=c2.getMontoQr()%>"  readonly>
        <br>
        <b>Descripcion:</b> <input type="text" placeholder="Descripcion" value="<%=c2.getDescripcionQr()%>" readonly >
        <br>
        <br>

    </center>

<%
        }
%>
Volver a Tarjetas...<br>
<input type="submit" name="accion" value="Terminar">
</form>
</body>
</html>
