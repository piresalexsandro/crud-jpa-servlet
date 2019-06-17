<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.learning.service.ClienteService, br.com.learning.model.Cliente, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Efetivar Alteracao</title>
</head>
	<body>
		<%
			ClienteService clienteService = new ClienteService();
			Cliente cli = new Cliente();
			
			String nome = request.getParameter("nome");
			cli.setNome(nome);
			
			String cpf = request.getParameter("cpf");
			cli.setCpf(cpf);
			
			String id = request.getParameter("idCliente");
			Integer idAlteracao = Integer.valueOf(id);
			//Interger idCliente = id.valueOf(idCliente);
			
			cli.setIdCliente(idAlteracao);
			
			clienteService.alterar(cli);
			
			out.println("Alteracao efetuada com sucesso");
		%>
		   <input type="submit" value="Retornar" onclick="location.href='listar.jsp'"/>
	</body>
</html>