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
	<h1>SALIDA</h1>
	<p>Nombre: ${estudianteBean.nombre}</p>
	<p>Nota 1: ${estudianteBean.nota1}</p>
	<p>Nota 2: ${estudianteBean.nota2}</p>
	<p>Nota 3: ${estudianteBean.nota3}</p>
	<p>Nota 4: ${estudianteBean.nota4}</p>
	<p>Promedio: ${estudianteBean.promedio}</p>
	<p>Condici�n: ${estudianteBean.condicion}</p>
	<a href="promedio.htm">Retornar</a>
</body>
</html>