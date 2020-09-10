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

<title>Sa�de e Bem-Estar</title>
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
		<h1 style="text-align: center;">Esportes, Sa�de e Bem-Estar</h1>
		<br>

		<div align="center">
			<img src="images/esportes01.jpg" width="700px">
		</div>
		<br>

		<h2>A import�ncia do esporte na sa�de e no bem estar das pessoas!</h2>

		<p align="justify">Praticar exerc�cios f�sicos � essencial para
			quem est� em busca de uma vida saud�vel! Os exerc�cios f�sicos
			praticados desde a inf�ncia proporcionam ao individuo benef�cios
			incr�veis no corpo e na mente! O corpo se beneficia diariamente, pois
			a atividade f�sica fortalece o t�nus muscular, ajuda na flexibilidade
			e no fortalecimento dos ossos e articula��es. Al�m disso, favorece a
			perca de peso, reduz a gordura corporal e ajuda a regular a press�o
			arterial. Diminui o colesterol ruim, aumenta o bom e ajuda com a
			diabetes.</p>
		<br>

		<div align="center">
			<img src="images/esportes02.jpg" width="700px">
		</div>
		<br>

		<p align="justify">
			S� isso j� seria bons motivos para se adotar uma atividade f�sica
			hoje mesmo e ainda mais, divulgar essa id�ia entre amigos e parentes
			e proporcionar �s crian�as, condi��es de praticarem algum <a href="#"
				class="badge badge-primary">esporte</a>! Mas n�o � s� isso! Os
			benef�cios no bem estar de uma pessoa s�o totalmente relevante. Ao
			praticar uma atividade f�sica o fluxo sangu�neo cerebral melhora e
			isso, al�m de favorecer a diminui��o do estresse, da ansiedade e da
			depress�o, ajuda significativamente na auto-estima.
		</p>
		<br>

		<p align="justify">As crian�as e adolescentes devem sempre
			praticar esportes, mas sempre com a orienta��o de um profissional
			capacitado. Em tempos em que a obesidade infantil cresce sem freio, �
			importante que a atividade di�ria fa�a parte da vida deles.</p>
		<br>

		<div align="center">
			<img src="images/esportes04.jpg" width="700px">
		</div>
		<br>

		<p align="justify">O esporte melhora a autoconfian�a e a
			autoestima, tornando a pessoa mais otimista e segura para alcan�ar
			seus objetivos, al�m disso, � muito importante para o sentimento de
			que tudo � poss�vel dentro das limita��es e adapta��es individuais
			para execu��o daquilo que se deseja praticar.</p>
		<br>

		<div align="center">
			<img src="images/esportes03.jpg" width="700px">
		</div>
		<br> <br>

		<h2>Objetivos de Desenvolvimento do Mil�nio</h2>

		<p align="justify">
			Em setembro de 2000, refletindo e baseando-se na d�cada das grandes
			confer�ncias e encontros das Na��es Unidas, os l�deres mundiais se
			reuniram na sede das Na��es Unidas, em Nova York, para adotar a <a
				href="http://www.agenda2030.org.br/" class="badge badge-primary">Declara��o
				do Mil�nio da ONU</a>. Com a Declara��o, as Na��es se comprometeram a
			uma nova parceria global para reduzir a pobreza extrema, em uma s�rie
			de oito objetivos
		</p>
		<br>
		<div align="center">
			<img
				src="images/ONU - Objetivos Globais para o Desenvolvimento Sustent�vel.png"
				width="700px">
		</div>
		<br>

		<h2>Objetivo 3. Sa�de e Bem-Estar</h2>
		<br>

		<h3>Assegurar uma vida saud�vel e promover o bem-estar para
			todos, em todas as idades</h3>
		<br>

		<div align="center">
			<img src="images/saude_E_Bem_Estar.png" width="250px" align="middle">
		</div>
		<br>

		<p align="justify">Desde os ODM foram registrados progressos
			hist�ricos na redu��o da mortalidade infantil, na melhoria da sa�de
			materna e na luta contra o HIV/Aids, a tuberculose, a mal�ria e
			outras doen�as. Em 15 anos, o n�mero de pessoas infectadas pelo HIV
			anualmente caiu de 3,1 milh�es para 2 milh�es e mais de 6,2 milh�es
			de vidas foram salvas da mal�ria. Apesar do progresso, as doen�as
			cr�nicas e aquelas resultantes de desastres continuam a ser os
			principais fatores que contribuem para a pobreza e para a priva��o
			dos mais vulner�veis. Atualmente, 63% de todas as mortes do mundo
			prov�m de doen�as n�o transmiss�veis, principalmente
			cardiovasculares, respirat�rias, c�ncer e diabetes. Estima-se que as
			perdas econ�micas para os pa�ses de renda m�dia e baixa provenientes
			destas doen�as ultrapassaram US$ 7 trilh�es at� 2025. Os ODS prop�em
			metas integradas que abordam a promo��o da sa�de e bem estar como
			essenciais ao fomento das capacidades humanas.</p>
		<br>
	</div>
	<%@ include file="./footer.jsp"%>
</body>
</html>