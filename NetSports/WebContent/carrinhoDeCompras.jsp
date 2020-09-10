<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.javasports.Produto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrinho de Compras</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<%
	if (request.getSession().getAttribute("User") != null) {
	%>
	<%@ include file="header_logged.jsp"%>
	<%
		} else {
	%>
	<%@ include file="header.jsp"%>
	<%
		}
	%>
	<div class="container">
		<h2>Carrinho de Compras</h2>


		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Código</th>
					<th>Nome</th>
					<th>Preço Unitário</th>
					<th>Excluir</th>
				</tr>
			</thead>

			<c:forEach items="${listaCompras}" var="produtoEscolhido">
				<tr>

					<td>${produtoEscolhido.codigoProduto}</td>
					<td>${produtoEscolhido.nomeProduto}</td>
					<td>R$ <fmt:formatNumber type="number"
							value="${produtoEscolhido.precoUnitario}" pattern="#.##"></fmt:formatNumber>
					</td>
					<th><a
						href="carrinhoComprasServlet?remover=${produtoEscolhido.idProduto}">Remover</a></th>
				</tr>
				<c:set var="valorDeCompra" scope="session"
					value="${produtoEscolhido.precoUnitario}"></c:set>
			</c:forEach>

		</table>

		<hr>
		<tr>
			<div class="alert alert-primary" role="alert" align="right">
				<th><p class="font-weight-bold" align="right">
						<u>Valor Total R$ <fmt:formatNumber type="number"
								value="${valorTotal}" pattern="#.##"></fmt:formatNumber></u>
					</p></th>

			</div>
		<tr>
			<br>
			<div align="right">

				<form action="FinalizaCompraServlet" method="Post">
					<a href="PaginaPrincipal" class="btn btn-primary" role="button"
						aria-disabled="true">Continuar comprando</a>
					<button type="submit" class="btn btn-primary">Finalizar
						Compras</button>
					<input type="hidden" name="valorTotal" value="${valorTotal}">
				</form>

				<br>
			</div>
		</tr>
	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>