<%@page import="Controlador.GestorPersona"%>
<%@page import="Controlador.Gestor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%
    Persona persona = new Persona();
    List<Persona> lista = new ArrayList<Persona>(); 
    GestorPersona gestor = new GestorPersona();
    if((request.getParameter("DNI")!=null)&&
            (request.getParameter("Nombre")!=null)&&
          (request.getParameter("Apellido")!=null)){
      persona.setDNI(Integer.parseInt(request.getParameter("DNI")));
      persona.setNombre(request.getParameter("Nombre"));
      persona.setApellido(request.getParameter("Apellido"));
      gestor.guardar(persona);

  }
%>
<form action="Ejercicio2.jsp">
	<h1>CARGA SATISFACTORIA DE PERSONA</h1>
	<button type="submit">VOLVER AL INICIO</button>
	<br>
	<br>
</form>