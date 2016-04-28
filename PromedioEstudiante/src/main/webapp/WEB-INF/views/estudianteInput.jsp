<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>INGRESO DE DATOS</h1>
	<form action="promedio2.htm" method="POST">
		<table border="1">

			<tbody>
				<tr>
					<td>Nombre:</td>
					<td><input type="text" name="nombre" size="20" /></td>
				</tr>
				<tr>
					<td>Nota 1:</td>
					<td><input type="text" name="nota1" size="20" /></td>
				</tr>
				<tr>
					<td>Nota 2:</td>
					<td><input type="text" name="nota2" size="20" /></td>
				</tr>
				<tr>
					<td>Nota 3:</td>
					<td><input type="text" name="nota3" size="20" /></td>
				</tr>
				<tr>
					<td>Nota 4:</td>
					<td><input type="text" name="nota4" size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Procesar" /></td>

				</tr>
			</tbody>
		</table>

	</form>
</body>
</html>