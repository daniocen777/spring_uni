<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">LISTA DE EMPLEADOS</h1>

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
				<th>REGIÓN</th>
				<th>PAÍS</th>
				<th>CALLE</th>
				<th>CÓDIGO POSTAL</th>
				<th>CIUDAD</th>
				<th>PROVINCIA</th>
				<th>DEPARTAMENTO</th>
			</tr>
		</thead>
		<tbody>


			<c:forEach items="${lista}" var="r">
				<tr>
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
				</tr>
			</c:forEach>

		</tbody>
	</table>


</body>
</html>