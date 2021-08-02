<%@page import="dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Check Login</title>
</head>

<body>
	<%
		String usuario = request.getParameter("inputEmail"); //obtiene el parámetro enviado desde la página login.html, llamado inputEmail
		String contrasenia = request.getParameter("inputPassword");
		
		out.println(usuario);
		out.println(contrasenia);
		
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Boolean usuValido = usuarioDAO.validarUsuarioYPass(usuario, contrasenia);
		
		if(usuValido.booleanValue()) {
			response.sendRedirect("pedido.jsp");
		} else {
			out.println("<p style='color:red'>Usuario o password incorrectos</p>");
		}
	
	%>

</body>
</html>