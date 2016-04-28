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
	<h1>LISTA DE NOTAS</h1>
	<table border="1">
		<tr>
			<td>Nombre</td>
			<td>Nota 1</td>
			<td>Nota 2</td>
			<td>Nota 3</td>
			<td>Nota 4</td>
			<td>Promedio</td>
			<td>Condición</td>
		</tr>
		
		<c:forEach items="${sessionScope.lista}" var="r">
		<tr>
			<td>${r.nombre}</td>
			<td>${r.nota1}</td>
			<td>${r.nota2}</td>
			<td>${r.nota3}</td>
			<td>${r.nota4}</td>
			<td>${r.promedio}</td>
			<td>${r.condicion}</td>
		</tr>
		</c:forEach>
		
	</table>
</body>
</html>