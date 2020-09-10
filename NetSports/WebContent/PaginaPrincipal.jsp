<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="br.com.javasports.*, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
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
	
		request.getAttribute("listaCards");
	%>
	<div class="javasports-center-main col-sm-12">
		<h2>Principais Ofertas</h2>
	</div>

	<div class="card-deck container" style="margin-left: 90px">
		 
			<c:forEach items="${listaCards}" var="card">
				<div class="col-sm-3">
					<div class="card">
						<img src="${card.imagemProduto}" class="card-img-top"
							style="width: 200px; height: 200px" alt="...">
						<div class="card-body">
							<h5 class="card-title">${card.nomeProduto}</h5>
							<p class="card-text">${card.descricao}</p>

							<p class="card-text">
								R$
								<fmt:formatNumber type="number" value="${card.precoUnitario}"
									pattern="#.##"></fmt:formatNumber>
							</p>
							<a class="btn btn-primary"
								href="carrinhoComprasServlet?idProduto=${card.idProduto}">Adicionar
								ao Carrinho</a>
						</div>

					</div>
				</div>

			</c:forEach>
		 
	</div>

	<!--Carousel Wrapper-->
	<%-- <div id="multi-item-example" class="carousel slide carousel-multi-item"
		style="background: black;" data-ride="carousel">

		<!--Controls-->
		<div class="controls-top"
			style="position: relative; margin-top: 100px">
			<a class="btn-floating" href="#multi-item-example" data-slide="prev"><i
				class="fa fa-chevron-left" style="padding-left: 15px; color: white;"></i></a>
			<a class="btn-floating" href="#multi-item-example" data-slide="next"><i
				class="fa fa-chevron-right"
				style="float: right; padding-right: 15px; margin-top: 5px; color: white;"></i></a>
		</div>
		<!--/.Controls-->

		<!--Slides-->
		<div class="carousel-inner"
			style="position: relative; background: black;" role="listbox">

			<!--First slide-->
			<div class="carousel-item active">

				<c:forEach items="${listaCards}" var="card">
					<div class="col-md-3" style="float: left">
						<div class="card mb-2">
							<img class="card-img-top" src="${card.imagemProduto}"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">${card.nomeProduto}</h4>
								<p class="card-text">
									R$
									<fmt:formatNumber type="number" value="${card.precoUnitario}"
										pattern="#.##"></fmt:formatNumber>
								</p>
								<a class="btn btn-primary"
									href="carrinhoComprasServlet?idProduto=${card.idProduto}">Ver
									Produto</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--/.First slide-->

			<!--Second slide-->
			<div class="carousel-item">

				<c:forEach items="${listaCards}" var="card">
					<div class="col-md-3" style="float: left">
						<div class="card mb-2">
							<img class="card-img-top" src="${card.imagemProduto}"
								alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title">${card.nomeProduto}</h4>
								<p class="card-text">
									R$
									<fmt:formatNumber type="number" value="${card.precoUnitario}"
										pattern="#.##"></fmt:formatNumber>
								</p>
								<a class="btn btn-primary"
									href="carrinhoComprasServlet?idProduto=${card.idProduto}">Ver
									Produto</a>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<!--/.Second slide-->



		</div>
		<!--/.Slides-->

	</div> --%>
	<!--/.Carousel Wrapper-->

	<%@ include file="./footer.jsp"%>
</body>
</html>