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
	<h1 align="center">LISTADO</h1>
	<table border="1" align="center">
		<tr>
			<td>Nombre</td>
			<td>Precio</td>
			<td>Cantidad</td>
			<td>Descuento</td>
			<td>Total</td>

		</tr>

		<c:forEach items="${sessionScope.lista}" var="r">
			<tr>
				<td>${r.nombre}</td>
				<td>${r.precio}</td>
				<td>${r.cantidad}</td>
				<td>${r.descuento}</td>
				<td>${r.totalPago}</td>

			</tr>
		</c:forEach>

	</table>
</body>
</html>