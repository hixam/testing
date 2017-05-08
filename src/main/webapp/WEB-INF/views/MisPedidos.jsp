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
<title>Insert title here</title>
</head>
<body style="background-color: #242629;">
	<%
		Pedido p = (Pedido) request.getAttribute("pedido");
		String count = ((String) request.getAttribute("count"));
	%>
	</br>
	
	<div class="col-md-12">
			<center>
				<img class="img-responsive"
					src="http://synergyconsultants.com/wp-content/uploads/2015/07/restaurant-design-header.jpg"
					alt="PideYa!">
			</center>

		</div>
	
	</br>


	<div class="col-md-12">

		<div class="card">
			<div class="card-header" data-background-color="#837476"
				style="background-color: #837476;">

				<h4 class="title">
					Restaurante
					<%=p.getRestaurante()%>
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

						<h4>Lista de tu pedido</h4>


							<%
								for (String s : p.getPedido()) {
							%>
							<div style="margin-bottom: 0; margin-top: 0;"
								class="alert alert-success">
								<p>
									<%=s%><a style="float:right;"><strong>  5 &#8364;
									</strong></a>
								</p>
							</div>
							<%
								}
							%>
							<hr>
							<div style="float: right;" class="panel-body">
								<h3>Total:20&#8364;</h3>
							</div>
							</br> 
						 
							
							<center>
							</br></br></br>
							<div style="margin-bottom: 0;width: 95%; margin-top: 0;"
								class="alert alert-info">
								<p>
									<strong> Estado pedido :
									</strong> 
								</p>
							</div>
							
							</br>
							
		                     
		                    
							<div style="width: 50%; position:;" class="progress">
								<div
									class="progress-bar progress-bar-info progress-bar-striped active"
									role="progressbar" aria-valuenow="50" aria-valuemin="0"
									aria-valuemax="100"
									style="width:<%=p.getStatus().equals("Recibido") ? "10%;" : (p.getStatus().equals("Confirmado") ? "50%;" : "0%;")%>">
								
								</div>
								
							</div>
									<center>
									<a
										 ><%=p.getStatus().equals("Recibido") ? "10% (Recibido)"
					: (p.getStatus().equals("Confirmado") ? "50% (Confirmado)" : "0%")%></a></center>




</br>
							<a  href="/pideya/test/confirmar/<%=p.getId() %>" class="btn btn-success" data-inline="true" onclick="goBack()">
								<font color="black"><span class="glyphicon glyphicon-refresh"></span>Actualizar estado</font>
							</a> 
						
							
							<a  href="/pideya/test/<%=p.getRestaurante() + "YY" + p.getMesa() %>" class="btn btn-default" data-inline="true">
								<font color="black"><span class="glyphicon glyphicon-remove"></span>Salir</font>
							</a>
							
							</center>
							</br> </br> </br>
						</div>
					</div>
			</form>
		</div>
	</div>

	
</body>
</html>