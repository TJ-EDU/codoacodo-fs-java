<%@page import="dao.ProvinciaDao"%>
<%@page import="model.Provincia"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guardar Provincia</title>
</head>
	<%
	String nombreProvincia = request.getParameter("nombre");
	
	Provincia prov = new Provincia(nombreProvincia);
	
	ProvinciaDao provinciaDAO = new ProvinciaDao();
	
	Boolean okGuardado = provinciaDAO.guardarProvincia(prov);
	
	   if (okGuardado) {
	        out.println("La provincia se agregó correctamente <br>");
	    } else {
	        out.println("Error en agregar provincia<br>");
	    }	
	%>
</body>
</html>