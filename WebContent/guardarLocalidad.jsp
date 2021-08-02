<%@page import="dao.LocalidadDAO"%>
<%@page import="model.Localidad"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guardar Localidad</title>
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String localidad = request.getParameter("loc");
	out.println("<h1>" + nombre + " </h1>");
	out.println("<h1>" + localidad + " </h1>");
	
	Localidad unaLocalidad = new Localidad();
	unaLocalidad.setNombreLocalidad(localidad);
	unaLocalidad.setIdProvLocalidad(Integer.parseInt(nombre));
	
	LocalidadDAO localidadDAO = new LocalidadDAO();
	
	Boolean okGuardado = localidadDAO.guardarLocalidad(unaLocalidad);

	   if (okGuardado) {
	        out.println("La localidad se agregó correctamente <br>");
	    } else {
	        out.println("Error en agregar provincia<br>");
	    }	
	%>
</body>
</html>