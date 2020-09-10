<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela de Login</title>
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		<br>
		<h1>Acesse Sua Conta</h1>
		<br>
	</div>

	<form action="LoginServlet" method="post">
		<div class="container">
			<label for="exampleInputEmail1">Digite seu email:</label> <input
				type="text" class="form-control" name="email"
				aria-describedby="emailHelp">
		</div>
		<div class="container">
			<label for="exampleInputPassword1">Digite sua senha:</label> <input
				type="password" class="form-control" name="senha">
		</div>
		<br>
		<div class="container">
			<input class="btn btn-primary btn-lg" type="submit" value="Entrar">
		</div>
		<div class="container">
			<a href="http://google.com/">Esqueceu a senha?</a>
		</div>
		<div class="container">
			<a href="Cadastro.jsp">Primeira vez na LojaVirtual? Cadastre-se</a>
		</div>
	</form>
	<%@ include file="./footer.jsp"%>
</body>
</html>