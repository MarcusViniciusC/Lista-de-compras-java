<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.UsuarioDAO" %>
<%@page import="modelo.Produto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>alterar produto</title>
</head>
<body>

	<%
		Produto pdt = (Produto)session.getAttribute("produtoSelecionado");
	
	%>
	<h2>Lista de compras</h2>
	
	<form action="AlterarProdutoServlet" method="post">
		<input type="hidden" name="id" id="id" value="<%=pdt.getId() %>"/>
		<label>Produto:</label><br>
		<input type="text" name="nome" id="nome" placeholder="produto"  value="<%=pdt.getNome() %>"/><br>
		<label>Quantidade:</label><br>
		<input type="number" name="quantidade" id="quantidade" placeholder="produto"  value="<%=pdt.getQuantidade() %>"/><br>
		<input type="submit" value="Adicionar"><br>
	</form><br>
</body>
</html>