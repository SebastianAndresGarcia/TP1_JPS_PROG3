<%@page import="Controlador.GestorPersona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%
    Persona persona = new Persona();
    List<Persona> lista = new ArrayList<Persona>();
    GestorPersona gestor = new GestorPersona();
    lista = gestor.listar(Persona.class);
%>
<table border="1">
	<tr>
		<td>Documento</td>
		<td>Apellido</td>
		<td>Nombre</td>
	</tr>
	<% for (int i = 0; i < lista.size(); i++) {
    %>
	<tr>
		<td>
			<% out.print(lista.get(i).getDNI()); 
            %>
		</td>
		<td>
			<% out.print(lista.get(i).getApellido());
            %>
		</td>
		<td>
			<% out.print(lista.get(i).getNombre());
            %>
		</td>

	</tr>
	<% }%>
</table>
<form action="Ejercicio2.jsp">

	<br>
	<button type="submit">VOLVER AL INICIO</button>
	<br>
</form>

