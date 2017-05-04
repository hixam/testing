
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	session="true" pageEncoding="ISO-8859-1"
	import="com.home.models.*, java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" -->

<html>
<head>
<style>
#alertAudio {
	display: none;
}

#body {
	background-color: #666363;
}

td,tr {
    color: white;
}
</style>
<script src="https://js.pusher.com/4.0/pusher.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<c:url value="/resources/js/push.min.js" />"></script>
<script src="<c:url value="/resources/audiojs/audio.min.js" />"></script>
<script src="<c:url value="/resources/howler.js" />"></script>

<script type="text/javascript" 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" 
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body id="body">



 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a small modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>





	<div class="container">
  </br></br>
  <div class="jumbotron">
   <center> <h1>Tabla pedidos</h1></center>      
        
</div>		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Restaurante</th>
						<th>Mesa</th>
						<th>Pedido</th>
						<th>Estado</th>
						<th>Accion</th>
					</tr>
				</thead>
				<tbody id="tabla">
					<%
						for (Pedido p : (List<Pedido>) request.getAttribute("pList")) {
					%>
					<tr>
						<td><%=p.getId()%></td>
						<td><%=p.getRestaurante()%></td>
						<td><%=p.getMesa()%></td>
						<td>
							<%
								for (String ped : p.getPedido()) {
							%> <%=ped + ","%> <%
 	}
 %>
						</td>
						<td><%if(p.getStatus().equals("Confirmado")){ %>
						<span class="glyphicons glyphicon glyphicon-ok"></span>
						<%} %> <%= p.getStatus() != null ? p.getStatus() : "Sin estado" %></td>
						<td> 
						<a type="submit" <%if(p.getStatus().equals("Confirmado")) {%> ""<% }else{ %> href= "/pideya/test/confirmarPedido/<%=p.getRestaurante() != null ? p.getRestaurante() : "nada" %>/<%=p.getId() != null ? p.getId() : "nada" %><%} %>" <%=p.getStatus() != null && p.getStatus().equals("Confirmado") ? "DISABLED" : "" %> class="btn btn-success">Confirmar</a>

						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
<head>
<title>Pusher Test</title>
<script src="https://js.pusher.com/4.0/pusher.min.js"></script>
<script>
  
    
    
    

//  var i =1;
//  function myFunction() {
//	    alert("Page is loaded");
	
//// 	audiojs.events.ready(function() {
//// 	    var as = audiojs.createAll();
//// 	   var x = document.getElementById("alertAudio");
//// 	   x.play();
//// 	  });
//// 		var re = 0;
//// 		if(i > 0) 
//// 			re=1 ;
//// 		else
//// 			re=0;
 <%-- 		 <%String url = "https://www.youtube.com/embed/p_R0vEaw0bE?rel=0&autoplay=";%> <%String url2 = "&output=embed";%> --%>
 <%-- 		  	var URLOK = "<%=url%>"+re+"<%=url2%>"; --%> 
		  	
//// 		  	 $('#if').attr('src',URLOK);
		  	 
//// 	var vid=document.getElementById('if');
//// 	vid.addEventListener("loadstart", showVideo, false);
//// 	function showVideo(e) {
//// 	  vid.play();
//// 	}
//  }
    
    
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var i =0;
    var pusher = new Pusher('25a63b5bdeb97ea6104e', {
      cluster: 'eu',
      encrypted: true
    });

    var channel = pusher.subscribe('my-channel');
    channel.bind('my-event', function(data) {
    	var a= data.message;
    	i++;
    	
//     	//vibrar movil
//     	navigator.vibrate = navigator.vibrate || navigator.webkitVibrate || navigator.mozVibrate || navigator.msVibrate;
//     	if (navigator.vibrate) {
//     		  alert('�Puedes hacerlo vibrar!');
//     		  window.navigator.vibrate(1000);
//     		} else {
//     			alert('No puedes hacerlo vibrar :');
//     		}
    	
    	
//     	var aud = new Audio();
//     	aud.src = "<c:url value="/resources/alert.mp3" />";
    	     	 
//     	//Now lets play the music
//     	aud.play();
    	var sound = new Howl({
   src: ["<c:url value="/resources/alert.mp3" />"] //  "http://soundbible.com/mp3/sms-alert-5-daniel_simon.mp3"
		});
    	Howler.mobileAutoEnable = true;
    	//work on PC only
//     	var audio = new Audio('<c:url value="/resources/alert.mp3" />');
//     	audio.play();
    	
    	audiojs.events.ready(function() {
    	    var as = audiojs.createAll();
    	   // var x = document.getElementById("alertAudio");
    	  //  x.autoplay = true;
    	});
			sound.play();
    	
    	
    	
    	//work on PC only
//     	var audio = new Audio('<c:url value="/resources/alert.mp3" />');
//     	audio.play();
    	
//     	audiojs.events.ready(function() {
//     	    var as = audiojs.createAll();
//     	   var x = document.getElementById("alertAudio");
//     	   x.autoplay = true;
//     	  });
    	
//     	var audio = document.getElementById('denied');
//     	var button = document.getElementById('play-button');
//     	button.addEventListener('click',function(){
//     	    audio.play();
//     	});
    	
    	alert("Nuevo pedido de la "+ a.mesa);
    	

    	
    	
    	
//     	Push.create("Hello world!", {
//     	    body: "How's it hangin'?",
//     	    icon: 'icon.png',
//     	    timeout: 4000,
//     	    onClick: function () {
//     	        window.focus();
//     	        this.close();
//     	    }
//     	});
    	
//     	$('#play-button').click(function(){ audio.play(); });
//     $('#alertAudio').click(function(){ audio.play(); });

		$('#tabla').append("<tr><td>"+a.id+"</td><td>"+a.restaurante+"</td><td>"+a.mesa+"</td><td>"+a.pedido+"</td><td>"+a.status+"</td>"+ "<td><a type='button' href='/pideya/test/confirmarPedido/"+a.restaurante +"/"+a.id+ "' class='btn btn-success'>Confirmar</a></td></tr>");
		var re = 0;
		if(i > 0) 
			re=1 ;
		else
			re=0;
		 <%String url = "https://www.youtube.com/embed/p_R0vEaw0bE?rel=0&autoplay=";%> <%String url2 = "&output=embed";%>
		  	var URLOK = "<%=url%>"+re+"<%=url2%>";
		  	
		  	 $('#if').attr('src',URLOK);  
		  	var vid=document.getElementById('if');
	    	vid.addEventListener("loadstart", showVideo, false);
	    	function showVideo(e) {
	    	  vid.play();
	    	}
    	  
    
    	
//     	var audio = document.getElementById('denied');
//     	var button = document.getElementById('play-button');
//     	button.addEventListener('click',function(){
//     	    audio.play();
//     	});
    	
    	alert("Nuevo pedido de la "+ a.mesa);
    	
    });
    
    	
//     	Push.create("Hello world!", {
//     	    body: "How's it hangin'?",
//     	    icon: 'icon.png',
//     	    timeout: 4000,
//     	    onClick: function () {
//     	        window.focus();
//     	        this.close();
//     	    }
//     	});
    	
//     	$('#play-button').click(function(){ audio.play(); });
//     $('#alertAudio').click(function(){ audio.play(); });
 </script>
</head>
<!--  <audio id="denied" autobuffer controls autoplay> -->
<%--     <source src="<c:url value="/resources/alert.mp3" />" /> --%>
<!-- </audio> -->
<!-- <a href="#" id="play-button"></a> -->

<%-- <audio id="alertAudio" src="<c:url value="/resources/alert.mp3" />" autobuffer controls autoplay /> --%>

<iframe id="if" hidden width="640" height="360" src="" frameborder="0"
	allowfullscreen></iframe>



<!--  <audio id="denied" autobuffer controls autoplay> -->
<%--     <source src="<c:url value="/resources/alert.mp3" />" /> --%>
<!-- </audio> -->
<!-- <a href="#" id="play-button"></a> -->

<audio id="alertAudio" src="<c:url value="/resources/alert.mp3" />"
	autobuffer controls />

<iframe id="if" hidden width="640" height="360" src="" frameborder="0"
	allowfullscreen></iframe>


</body>
</html>