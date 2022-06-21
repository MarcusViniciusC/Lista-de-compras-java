<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dao.UsuarioDAO" %>
<%@page import="modelo.Produto" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="IncluirServlet" method="post">
		<label>Produto:</label><br>
		<input type="text" name="nome" id="nome"/><br>
		<label>Quantidade:</label><br>
		<input type="number" name="quantidade" id="quantidade"/><br>
		<input type="submit" value="novo item"><br>
	</form>
	<div>
		<h2>Lista de Produtos</h2>
	</div>
	<div>
		<table border=1>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>QUANTIDADE</th>
				<th colspan=2></th>
			</tr>
			
			<%
			UsuarioDAO dao = new UsuarioDAO();
			List<Produto> lista = new ArrayList<Produto>();
			
			lista = dao.listar();
			
			for(Produto produto: lista){%>
			
				<tr>
					<td>
						<%=produto.getId()%>
					</td>
					<td>
						<%=produto.getNome()%>
					</td>
					<td>
						<%=produto.getQuantidade()%>
					</td>
					<td>
						 <a href=""><img src="image/edit.png" width="24px"/></a>
					</td>
					<td>
						<img src="image/delete.png" width="24px" onclick=""/>
					</td>
				</tr>
			<%
			}
			%>
	
</body>
</html>