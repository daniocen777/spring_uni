<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
	function listaPais(s1, s2) {
		var s1 = document.getElementById(s1);
		var s2 = document.getElementById(s2);
		s2.innerHTML = "";
		if (s1.value == "AMÉRICA DEL SUR") {
			var optionArray = [ "|", "ARGENTINA|ARGENTINA", "BOLIVIA|BOLIVIA",
					"COLOMBIA|COLOMBIA", "PERÚ|PERÚ" ];
		}

		if (s1.value == "AMÉRICA DEL NORTE") {
			var optionArray = [ "|", "EE.UU|EE.UU", "CANADÁ|CANADÁ",
					"MÉXICO|MÉXICO" ];
		}
		if (s1.value == "ÁFRICA") {
			var optionArray = [ "|", "SENEGAL|SENEGAL", "SUDÁN|SUDÁN" ];
		}
		if (s1.value == "EUROPA") {
			var optionArray = [ "|", "ESPAÑA|ESPAÑA", "PORTUGAL|PORTUGAL",
					"INGLATERRA|INGLATERRA" ];
		}
		if (s1.value == "OCEANÍA") {
			var optionArray = [ "|", "AUSTRALIA|AUSTRALIA" ];
		}
		if (s1.value == "AMÉRICA CENTRAL") {
			var optionArray = [ "|", "PUERTO RICO|PUERTO RICO" ];
		}
		for ( var option in optionArray) {
			var pair = optionArray[option].split("|");
			var newOption = document.createElement("option");
			newOption.value = pair[0];
			newOption.innerHTML = pair[1];
			s2.options.add(newOption);
		}
	}
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Clip-Two - Responsive Admin Template</title>
<!-- start: META -->
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: GOOGLE FONTS -->
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
	rel="stylesheet" type="text/css" />
<!-- end: GOOGLE FONTS -->
<!-- start: MAIN CSS -->
<spring:url value="/resources1/vendor/bootstrap/css/bootstrap.min.css"
	var="bootstrapCss" />
<link rel="stylesheet" type="text/css" href="${bootstrapCss}"
	media="screen" />
<spring:url
	value="/resources1/vendor/fontawesome/css/font-awesome.min.css"
	var="fontawesomemincss" />
<link rel="stylesheet" type="text/css" href="${fontawesomemincss}"
	media="screen" />
<spring:url
	value="/resources1/vendor/themify-icons/themify-icons.min.css"
	var="themifyicons" />
<link rel="stylesheet" type="text/css" href="${fontawesomemincss}"
	media="screen" />

<spring:url value="/resources1/vendor/animate.css/animate.min.css"
	var="animatemin" />
<link href="${animatemin}" type="text/css" rel="stylesheet"
	media="screen">
<spring:url
	value="/resources1/vendor/perfect-scrollbar/perfect-scrollbar.min.css"
	var="scrollbarmin" />
<link href="${scrollbarmin}" rel="stylesheet" media="screen">
<spring:url value="/resources1/vendor/switchery/switchery.min.css"
	var="switchery" />
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


<style>
#dialogoverlay {
	display: none;
	opacity: .8;
	position: fixed;
	top: 0px;
	left: 0px;
	background: #FFF;
	width: 100%;
	z-index: 10;
}

#dialogbox {
	display: none;
	position: fixed;
	background: #000;
	border-radius: 7px;
	width: 550px;
	z-index: 10;
}

#dialogbox>div {
	background: #FFF;
	margin: 8px;
}

#dialogbox>div>#dialogboxhead {
	background: #666;
	font-size: 19px;
	padding: 10px;
	color: #CCC;
}

#dialogbox>div>#dialogboxbody {
	background: #333;
	padding: 20px;
	color: #FFF;
}

#dialogbox>div>#dialogboxfoot {
	background: #666;
	padding: 10px;
	text-align: right;
}
</style>
<script>
	function CustomAlert() {
		this.render = function(dialog) {
			var winW = window.innerWidth;
			var winH = window.innerHeight;
			var dialogoverlay = document.getElementById('dialogoverlay');
			var dialogbox = document.getElementById('dialogbox');
			dialogoverlay.style.display = "block";
			dialogoverlay.style.height = winH + "px";
			dialogbox.style.left = (winW / 2) - (550 * .5) + "px";
			dialogbox.style.top = "100px";
			dialogbox.style.display = "block";
			document.getElementById('dialogboxhead').innerHTML = "MENSAJE DE CONFIRMACIÓN";
			document.getElementById('dialogboxbody').innerHTML = dialog;
			document.getElementById('dialogboxfoot').innerHTML = '<button onclick="Alert.ok()">OK</button>';
		}
		this.ok = function() {
			document.getElementById('dialogbox').style.display = "none";
			document.getElementById('dialogoverlay').style.display = "none";
		}
	}
	var Alert = new CustomAlert();
</script>

</head>
<style>
table {
	display: block;
}

table {
	width: auto;
	height: auto;
	overflow: auto;
}
</style>


<body>

	<div id="dialogoverlay"></div>
	<div id="dialogbox">
		<div>
			<div id="dialogboxhead"></div>
			<div id="dialogboxbody"></div>
			<div id="dialogboxfoot"></div>
		</div>
	</div>

	<div class="container-fluid container-fullw bg-white">
		<div class="row">
			<div class="col-md-12">
				<h1 align="center">ACTUALIZAR EMPLEADO</h1>
				<hr>


				<form role="form">

					<div class="row">
						<div class="col-md-3"></div>
						<br>
						<div class="col-md-3 ">
							<div class="btn-group">
								<a class="btn btn-primary btn-o dropdown-toggle"
									href="javascript:history.back()"> Regresar </a>

							</div>
						</div>


					</div>
					<div class="row"></div>
				</form>
			</div>
		</div>



		<div class="row">

			 
			<div id="column-left" class="col-md-12">



				<div class="row">
					<div class="col-md-12">
						<form action="verEmpleado.htm" method="post">
							<table id="central" class="table table-condensed" align="center">

								<thead>
									<tr>
									<input type="hidden" name="codigo" value="${bean.idEmpleado}">
										<th align="center">NOMBRE</th>
										<th>AP. PATERNO</th>
										<th>AP. MATERNO</th>
										<th>EMAIL</th>
										<th>TELÉFONO</th>
										<th>FECHA DE NACIMIENTO</th>
										<th>SALARIO</th>
									</tr>

								</thead>
								<tbody>
									<tr>

										<td><input type="text" name="nombre"
											value="${bean.nombre}" size="15" /></td>
										<td><input type="text" name="apPaterno"
											value="${bean.apPaterno}" size="15" /></td>
										<td><input type="text" name="apMaterno"
											value="${bean.apMaterno}" size="15" /></td>
										<td><input type="text" name="email" value="${bean.email}"
											size="25" /></td>
										<td><input type="text" name="telefono"
											value="${bean.telefono}" size="15" /></td>
										<td><input type="date" name="fechaNac" size="15"
											min="1960-01-01" max="1994-12-31" value="${bean.fechaNac}" /></td>
										<td><input type="text" name="salario"
											value="${bean.salario}" size="15" /></td>

									</tr>
									<tr>
										<th>REGIÓN</th>
										<th>PAÍS</th>
										<th>CALLE</th>
										<th>CÓDIGO POSTAL</th>
										<th>CIUDAD</th>
										<th>PROVINCIA</th>
										<th>DEPARTAMENTO</th>
									</tr>

									<tr>

										<td><select id="nombreRegion" name="nombreRegion"
											onchange="listaPais('nombreRegion', 'nombrePais')">
												<option value="${bean.nombreRegion}">${bean.nombreRegion}</option>

												<option value="AMÉRICA DEL SUR">AMÉRICA DEL SUR</option>
												<option value="AMÉRICA DEL NORTE">AMÉRICA DEL NORTE</option>
												<option value="AMÉRICA CENTRAL">AMÉRICA CENTRAL</option>
												<option value="ÁFRICA">ÁFRICA</option>
												<option value="EUROPA">EUROPA</option>
												<option value="OCEANÍA">OCEANÍA</option>
										</select></td>

										<td><select id="nombrePais" name="nombrePais">
												<option value="${bean.nombrePais}">${bean.nombrePais}</option>
										</select></td>

										<td><input type="text" name="nombreCalle"
											value="${bean.nombreCalle}" size="25" /></td>

										<td><input type="text" name="codigoPostal"
											value="${bean.codigoPostal}" size="15" /></td>

										<td><input type="text" name="ciudad"
											value="${bean.ciudad}" size="15" /></td>

										<td><input type="text" name="provincia"
											value="${bean.provincia}" size="15" /></td>


										<td><select id="nombreDepartamento"
											name="nombreDepartamento">
												<option value="${bean.nombreDepartamento}">${bean.nombreDepartamento}</option>
												<option value="SISTEMAS">SISTEMAS</option>
												<option value="RR.HH">RR.HH</option>
												<option value="MARKETING">MARKETING</option>
												<option value="CONTABILIDAD">CONTABILIDAD</option>
										</select></td>
									</tr>
									<tr>
										<td colspan="7" align="center"><input
											style="height: 50px; vertical-align: bottom;" type="submit"
											value="ACTUALIZAR" name="actualizar"
											onclick="Alert.render('DATOS MODIFICADOS.')" /></td>
									</tr>

								</tbody>
							</table>
						</form>
					</div>
				</div>


			</div>
		</div>
	</div>

</body>

<!-- start: MAIN JAVASCRIPTS -->
<spring:url value="/resources1/vendor/jquery/jquery.min.js"
	var="jquerymin" />
<script src="${jquerymin}"></script>
<spring:url value="/resources1/vendor/bootstrap/js/bootstrap.min.js"
	var="bootstrapmin" />
<script src="${bootstrapmin}"></script>
<spring:url value="/resources1/vendor/modernizr/modernizr.js"
	var="modernizrjs" />
<script src="${modernizrjs}"></script>
<spring:url value="/resources1/vendor/jquery-cookie/jquery.cookie.js"
	var="cookiejs" />
<script src="${cookiejs}"></script>
<spring:url
	value="/resources1/vendor/perfect-scrollbar/perfect-scrollbar.min.js"
	var="perfectscroll" />
<script src="${perfectscroll}"></script>
<spring:url value="/resources1/vendor/switchery/switchery.min.js"
	var="switchery" />
<script src="${switchery}"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<spring:url value="/resources1/vendor/Chart.js/Chart.min.js"
	var="Chartmin" />
<script src="${Chartmin}"></script>
<spring:url
	value="/resources1/vendor/jquery.sparkline/jquery.sparkline.min.js"
	var="sparklinemin" />
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