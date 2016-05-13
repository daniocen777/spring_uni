<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


		<title>Clip-Two - Responsive Admin Template</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: GOOGLE FONTS -->
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<!-- end: GOOGLE FONTS -->
		<!-- start: MAIN CSS -->
		<spring:url value="/resources1/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapCss" />
		<link rel="stylesheet" type="text/css" href="${bootstrapCss}" media="screen" />
		<spring:url value="/resources1/vendor/fontawesome/css/font-awesome.min.css" var="fontawesomemincss" />
		<link rel="stylesheet" type="text/css" href="${fontawesomemincss}" media="screen" />
		<spring:url value="/resources1/vendor/themify-icons/themify-icons.min.css" var="themifyicons" />		
		<link rel="stylesheet" type="text/css" href="${fontawesomemincss}" media="screen" />
		
		<spring:url value="/resources1/vendor/animate.css/animate.min.css" var="animatemin" />
		<link href="${animatemin}" type="text/css" rel="stylesheet" media="screen">
		<spring:url value="/resources1/vendor/perfect-scrollbar/perfect-scrollbar.min.css" var="scrollbarmin" />
		<link href="${scrollbarmin}" rel="stylesheet" media="screen">
		<spring:url value="/resources1/vendor/switchery/switchery.min.css" var="switchery" />
		<link href="${switchery}" rel="stylesheet" media="screen">
		<!-- end: MAIN CSS -->
		<!-- start: CLIP-TWO CSS -->
		<spring:url value="/resources1/css/styles.css" var="stylescss" />
		<link rel="stylesheet" href="${stylescss}">
		<spring:url value="/resources1/css/plugins.css" var="pluginscss" />
		<link rel="stylesheet" href="${pluginscss}">
		<spring:url value="/resources1/css/themes/theme-4.css" var="theme4" />
		<link rel="stylesheet" href="${theme4}" id="skin_color" />
		<!-- end: CLIP-TWO CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
	

</head>
<style>
table { display: block; }
table {
    
   width:auto;
	height:auto;
	overflow: auto;
}

</style>


<body >
<div class="container-fluid container-fullw bg-white">
<div class="row">
									<div class="col-md-12">
										<h1 align="center">LISTA DE EMPLEADOS</h1>
										<hr>
													
										<form role="form" >
											
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
								                        <label for="varchar">Búsqueda:</label>
								                        <input type="text" class="form-control"  placeholder="Ingrese Nombre de Empleado" value="" />
								                    </div>
												</div>
												<br>
												
												<div class="col-md-3">
													<input type="submit" class="btn btn-info" value="Buscar" />
												</div>
												
											 <div class="col-md-3 ">
													<div class="btn-group">
														<a class="btn btn-primary btn-o dropdown-toggle"  href="insertar.htm">
															Nuevo 
														</a>
														
													</div>
												</div>
												<div class="col-md-3 ">
													<div class="btn-group">
														<a class="btn btn-primary btn-o dropdown-toggle"  href="javascript:history.back()">
															Regresar 
														</a>
														
													</div>
												</div>
												
												
											</div>
											<div class="row">
												
				 
											</div>
										</form>									
									</div>
								</div>



	<div class="row">								

 <div id="column-left" class="col-md-12">
	


	<div class="row">
	<div class="col-md-12">
	<table id="central"  class="table table-condensed" align="center">
	
		<thead >
			<tr>
				<th>ID</th>
				<th>NOMBRE</th>
				<th >AP. PATERNO</th>
				<th>AP. MATERNO</th>
				<th>EMAIL</th>
				<th>TELÉFONO</th>
				<th>FECHA DE NACIMIENTO</th>
				<th>SALARIO</th>
				<th>REGIÓN</th>
				<th>PAÍS</th>
				<th>CALLE</th>
				<th>CÓDIGO POSTAL</th>
				<th>CIUDAD</th>
				<th>PROVINCIA</th>
				<th>DEPARTAMENTO</th>
				<th>ACCIONES</th>
			</tr>
		</thead>
		<tbody>


			<c:forEach items="${lista}" var="r">
				<tr>
					<td align="center">${r.idEmpleado}</td>
					<td align="center">${r.nombre}</td>
					<td align="center">${r.apPaterno}</td>
					<td align="center">${r.apMaterno}</td>
					<td align="center">${r.email}</td>
					<td align="center">${r.telefono}</td>
					<td align="center">${r.fechaNac}</td>
					<td align="center">${r.salario}</td>
					<td align="center">${r.nombreRegion}</td>
					<td align="center">${r.nombrePais}</td>
					<td align="center">${r.nombreCalle}</td>
					<td align="center">${r.codigoPostal}</td>
					<td align="center">${r.ciudad}</td>
					<td align="center">${r.provincia}</td>
					<td align="center">${r.nombreDepartamento}</td>
					
					<td><a data-original-title="Ver" href="editContact.htm?id=${empleado.id}" data-toggle="tooltip" data-placement="top" title=""><span class="glyphicon glyphicon-eye-open"></span></a>  <a data-original-title="Eliminar" href="eliminarEmpleado.htm?id=${r.idEmpleado}" data-toggle="tooltip" data-placement="top" title=""><span class="glyphicon glyphicon-trash"></span></a> </td>
					</tr>
			</c:forEach>

		</tbody>
	</table>
	</div>
</div>
	

</div>
</div>
</div>

</body>

<!-- start: MAIN JAVASCRIPTS -->
			<spring:url value="/resources1/vendor/jquery/jquery.min.js" var="jquerymin" />
			<script src="${jquerymin}"></script>
			<spring:url value="/resources1/vendor/bootstrap/js/bootstrap.min.js" var="bootstrapmin" />
			<script src="${bootstrapmin}"></script>
			<spring:url value="/resources1/vendor/modernizr/modernizr.js" var="modernizrjs" />
			<script src="${modernizrjs}"></script>
			<spring:url value="/resources1/vendor/jquery-cookie/jquery.cookie.js" var="cookiejs" />
			<script src="${cookiejs}"></script>
			<spring:url value="/resources1/vendor/perfect-scrollbar/perfect-scrollbar.min.js" var="perfectscroll" />
			<script src="${perfectscroll}"></script>
			<spring:url value="/resources1/vendor/switchery/switchery.min.js" var="switchery" />
			<script src="${switchery}"></script>
			<!-- end: MAIN JAVASCRIPTS -->
			<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
			<spring:url value="/resources1/vendor/Chart.js/Chart.min.js" var="Chartmin" />
			<script src="${Chartmin}"></script>
			<spring:url value="/resources1/vendor/jquery.sparkline/jquery.sparkline.min.js" var="sparklinemin" />
			<script src="${sparklinemin}"></script>
			<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<spring:url value="/resources1/js/main.js" var="main" />
		<script src="${main}"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<spring:url value="/resources1/js/index.js" var="index" />
		<script src="${index}"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
    

</html>