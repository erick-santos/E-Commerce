<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="pt_BR" />
<%@ page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Relat�rio de Produtos</title>
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


		<h1>Relat�rio de Produtos</h1>
		<br>
		<%
			LocalDateTime data = LocalDateTime.now();
		%>

		<table class="table table-striped">
			<thead class="thead" align="left">
				<tr>
					<th>Id</th>
					<th>C�digo</th>
					<th>Nome</th>
					<th>Descri��o</th>
					<th>Marca</th>
					<th>G�nero</th>
					<th>Unidade</th>
					<th>Pre�o Unit�rio</th>
					<th>Data Cadastramento</th>
				</tr>
			</thead>

			<c:forEach items="${relatorio}" var="x">
				<tr align="left">
					<td>1${x.idProduto}</td>
					<td>${x.codigoProduto}</td>
					<td>${x.nomeProduto}</td>
					<td>${x.descricao}</td>
					<td>${x.marca}</td>
					<td>${x.genero}</td>
					<td>${x.unidade}</td>
					<td>R$ <fmt:formatNumber type="number"
							value="${x.precoUnitario}" pattern="#.##"></fmt:formatNumber></td>

					<fmt:parseDate var="dataDoBanco" value="${x.dataCadastramento }"
						pattern="yyyy-MM-dd" />
					<fmt:formatDate var="dataFormatada" value="${dataDoBanco }"
						pattern="dd/MM/yyyy" type="date" />
					<td>${dataFormatada}</td>
					<td>${usuario}</td>
				</tr>
			</c:forEach>
		</table>
		<p>
			Relat�rio gerado em:
			<%=data.getDayOfMonth()%>/<%=data.getMonthValue()%>/<%=data.getYear()%>
			- Hor�rio:
			<%=data.getHour()%>:<%=data.getMinute()%>.
		</p>



		<BR>
		<div class="form-group" col-md-auto align="right">
			<a href="cadastroProduto.jsp" class="btn btn-primary" role="button"
				aria-disabled="true" align="left">Voltar</a>
			<button class="btn btn-warning" role="button" aria-disabled="true"
				onclick="window.print()">Imprimir Relat�rio</button>
		</div>


	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>