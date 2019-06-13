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
			
			//Integer idCliente = Integer.valueOf(request.getParameter("id"));
			String id = request.getParameter("id");
			Integer idCliente = Integer.valueOf(id);
			
			cli.setIdCliente(idCliente);
			clienteService.excluir(idCliente);
			
			//out.println("<a href=\"excluir.jsp?id=" + cli.getIdCliente() + "\">EXCLUIR</a>");
			out.println("Registro excluido com sucesso");
		%>
		   <input type="submit" value="Retornar" onclick="location.href='listar.jsp'"/>
	</body>
</html>