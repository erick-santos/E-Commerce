<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="pt_BR"/>
<%@ page import="java.time.LocalDateTime, br.com.javasports.ProdutoDao"%>
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
	<div class="container">

<h1>Relat�rio de Produtos</h1>
		<br>
		<div class="border border-dark">
		<br>
		<h2>Relat�rio de Produtos Exclu�dos:</h2>
		<br>
		<% 
		LocalDateTime data1 = LocalDateTime.now(); 
		%>
		
		<table class="table table-striped">
			<thead class="thead" align="left">
				<tr>
					<th>Alteracao</th>
					<th>Usu�rio</th>
					<th>Data e hora da Altera��o</th>
					<th>Tipo</th>
					<th>C�digo</th>
					<th>Nome</th>
					<th>Marca</th>
					<th>Pre�o Unitario</th>
					<th>Data de Cadastramento</th>
				</tr>
			</thead>
			
			<c:forEach items="${relatorioExclusao}" var="y">
				<tr align="left">
					<th><strong>${y.tipoAlteracao }</strong></th>
					<td>${y.codUser}</td>
					<td>${y.dataHoraAcao}</td>
					<td>${y.tipoProduto}</td>
					<td>${y.codigoProduto}</td>
					<td>${y.nomeProduto}</td>
					<td>${y.marca}</td>
					<td>R$ 
					<fmt:formatNumber type="number" 	  value="${y.precoUnitario}" 	    pattern="#.##"></fmt:formatNumber></td>
					
					<fmt:parseDate    var="dataDoBanco"   value="${y.dataCadastramento }" pattern="yyyy-MM-dd" />
					<fmt:formatDate   var="dataFormatada" value="${dataDoBanco }" 	  		    pattern="dd/MM/yyyy" type="date"/>
					<td>${dataFormatada} </td>
					</tr>	
			</c:forEach>
		</table>
		<p>Relat�rio gerado em: <%=data1.getDayOfMonth() %>/<%=data1.getMonthValue() %>/<%=data1.getYear() %> - Hor�rio: <%=data1.getHour() %> hora(s) e <%=data1.getMinute() %> minuto(s). </p>
		
		<BR>
		<div class="form-group" col-md-auto align="right">
		<a href="cadastroProduto.jsp" class="btn btn-primary" role="button" aria-disabled="true" align="left">Voltar</a>
		<button class="btn btn-warning" role="button" aria-disabled="true" onclick="window.print()" >Imprimir Relat�rio</button>
		</div>

		
	</div>
		
		
</body>
</html>