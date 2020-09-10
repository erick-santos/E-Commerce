<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela de Cadastro</title>
</head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
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
			<h1>Preencha seus dados</h1>
	</div>
	
	<form action="./Cadastro" method="Post">
	<input type="hidden" value="${usuario.cod }" name="cod">
	
	<div class="container">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">Nome</label> <input type="text"
					class="form-control" name="nome" value="${usuario.nome }">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">CPF</label> <input type="text"
					class="form-control" name="cpf" value="${usuario.cpf }">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">Email</label> <input type="email"
					class="form-control" name="email" value="${usuario.email }">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Senha</label> <input type="password"
					class="form-control" name="senha" value="${usuario.senha }">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputAddress">Endereço</label> <input type="text"
					class="form-control" name="endereco" value="${usuario.endereco }">
			</div>
			<div class="form-group col-md-3">
				<label for="inputEmail4">Numero</label> <input type="text"
					class="form-control" name="numero" value="${usuario.numero }">
			</div>
			<div class="form-group col-md-3">
				<label for="inputAddress">Complemento</label> <input type="text"
					class="form-control" name="complemento" value="${usuario.complemento }">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputCity">Cidade</label> <input type="text"
					class="form-control" name="cidade" value="${usuario.cidade }">
			</div>
			<div class="form-group col-md-4">
				<label for="inputState">Estado</label> <input type="text"
					class="form-control" name="estado" value="${usuario.estado }">
			</div>
			<div class="form-group col-md-2">
				<label for="inputZip">CEP</label> <input type="text"
					class="form-control" name="cep" value="${usuario.cep }">
			</div>
		</div>
		<div class="form-group">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="gridCheck">
				<label class="form-check-label" for="gridCheck"> Check me out </label>
			</div>
		</div>
		<a href="Login.jsp" class="btn btn-primary" role="button" aria-disabled="true">Cancelar</a>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
		</div>
	</form>
</body>
</html>