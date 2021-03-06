<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/estilos/estilos.css"
	type="text/css" />


<script type="text/javascript">
	function listaPais(s1, s2) {
		var s1 = document.getElementById(s1);
		var s2 = document.getElementById(s2);
		s2.innerHTML = "";
		if (s1.value == "AM�RICA DEL SUR") {
			var optionArray = [ "|", "ARGENTINA|ARGENTINA", "BOLIVIA|BOLIVIA",
					"COLOMBIA|COLOMBIA", "PER�|PER�" ];
		}

		if (s1.value == "AM�RICA DEL NORTE") {
			var optionArray = [ "|", "EE.UU|EE.UU", "CANAD�|CANAD�",
					"M�XICO|M�XICO" ];
		}
		if (s1.value == "�FRICA") {
			var optionArray = [ "|", "SENEGAL|SENEGAL", "SUD�N|SUD�N" ];
		}
		if (s1.value == "EUROPA") {
			var optionArray = [ "|", "ESPA�A|ESPA�A", "PORTUGAL|PORTUGAL",
					"INGLATERRA|INGLATERRA" ];
		}
		if (s1.value == "OCEAN�A") {
			var optionArray = [ "|", "AUSTRALIA|AUSTRALIA" ];
		}
		if (s1.value == "AM�RICA CENTRAL") {
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
			document.getElementById('dialogboxhead').innerHTML = "MENSAJE DE CONFIRMACI�N";
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
<body>

	<div id="dialogoverlay"></div>
	<div id="dialogbox">
		<div>
			<div id="dialogboxhead"></div>
			<div id="dialogboxbody"></div>
			<div id="dialogboxfoot"></div>
		</div>
	</div>

	<h1>REGISTRO</h1>
	<form action="insertar.htm" method="POST" name="formulario">
		<table border="1" align="center">
			<thead>
				<tr>
					<th>NOMBRE</th>
					<th>AP. PATERNO</th>
					<th>AP. MATERNO</th>
					<th>EMAIL</th>
					<th>TEL�FONO</th>
					<th>FECHA DE NACIMIENTO</th>
					<th>SALARIO</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="nombre" value="" size="20" /></td>
					<td><input type="text" name="apPaterno" value="" size="20" /></td>
					<td><input type="text" name="apMaterno" value="" size="20" /></td>
					<td><input type="text" name="email" value="" size="25" /></td>
					<td><input type="text" name="telefono" value="" size="20" /></td>
					<td><input type="date" name="fechaNac" size="15"
						min="1960-01-01" max="1994-12-31" /></td>
					<td><input type="text" name="salario" value="" size="20" /></td>
				</tr>
				<tr>
					<th>REGI�N</th>
					<th>PA�S</th>
					<th>CALLE</th>
					<th>C�DIGO POSTAL</th>
					<th>CIUDAD</th>
					<th>PROVINCIA</th>
					<th>DEPARTAMENTO</th>
				</tr>
				<tr>
					<td><select id="nombreRegion" name="nombreRegion"
						onchange="listaPais('nombreRegion', 'nombrePais')">
							<option value=""></option>
							<option value="AM�RICA DEL SUR">AM�RICA DEL SUR</option>
							<option value="AM�RICA DEL NORTE">AM�RICA DEL NORTE</option>
							<option value="AM�RICA CENTRAL">AM�RICA CENTRAL</option>
							<option value="�FRICA">�FRICA</option>
							<option value="EUROPA">EUROPA</option>
							<option value="OCEAN�A">OCEAN�A</option>
					</select></td>
					<td><select id="nombrePais" name="nombrePais">

					</select></td>

					<td><input type="text" name="nombreCalle" value="" size="25" /></td>
					<td><input type="text" name="codigoPostal" value="" size="20" /></td>
					<td><input type="text" name="ciudad" value="" size="20" /></td>
					<td><input type="text" name="provincia" value="" size="23" /></td>
					<td><select id="nombreDepartamento" name="nombreDepartamento">
							<option>SISTEMAS</option>
							<option>RR.HH</option>
							<option>MARKETING</option>
							<option>CONTABILIDAD</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="7" align="center"><input
						style="height: 50px; vertical-align: bottom;" type="submit"
						value="REGISTRAR" name="registrar" onclick="Alert.render('EMPLEADO GRABADO CON �XITO.')"/></td>
				</tr>
			</tbody>
		</table>

	</form>
</body>
</html>
