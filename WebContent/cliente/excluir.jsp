<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.learning.service.ClienteService, br.com.learning.model.Cliente, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluir Cliente</title>
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
	    <table>
		  <tr>
			<td><%= cli.getNome()%></td>
			<td><%= cli.getDataNascimento()%></td>
			<td><%= cli.getCpf()%></td>
			<td>
			<%
				out.println("<a href=\"efetivarExclusao.jsp?id=" + cli.getIdCliente() + "\">EXCLUIR</a>");
			%>
			<!-- 
			<form action="efetivarExclusao.jsp?=" <% %>></form>method="get">
                <input type="submit" value="Excluir">
			</form>	
			 -->
			</td>
		  </tr>
     	</table>
	</body>

</html>