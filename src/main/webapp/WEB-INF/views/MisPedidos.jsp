<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.home.models.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#body {
	background-color: #666363;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body">
<%  Pedido p = (Pedido)request.getAttribute("pedido");
	String count = ((String)request.getAttribute("count"));
%>
</br></br>
<center>
<div style="width:50%" class="panel panel-info">
      <div class="panel-heading">Tienes <%=count %> cosa(s) en este pedido</div>
      <div style="float:right;" class="panel-body">Total a pagar : 20&#8364;</div>
      </br></br>
      <%for(String s : p.getPedido()){ %>
      
      <div class="panel-body"><%=s %></div>
      
      <%} %>
    </div>

<div style="width:25%" class="alert alert-info">
  <strong>Estado del pedido :</strong>
</div>

<div style="width:50%;position: relative;" class="progress">
  <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="50"
  aria-valuemin="0" aria-valuemax="100" style="width:<%=p.getStatus().equals("Recibido") ? "10%" : (p.getStatus().equals("Confirmado") ? "50%" : "0%") %>">
    <strong style="color:blue; position: absolute;display: block;width: 100%;"><%=p.getStatus().equals("Recibido") ? "10% (Recibido)" : (p.getStatus().equals("Confirmado") ? "50% (Confirmado)" : "0%") %></strong>
  </div>
</div>
</center>
</body>
</html>