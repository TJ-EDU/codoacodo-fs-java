<%@page import="dao.ProvinciaDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Provincia"%>
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

<title>Crear Localidad</title>
</head>
<body class="bg-light">
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
			<h2>Crear Localidad</h2>
			<p class="lead">Página para crear una localidad.</p>
		</div>

		<div class="container">
			<div class="col-md-12 text-center ">
				<form action="guardarLocalidad.jsp" method="POST">
					<div class="row">
						<div class="col-4"></div>
						<div class="col-4 mb-3">
							<label for="loc">Localidad</label> <input type="text"
								class="form-control" id="loc" name="loc"
								placeholder="ingrese una localidad" value="" required>
							<div class="invalid-feedback">Debe ingresar su localidad.</div>
						</div>


					</div>
					<div class="row">
						<div class="col-4"></div>
						<div class="col-4 mb-3">
							<label>Provincia</label> <select name="nombre"
								class="form-control">
								<%
								ProvinciaDao provinciaDAOx = new ProvinciaDao();
								List<Provincia> listProvinciasx = provinciaDAOx.listarProvincias();

								for (Provincia provincia : listProvinciasx) {
									out.println("<option value='" + provincia.getIdProvincia() + "' >" + provincia.getNombre() + "</option>");

								}
								%>
							</select>
						</div>
					</div>

					<hr class="mb-4">

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<button class="btn btn-primary btn-lg btn-block" type="submit">Ingresar
								la Solicitud</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="./js/form-validation.js"></script>
</body>
</html>