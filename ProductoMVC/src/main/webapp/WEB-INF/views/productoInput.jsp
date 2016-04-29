<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Ingreso de datos</h1>
	<form action="producto.htm" method="POST">
		<table border="1" align="center">

			<tbody>
				<tr>
					<td>Nombre del producto</td>
					<td><input type="text" name="nombre" value="" size="20" /></td>
				</tr>
				<tr>
					<td>Precio del producto</td>
					<td><input type="text" name="precio" value="" size="20" /></td>
				</tr>
				<tr>
					<td>Cantidad del producto</td>
					<td><input type="text" name="cantidad" value="" size="20" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Procesar" /></td>

				</tr>
			</tbody>
		</table>

	</form>
</body>
</html>