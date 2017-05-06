
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
		</br> </br>

		<div class="main">
			<div class="container tim-container">


				<div class="col-lg-12">
					<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get">
<div class="row">
    <div  class="col-xs-12">
						<div style="background-color:#D2D2D2;" class="panel panel-default">
							<div  class="panel-heading">
								Tienes
								<%=count%>
								cosa(s) en el carrito
							</div>



    <%
				for (String s : p.getPedido()) {
			%> 
     <div  class="panel-body"></div>
			<div style="margin-bottom: 0;margin-top: 0;" class="alert alert-success">
				<%=s%><strong style="float:right;">5 &#8364;</strong>
			</div>
      <%} %>
 </br><hr>
 			<div style="float: right;" class="panel-body"><h2>Total:20&#8364;</h2></div> 
 </br> 
	<button  type="submit" class="btn btn-default"
												data-inline="true">
												<font color="black">Pagar y finalizar compa</font>
											</button>
											<button type="button" class="btn btn-success" onclick="goBack()">Seguir comprando</button>
											
											</br></br>
</div></div>
</form>
				</div>
				
				
				
				
<form action="/pideya/test/confirmar/<%=p.getId()%>" method="get">
		
		<div  class="panel panel-info">
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
			<div style="width:45%;" id="alerta" class="alert alert-success">
				<%=s%><strong style="float:right;">5 &#8364;</strong>
			</div>
			<%
				}
			%>
			
			<button  type="submit" class="btn btn-default"
												data-inline="true">
												<font color="black">Pagar y finalizar compa</font>
											</button>
											<button type="button" class="btn btn-success" onclick="goBack()">Seguir comprando</button>
											
											</br></br>
		</div>
		
		</form> 
		
		
		
		
			</div>
		</div>



















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


