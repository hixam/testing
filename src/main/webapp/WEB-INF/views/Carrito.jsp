
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.home.models.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: #666363;
}
</style>
<script src="https://js.pusher.com/4.0/pusher.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="http://demos.creative-tim.com/material-dashboard/assets/css/demo.css"
	rel="stylesheet" />
<link
	href="http://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.css"
	rel="stylesheet" />
<link rel="canonical"
	href="http://www.creative-tim.com/product/material-kit-pro" />

<link href="http://gsdk.creative-tim.com/assets/css/gsdk.css"
	rel="stylesheet" />

<link
	href="http://gsdk.creative-tim.com/assets/css/pe-icon-7-stroke.css"
	rel="stylesheet" />

<title>Carrito de compra - PideYa</title>
</head>
<body style="background-color: #242629;">
	<%
		Pedido p = (Pedido) request.getAttribute("pedido");
		String count = ((String) request.getAttribute("count"));
		List<String> lPedido = p.getPedido();
	%>

	<center>

</br>
		<div class="col-md-12">
			<center>
				<img class="img-responsive"
					src="http://synergyconsultants.com/wp-content/uploads/2015/07/restaurant-design-header.jpg"
					alt="PideYa!">
			</center>

		</div>

		<div class="col-md-12">

			<div class="card">
				<div class="card-header" data-background-color="#837476"
					style="background-color: #837476;">

					<h4 class="title">
						Restaurante
						<%=request.getAttribute("res")%>
					</h4>
					<p class="category">
						<i class="material-icons">&#xE854;</i>Tienes
						<%=count%>
						cosa(s) en el carrito
					</p>
					<div style="background-color: #837476;" class="panel-heading">
<!-- 						<i class="material-icons">&#xE854;</i>Tienes -->
<%-- 						<%=count%> --%>
<!-- 						cosa(s) en el carrito -->
					</div>
				</div>
				<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get">
					<div class="row">
						<div class="col-xs-12">
							<div style="background-color: #D2D2D2;"
								class="panel panel-default">




								<%
									for (String s : p.getPedido()) {
								%>
								<div class="panel-body"></div>
								<div style="margin-bottom: 0; margin-top: 0;"
									class="alert alert-success">
									<p><strong>
										<%=s%> 5 &#8364;</strong> <span style="float: right;" class="glyphicon glyphicon-trash"></span></p>
								</div>
								<%
									}
								%>
								<hr>
								<div style="float: right;" class="panel-body">
									<h3>Total:20&#8364;</h3>
								</div>
								<button type="submit" class="btn btn-default" data-inline="true">
									<font color="black"><i class="material-icons">payment</i>Pagar
										y finalizar compa</font>
								</button>

								<a  class="btn btn-success" data-inline="true" onclick="goBack()">
									<font color="black"><i class="material-icons">&#xE854;</i>Seguir comprando</font>
								</a>

								</br>
								</br>
								</br>
							</div>
						</div>
				</form>
			</div>
		</div>


<!-- 		<div class="main"> -->
<!-- 			<div class="container tim-container"> -->


<!-- 				<div class="col-lg-12"> -->
<%-- 					<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get"> --%>
<!-- 						<div class="row"> -->
<!-- 							<div class="col-xs-12"> -->
<!-- 								<div style="background-color: #D2D2D2;" -->
<!-- 									class="panel panel-default"> -->
<!-- 									<div style="background-color: #837476;" class="panel-heading"> -->
<!-- 										<i style="float: left;" class="material-icons">shopping_cart</i>Tienes -->
<%-- 										<%=count%> --%>
<!-- 										cosa(s) en el carrito -->
<!-- 									</div> -->



<%-- 									<% --%>
 	<%--									for (String s : p.getPedido()) { --%>
<%-- 									%> --%>
<!-- 									<div class="panel-body"></div> -->
<!-- 									<div style="margin-bottom: 0; margin-top: 0;" -->
<!-- 										class="alert alert-success"> -->
<%-- 										<i style="float: left;" class="material-icons">delete_forever</i><%=s%><strong --%>
<!-- 											style="float: right;">5 &#8364;</strong> -->
<!-- 									</div> -->
<%-- 									<% --%>
<%--										}--%>
<%-- 									%> --%>
<!-- 									<hr> -->
<!-- 									<div style="float: right;" class="panel-body"> -->
<!-- 										<h3>Total:20&#8364;</h3> -->
<!-- 									</div> -->
<!-- 									<button type="submit" class="btn btn-default" -->
<!-- 										data-inline="true"> -->
<!-- 										<font color="black"><i class="material-icons">payment</i>Pagar -->
<!-- 											y finalizar compa</font> -->
<!-- 									</button> -->
<!-- 									<button type="button" class="btn btn-success" -->
<!-- 										onclick="goBack()"> -->
<!-- 										<i class="material-icons">add_shopping_cart</i>Seguir -->
<!-- 										comprando -->
<!-- 									</button> -->

<!-- 									</br> -->
<!-- 									</br> -->
<!-- 									</br> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 					</form> -->
<!-- 				</div> -->




<%-- 				<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get"> --%>

<!-- 					<div class="panel panel-info"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							Tienes -->
<%-- 							<%=count%> --%>
<!-- 							cosa(s) en el carrito -->
<!-- 						</div> -->
<!-- 						<div style="float: right;" class="panel-body">Total a pagar -->
<!-- 							: 20&#8364;</div> -->
<!-- 						</br> </br> -->

<%-- 						<% --%>
<%-- 							for (String s : p.getPedido()) {
<%-- 						--%>

<!-- 						<div class="panel-body"></div> -->
<!-- 						<div style="width: 45%;" id="alerta" class="alert alert-success"> -->
<%-- 							<%=s%><strong style="float: right;">5 &#8364;</strong> --%>
<!-- 						</div> -->
<%-- 						<% --%>
<%--							} --%>
<%-- 						--%> 

<!-- 						<button type="submit" class="btn btn-default" data-inline="true"> -->
<!-- 							<font color="black">Pagar y finalizar compa</font> -->
<!-- 						</button> -->
<!-- 						<button type="button" class="btn btn-success" onclick="goBack()">Seguir -->
<!-- 							comprando</button> -->

<!-- 						</br> -->
<!-- 						</br> -->
<!-- 					</div> -->

<!-- 				</form> -->




<!-- 			</div> -->
<!-- 		</div> -->



















	</center>

	<script>
		function goBack() {
			window.history.back();
		}
	</script>
	<%-- <h1><%=count %></h1> --%>
	<!-- <br> -->
	<%-- <h1><%=p.getMesa() %></h1> --%>
	<%-- <%for(String s : p.getPedido()){ %> --%>
	<%-- <h3><%=s %></h3> --%>
	<%-- <%} %> --%>


</body>
</html>


