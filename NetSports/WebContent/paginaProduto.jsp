<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produto</title>
</head>
<body>
	<h1>Visualização de Produto</h1>

	<p>NomeProduto</p>
	<p>ImagemProduto</p>
	<p>precoUnitario</p>
	
	<form action="carrinhoComprasServlet" method="Get">
		<button type="submit" class="btn btn-primary">Comprar</button>
		<br> 
		<a href="PaginaPrincipal.jsp" class="btn btn-primary"
			role="button" aria-disabled="true">Continuar comprando</a>
	</form>
</body>
</html>