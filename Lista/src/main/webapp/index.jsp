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
	<title>Lista de compras</title>

		<script>
			
			function confirmarExclusao(id){
				var resposta = confirm("deseja mesmo escluir este item?");
				
				if(resposta == true){
					window.location.href = "ExcluirServlet?id="+ id;
				}
			}
		
		</script>

</head>
<body>

		<h2>Lista de compras</h2>
	
	<form action="IncluirServlet" method="post">
		<label>Produto:</label><br>
		<input type="text" name="nome" id="nome"/><br>
		<label>Quantidade:</label><br>
		<input type="number" name="quantidade" id="quantidade"/><br>
		<input type="submit" value="Adicionar"><br>
	</form><br>
	
	<div>
		<table border=1>
			<tr>
				<th>ID</th>
				<th>PRODUTO</th>
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
						 <a href="AlteracaoProduto?id=<%=produto.getId()%>"><img src="image/editar.webp" width="24px"/></a>
					</td>
					<td>
						<img src="image/deletar.png" width="24px" onclick="confirmarExclusao(<%=produto.getId()%>)"/>
					</td>
				</tr>
			<%
			}
			%>
	
</body>
</html>