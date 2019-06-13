<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.learning.service.ClienteService, br.com.learning.model.Cliente, java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar</title>
</head>
<body>
	<%
		ClienteService clienteService = new ClienteService();
		List<Cliente> lista = clienteService.listarTodos();
	%>

	<h2>Lista de Clientes</h2>
    <a href="incluir.jsp">INCLUIR</a></br></br> 
	<table border="1">
		<tr>
			<td>Nome</td>
			<td>Data de Nascimento</td>
			<td>CPF</td>
			<td>Acao</td>
		</tr>
		<% for (int i = 0; i < lista.size(); i++) { %>
		<tr>
			<td><%= lista.get(i).getNome()%></td>
			<td><%= lista.get(i).getDataNascimento()%></td>
			<td><%= lista.get(i).getCpf()%></td>
			<td>
			<%
				out.println("<a href=\"excluir.jsp?id=" + lista.get(i).getIdCliente() + "\">EXCLUIR</a>");
          		out.println("<a href=\"alterar.jsp?id=" + lista.get(i).getIdCliente() + "\">ALTERAR</a>");
			%>
               <!--
               <a href="excluir.jsp?id=" <%lista.get(i).getIdCliente();%>>EXCLUIR</a> 
               <a href="alterar.jsp?id=" <%lista.get(i).getIdCliente();%>>ALTERAR</a>
               <a href="excluir.jsp?id=1">EXCLUIR</a>
               
			   <input type="submit" value="Alterar" onclick="location.href='alterar.jsp'"/>
			   <input type="submit" value="Exlcuir" onclick="location.href='excluir.jsp'"/>
			   -->
			</td>
			</tr>
		<% } %>
	</table>
</body>
</html>