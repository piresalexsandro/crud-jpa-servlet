<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.learning.service.ClienteService, br.com.learning.model.Cliente, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Cliente</title>
</head>
	<body>
		<%
			ClienteService clienteService = new ClienteService();
			
			//Integer idCliente = Integer.valueOf(request.getParameter("id"));
			String id = request.getParameter("id");
			Integer idCliente = Integer.valueOf(id);
			
			//cli.setIdCliente(idCliente);
			Cliente cli = clienteService.listarPorId(idCliente);
		%>
		<form action="efetivarAlteracao.jsp" method="get">
		      <input type="hidden" name="idCliente" value="<%= cli.getIdCliente()%>">
			  Nome: <input type="text" name="nome" value="<%= cli.getNome()%>"><br>
			  Data de Nascimento: <input type="text" name="dataNascimento" value="<%= cli.getDataNascimento()%>"><br>
			  CPF: <input type="text" name="cpf" value="<%= cli.getCpf()%>"><br><br>
			  <input type="submit" value="alterar">
		</form>	
	</body>
</html>