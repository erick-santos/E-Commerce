<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%
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
<p>Compra concluida com sucesso.</p>
<p>Valor total da compra: ${valorTotal }</p>
<p>Pedido número: <%=request.getSession() %>.</p>
<%@ include file="./footer.jsp" %>
</body>
</html>