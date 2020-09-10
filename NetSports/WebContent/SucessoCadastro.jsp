<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Cadastro de Usuario com Sucesso.</title>
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
		<h1>Cadastro Realizado com Sucesso!</h1>
		<br> <a href="Login.jsp" class="btn btn-primary" role="button"
			aria-disabled="true">Realizar Login</a>
	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>