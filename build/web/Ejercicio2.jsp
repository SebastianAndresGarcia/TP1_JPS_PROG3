<%-- 
    2- Cree una tabla persona con los campos DNI, NOMBRE y DOMICILIO, cree un
formulario de carga con los campos mencionados anteriormente, codifique el código
necesario para almacenar en la tabla los valores cargados en el formulario de jsp. 

--%>

<%@page import="Controlador.GestorPersona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h1>EJERCICIO 2</h1>
	<form action="cargaPersona.jsp">
		<br> Carga de Personas <br>
		<br> Ingrese el DNI<br> <input type="number" name="DNI"
			id="DNI" required="" /><br>
		<br> Nombre<br> <input type="text" name="Nombre" id="Nombre"
			required="" /><br>
		<br> Apellido<br> <input type="text" name="Apellido"
			id="Apellido" required="" /><br>
		<br>
		<button type="submit">ENVIAR</button>
		<br>
		<br>
	</form>
	<h2>EJERCICIO 3</h2>
	<form action="listadoPersonas.jsp">
		<br>

		<button type="submit">VER PERSONAS</button>
	</form>

</body>
</html>
