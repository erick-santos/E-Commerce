<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<title>Cadastro de Produto</title>
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
	<%
		String msg = (String) request.getAttribute("MENSAGEM");
	%>

	<div class="container">


		<h2>Cadastro de produto</h2>
		<br>
		<%
			if (msg != null) {
		%>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong><%=msg%></strong>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<%
			}
		%>


		<form action="./cadastroProduto" method="Post">
			<input type="hidden" value="${produto.idProduto }" name="idProduto">


			<div class="form-row">

				<div class="form-group col-md-1">
					<label>ID</label> <input type="text" class="form-control"
						name="idProduto" value="${produto.idProduto }">
				</div>

				<div class="form-group col-md-2">
					<label>Código</label> <input type="text" class="form-control"
						name="codigo" value="${produto.codigoProduto }" required>
				</div>

				<!--  radio button tipoProduto -->
				<div class="form-group col-md-2">
					<label>Tipo</label>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="tipoProduto"
							value="Roupas" ${produto.tipoProduto != 'Roupas' ? '':'checked'}>
						<label class="form-check-label">Roupas</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="tipoProduto"
							value="Calcados"
							${produto.tipoProduto != 'Calcados' ? '':'checked'}> <label
							class="form-check-label">Calçados</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="tipoProduto"
							value="Acessorios"
							${produto.tipoProduto != 'Acessorios' ? '':'checked'}> <label
							class="form-check-label">Acessorios</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="tipoProduto"
							value="Suplementos"
							${produto.tipoProduto != 'Suplementos' ? '':'checked'}> <label
							class="form-check-label">Suplementos</label>
					</div>
				</div>
				<!--  Fim do radio button tipoProduto -->



				<div class="form-group col-md-7">
					<label>Nome do Produto</label> <input type="text"
						name="nomeDoProduto" class="form-control"
						value="${produto.nomeProduto }" required>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-3">
					<label>Marca</label> <input type="text" class="form-control"
						name="marca" value="${produto.marca }">
				</div>
				<!--
				<div class="form-group col-md-3">
					<label>Gênero</label> <select class="form-control" name="genero"
						value="${produto.genero }">
						<option>Feminino</option>
						<option>Masculino</option>
					</select>
				</div>
  
				<div class="form-group col-md-3">
					<label>Unidade</label> <select class="form-control" name="unidade"
						value="${produto.unidade }">
						<option>Unidade</option>
						<option>Par</option>
					</select>
				</div>
-->

				<!--  radio button Gênero -->
				<div class="form-group col-md-3">
					<label>Gênero</label>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="genero"
							value="Feminino" ${produto.genero != 'Feminino' ? '':'checked'}>
						<label class="form-check-label">Feminino</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="genero"
							value="Masculino" ${produto.genero != 'Masculino' ? '':'checked'}>
						<label class="form-check-label">Masculino</label>
					</div>

				</div>
				<!-- Fim de radio button Gênero -->

				<!--  radio button unidade -->
				<div class="form-group col-md-3">
					<label>Unidade</label>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="unidade"
							value="Unidade" ${produto.unidade != 'Unidade' ? '':'checked'}>
						<label class="form-check-label">Unitário</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="unidade"
							value="Par" ${produto.unidade != 'Par' ? '':'checked'}> <label
							class="form-check-label">Par</label>
					</div>

				</div>
				<!-- Fim de radio button unidade -->

				<!--  precoUnitario -->
				<div class="form-group col-md-3">
					<label>Preço Unitário</label> <input type="text"
						class="form-control" name="precoUnitario" placeholder="R$ 0,00"
						value="${produto.precoUnitario }" required>
				</div>
			</div>
			<!--  Fim de precoUnitario -->

			<!--  descricaoDoProduto -->
			<div class="form-group">
				<label>Descrição do Produto</label>
				<textarea class="form-control" name="descricaoDoProduto" rows="3"
					value="${produto.descricao }"></textarea>
			</div>

			<!--  Fim de descricaoDoProduto -->

			<!--  imagemProduto -->
			<div class="form-group">
				<label>Upload de Imagem de Produto</label><br>

				<!-- <img src=""${produto.imagemProduto }" class="img-thumbnail" width="150"> -->
				<input type="file" class="form-control-file" name="imagemProduto"
					value="${produto.imagemProduto }">
			</div>

			<!--  Fim de imagemProduto -->

			<!--  Botões -->
			<br>
			<div class="form-group" col-md-auto align="right">
				<a href="PaginaPrincipal.jsp" class="btn btn-primary" role="button"
					aria-disabled="true">Cancelar</a>

				<button type="reset" class="btn btn-primary">Limpar</button>

				<button type="submit" class="btn btn-warning">Cadastrar
					Produto</button>
			</div>

			<div class="form-group" col-md-auto align="right">
				<a href="http://localhost:8080/NetSports/listaProduto"
					class="btn btn-primary" role="button" aria-disabled="true">Gestão
					de Produtos</a>
			</div>
			
			<div class="form-group" col-md-auto align="right">
				
					
				<a href="relatorioProduto"
					class="btn btn-primary" role="button" aria-disabled="true">Relatório
					de produtos cadastrados</a>
					
				<a href="relatorioExclusao"
					class="btn btn-primary" role="button" aria-disabled="true">Relatório
					de produtos excluidos</a>
			</div>
			<!--  Fim de Botões -->

		</form>

	</div>

	<%@ include file="./footer.jsp"%>

</body>
</html>