<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="pt_BR" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Gestão de Produto</title>
</head>
<body><%
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

		<h1>Gestão de Produto</h1>
		<br>
		<table class="table-sm table-striped">
			<thead class="thead-dark" align="left">
				<tr>
					<th>Id</th>
					<th>Imagem</th>
					<th>Código</th>
					<th>Nome</th>
					<th>Tipo</th>
					<th>Descrição</th>
					<th>Marca</th>
					<th>Gênero</th>
					<th>Unidade</th>
					<th>Preço Unitário</th>
					<th>Data Cadastramento</th>
					<th>Gerenciar</th>
					<th>Excluir</th>
				</tr>
			</thead>
			<c:forEach items="${lista}" var="produto">
				<tr align="left">
					<td>${produto.idProduto}</td>
					<td><img src="${produto.imagemProduto}" width="50px"
						class="img-thumbnail"></td>
					<td>${produto.codigoProduto}</td>
					<td>${produto.nomeProduto}</td>
					<td>${produto.tipoProduto}</td>
					<td>${produto.descricao}</td>
					<td>${produto.marca}</td>
					<td>${produto.genero}</td>
					<td>${produto.unidade}</td>
					<td>R$ <fmt:formatNumber type="number"
							value="${produto.precoUnitario}" pattern="#.##"></fmt:formatNumber></td>

					<fmt:parseDate var="dataDoBanco"
						value="${produto.dataCadastramento }" pattern="yyyy-MM-dd" />
					<fmt:formatDate var="dataFormatada" value="${dataDoBanco }"
						pattern="dd/MM/yyyy" type="date" />
					<td>${dataFormatada}</td>
					<td><a
						href="selecionarProdutoPorId?idProduto=${produto.idProduto}">Alterar</a>
					</td>
					<td><a href="remover?idProduto=${produto.idProduto}">Remover</a>
					</td>
				</tr>

			</c:forEach>
		</table>
		<div align="right">
			<a href="cadastroProduto.jsp" class="btn btn-primary" role="button"
				aria-disabled="true">Voltar ao Cadastro de Produto</a>
		</div>

	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>