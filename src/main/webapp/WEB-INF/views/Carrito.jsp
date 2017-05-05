<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.home.models.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#body {
	background-color: #666363;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Carrito de compra - PideYa</title>
</head>
<body id="body">
	<%
		Pedido p = (Pedido) request.getAttribute("pedido");
		String count = ((String) request.getAttribute("count"));
		List<String> lPedido = p.getPedido();
	%>

	<center>
		</br>
		</br>
		<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get">
		<div style="width: 50%" class="panel panel-info">
			<div class="panel-heading">
				Tienes
				<%=count%>
				cosa(s) en el carrito
			</div>
			<div style="float: right;" class="panel-body">Total a pagar :
				20&#8364;</div>
			</br> </br>

			<%
				for (String s : p.getPedido()) {
			%>

			<div class="panel-body"></div>
			<div style="width:45%;" class="alert alert-warning">
				<%=s%><strong style="float:right;">5 &#8364;</strong>
			</div>
			<%
				}
			%>
			
			<button  type="submit" class="btn btn-info"
												data-inline="true">
												<font color="black">Pagar y finalizar compa</font>
											</button></br></br>
		</div>
		
		</form>
	</center>


	<%-- <h1><%=count %></h1> --%>
	<!-- <br> -->
	<%-- <h1><%=p.getMesa() %></h1> --%>
	<%-- <%for(String s : p.getPedido()){ %> --%>
	<%-- <h3><%=s %></h3> --%>
	<%-- <%} %> --%>


</body>
</html>