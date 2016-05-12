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
	<h1>LISTA</h1>

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
					<td>${r.nombreRegion}</td>
					<td>${r.nombrePais}</td>
					<td>${r.nombreCalle}</td>
					<td>${r.codigoPostal}</td>
					<td>${r.ciudad}</td>
					<td>${r.provincia}</td>
					<td>${r.nombreDepartamento}</td>
					<td>${r.nombre}</td>
					<td>${r.apPaterno}</td>
					<td>${r.apMaterno}</td>
					<td>${r.email}</td>
					<td>${r.telefono}</td>
					<td>${r.fechaNac}</td>
					<td>${r.salario}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>


</body>
</html>