<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Incluir Cliente</title>
</head>
	<body>
		<form action="efetivarInclusao.jsp" method="post">
			  Nome: <input type="text" name="nome"><br>
			  Data de Nascimento: <input type="text" name="dataNascimento"><br>
			  CPF: <input type="text" name="cpf"><br><br>
			  <input type="submit" value="Incluir">
		</form>	
	</body>
</html>