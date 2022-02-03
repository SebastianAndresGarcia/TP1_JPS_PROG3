<%-- 
 1- Cree una aplicación Web y agregue 2 paginas JSP, en la primera defina un
formulario de carga con dos cajas de carga de texto para el ingreso de los campos
numero de filas y numero de columnas, agregue un boton de tipo submit y envie
los datos a una segunda pagina jsp donde se genere una tabla de n filas X m
columnas, correspondientes a los valores cargados en la pagina anterior, ademas
muestre el valor de cada celda. 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h1>EJERCICIO 1</h1>
	<form action="tabla.jsp">
		<br> Ingrese el numero de filas<br> <input type="text"
			name="filas" id="filas" /><br>
		<br> Ingrese el numero de columnas<br> <input type="text"
			name="columnas" id="columnas" /><br>
		<br>
		<button type="submit">ENVIAR</button>
	</form>
</body>
</html>
