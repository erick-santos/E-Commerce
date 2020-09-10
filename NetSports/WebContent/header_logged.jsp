<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
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
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="estilos/estilos.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="row" style="background-color: yellow">
		<a href="http://localhost:8080/NetSports/PaginaPrincipal"
			style="margin-left: 20px"> <img
			src="images/logo_javasports_text.png"
			class="d-inline-block align-top" alt="">
		</a>


		<div style="margin-left: 300px; margin-top: 30px;">

			<form action="deslogar" method="Post">
				<i class="fa fa-heartbeat fa-2x" style="margin-bottom: 10px"></i> <a
					class="link-style"
					href="http://localhost:8080/NetSports/paginaEsportes_E_Saude.jsp"
					style="margin-right: 10px">Esportes e Saúde</a> <i
					class="fa fa-arrow-down fa-2x" style="margin-bottom: 10px"></i> <a
					class="link-style"
					href="http://localhost:8080/NetSports/cadastroProduto.jsp"
					style="margin-right: 10px">Cadastrar Produtos</a> <i
					class="fa fa-arrow-left fa-2x" style="margin-bottom: 10px"></i>
				<button class="link-style"
					style="cursor: pointer; background: transparent; border: none !important"
					type="submit">Deslogar</button>
				<button
					style="background: transparent; border: none !important; margin-left: 40px">
					<a class="fa fa-shopping-cart fa-2x"
						style="text-decoration: none; color: black"
						href="http://localhost:8080/NetSports/carrinhoDeCompras.jsp"></a>
				</button>
			</form>
		</div>
	</div>
</body>
</html>