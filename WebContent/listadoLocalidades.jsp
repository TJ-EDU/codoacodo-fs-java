<%@page import="java.util.List"%>
<%@page import="model.Localidad"%>
<%@page import="dao.LocalidadDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- Bootstrap CSS -->
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<link href="css/estilo.css" rel="stylesheet" type="text/css">
<title>Listado de Localidades</title>
</head>
<body class="text-center bg-light">
	<div class="container">

		<header>
			<nav>
				<div id="header">
					<ul class="nav">
						<li><a href="">Inicio</a></li>
						<li><a href="">Servicios</a>
							<ul>
								<li><a href="">Venta</a></li>
								<li><a href="">Colocación</a></li>
								<li><a href="">Reparación</a></li>
								<li><a href="crearProvincia.jsp">Provincia</a></li>
								<li><a href="listadoProvincias.jsp">Listado Provincia</a></li>
								<li><a href="crearLocalidad.jsp">Localidad</a></li>
								<li><a href="listadoLocalidades.jsp">Listado
										Localidades</a></li>
								<li><a href="">Pedidos</a>
									<ul>
										<li><a href="login.html">Ingresar</a></li>
										<li><a href="crearUsuario.jsp">Crear Usuario</a></li>
										<li><a href="listadoPedidos.jsp">Listado</a></li>
										<li><a href="listadoPedidosEC.jsp">Listado en Clase </a></li>
									</ul></li>
							</ul></li>
						<li><a href="">Acerca de</a>
							<ul>
								<li><a href="">Nosotros</a></li>
								<li><a href="">Nuestra Misión</a></li>
								<li><a href="">Historia</a></li>
							</ul></li>
						<li><a href="">Contacto</a></li>
					</ul>
				</div>
			</nav>
		</header>

		<div class="py-4 text-center">
			<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
				alt="Logo caba" width="72" height="72">
			<h2>Localidades</h2>
			<p class="lead">Listado de Localidades</p>
		</div>

		<table class="table table-hover table-sm">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#ID</th>
					<th scope="col">Nombre</th>
					<th scope="col">#ID Provincia</th>
				</tr>
			</thead>
			<tbody>
				<%
				LocalidadDAO localidaDAO = new LocalidadDAO();

				List<Localidad> listLocalidades = localidaDAO.listarLocalidades();

				for (int i = 0; i < listLocalidades.size(); i++) {
					out.println("<tr>");
					out.println("<td>" + listLocalidades.get(i).getIdlocalidad() + "</td>");
					out.println("<td>" + listLocalidades.get(i).getNombreLocalidad() + "</td>");
					out.println("<td>" + listLocalidades.get(i).getIdlocalidad() + "</td>");
					out.println("</tr>");
				}
				%>



			</tbody>
		</table>


	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>