<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.learning.service.ClienteService, br.com.learning.model.Cliente, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Efetivar Inclusao</title>
</head>
	<body>
		<%
			ClienteService clienteService = new ClienteService();
			Cliente cli = new Cliente();
			
			String nome = request.getParameter("nome");
			cli.setNome(nome);
			
			String cpf = request.getParameter("cpf");
			cli.setCpf(cpf);
			
			clienteService.incluir(cli);
			
			out.println("Inclusao efetuada com sucesso");
		%>
		   <input type="submit" value="Retornar" onclick="location.href='listar.jsp'"/>
	</body>
</html>