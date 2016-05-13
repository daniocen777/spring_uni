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
		if (s1.value == "AMÉRICA DEL SUR") {
			var optionArray = [ "|", "ARGENTINA|ARGENTINA", "BOLIVIA|BOLIVIA",
					"COLOMBIA|COLOMBIA", "PERÚ|PERÚ" ];
		}

		if (s1.value == "AMÉRICA DEL NORTE") {
			var optionArray = [ "|", "EE.UU|EE.UU", "CANADÁ|CANADÁ",
					"MÉXICO|MÉXICO" ];
		}
		if (s1.value == "ÁFRICA") {
			var optionArray = [ "|", "SENEGAL|SENEGAL" ];
		}
		if (s1.value == "EUROPA") {
			var optionArray = [ "|", "ESPAÑA|ESPAÑA", "PORTUGAL|PORTUGAL" ];
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


</head>
<body>
	<h1>REGISTRO</h1>
	<form action="insertar.htm" method="POST" name="formulario">
		<table border="1" align="center">
			<thead>
				<tr>
					<th>NOMBRE</th>
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
					<td><input type="text" name="nombre" value="" size="20" /></td>
					<td><input type="text" name="apPaterno" value="" size="20" /></td>
					<td><input type="text" name="apMaterno" value="" size="20" /></td>
					<td><input type="text" name="email" value="" size="20" /></td>
					<td><input type="text" name="telefono" value="" size="20" /></td>
					<td><input type="date" name="fechaNac" size="15" /></td>
					<td><input type="text" name="salario" value="" size="20" /></td>
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
							<option value=""></option>
							<option value="AMÉRICA DEL SUR">AMÉRICA DEL SUR</option>
							<option value="AMÉRICA DEL NORTE">AMÉRICA DEL NORTE</option>
							<option value="ÁFRICA">ÁFRICA</option>
							<option value="EUROPA">EUROPA</option>
					</select></td>
					<td><select id="nombrePais" name="nombrePais">

					</select></td>

					<td><input type="text" name="nombreCalle" value="" size="20" /></td>
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
					<td colspan="7" align="center"><input style="height: 50px; vertical-align: bottom;" type="submit"
						value="REGISTRAR" name="registrar" /></td>
				</tr>
			</tbody>
		</table>

	</form>
</body>
</html>
