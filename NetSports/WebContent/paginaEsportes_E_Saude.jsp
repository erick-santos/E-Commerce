<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<title>Saúde e Bem-Estar</title>
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
		<h1 style="text-align: center;">Esportes, Saúde e Bem-Estar</h1>
		<br>

		<div align="center">
			<img src="images/esportes01.jpg" width="700px">
		</div>
		<br>

		<h2>A importância do esporte na saúde e no bem estar das pessoas!</h2>

		<p align="justify">Praticar exercícios físicos é essencial para
			quem está em busca de uma vida saudável! Os exercícios físicos
			praticados desde a infância proporcionam ao individuo benefícios
			incríveis no corpo e na mente! O corpo se beneficia diariamente, pois
			a atividade física fortalece o tônus muscular, ajuda na flexibilidade
			e no fortalecimento dos ossos e articulações. Além disso, favorece a
			perca de peso, reduz a gordura corporal e ajuda a regular a pressão
			arterial. Diminui o colesterol ruim, aumenta o bom e ajuda com a
			diabetes.</p>
		<br>

		<div align="center">
			<img src="images/esportes02.jpg" width="700px">
		</div>
		<br>

		<p align="justify">
			Só isso já seria bons motivos para se adotar uma atividade física
			hoje mesmo e ainda mais, divulgar essa idéia entre amigos e parentes
			e proporcionar às crianças, condições de praticarem algum <a href="#"
				class="badge badge-primary">esporte</a>! Mas não é só isso! Os
			benefícios no bem estar de uma pessoa são totalmente relevante. Ao
			praticar uma atividade física o fluxo sanguíneo cerebral melhora e
			isso, além de favorecer a diminuição do estresse, da ansiedade e da
			depressão, ajuda significativamente na auto-estima.
		</p>
		<br>

		<p align="justify">As crianças e adolescentes devem sempre
			praticar esportes, mas sempre com a orientação de um profissional
			capacitado. Em tempos em que a obesidade infantil cresce sem freio, é
			importante que a atividade diária faça parte da vida deles.</p>
		<br>

		<div align="center">
			<img src="images/esportes04.jpg" width="700px">
		</div>
		<br>

		<p align="justify">O esporte melhora a autoconfiança e a
			autoestima, tornando a pessoa mais otimista e segura para alcançar
			seus objetivos, além disso, é muito importante para o sentimento de
			que tudo é possível dentro das limitações e adaptações individuais
			para execução daquilo que se deseja praticar.</p>
		<br>

		<div align="center">
			<img src="images/esportes03.jpg" width="700px">
		</div>
		<br> <br>

		<h2>Objetivos de Desenvolvimento do Milênio</h2>

		<p align="justify">
			Em setembro de 2000, refletindo e baseando-se na década das grandes
			conferências e encontros das Nações Unidas, os líderes mundiais se
			reuniram na sede das Nações Unidas, em Nova York, para adotar a <a
				href="http://www.agenda2030.org.br/" class="badge badge-primary">Declaração
				do Milênio da ONU</a>. Com a Declaração, as Nações se comprometeram a
			uma nova parceria global para reduzir a pobreza extrema, em uma série
			de oito objetivos
		</p>
		<br>
		<div align="center">
			<img
				src="images/ONU - Objetivos Globais para o Desenvolvimento Sustentável.png"
				width="700px">
		</div>
		<br>

		<h2>Objetivo 3. Saúde e Bem-Estar</h2>
		<br>

		<h3>Assegurar uma vida saudável e promover o bem-estar para
			todos, em todas as idades</h3>
		<br>

		<div align="center">
			<img src="images/saude_E_Bem_Estar.png" width="250px" align="middle">
		</div>
		<br>

		<p align="justify">Desde os ODM foram registrados progressos
			históricos na redução da mortalidade infantil, na melhoria da saúde
			materna e na luta contra o HIV/Aids, a tuberculose, a malária e
			outras doenças. Em 15 anos, o número de pessoas infectadas pelo HIV
			anualmente caiu de 3,1 milhões para 2 milhões e mais de 6,2 milhões
			de vidas foram salvas da malária. Apesar do progresso, as doenças
			crônicas e aquelas resultantes de desastres continuam a ser os
			principais fatores que contribuem para a pobreza e para a privação
			dos mais vulneráveis. Atualmente, 63% de todas as mortes do mundo
			provêm de doenças não transmissíveis, principalmente
			cardiovasculares, respiratórias, câncer e diabetes. Estima-se que as
			perdas econômicas para os países de renda média e baixa provenientes
			destas doenças ultrapassaram US$ 7 trilhões até 2025. Os ODS propõem
			metas integradas que abordam a promoção da saúde e bem estar como
			essenciais ao fomento das capacidades humanas.</p>
		<br>
	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>