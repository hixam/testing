<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,com.home.models.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<script type="text/javascript">

//As� como en CSS3, tenemos variantes para distintos navegadores. Tan solo obtenemos la funci�n autom�ticamente
//cuando el navegador encuentre la que exista en su motor de javascript.
navigator.vibrate = navigator.vibrate || navigator.webkitVibrate || navigator.mozVibrate || navigator.msVibrate;

//Ahora preguntamos si realmente existe.
if (navigator.vibrate) {
  alert('�Puedes hacerlo vibrar!');
} else {
	alert('No puedes hacerlo vibrar :');
}
</script>
</body>
</html>