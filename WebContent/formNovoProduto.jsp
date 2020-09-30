  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/novoProduto" var="linkServletNovoProduto" />	
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produtos: Novo</title>
</head>
<body>
	<h1>Produtos: Novo</h1>
	<form action="${linkServletNovoProduto}" method="POST">

		<label style="display:block">Nome: <input type="text" name="nome"/></label>
		<label style="display:block">Descrição: <input type="text" name="descricao"/></label>
		<label style="display:block">Unidade: <input type="number" name="unidadeCompra"/></label>
		<label style="display:block">Quantidade Prevido Mês: <input type="number" name="qtdPrevistoMes"/></label>
		<label style="display:block">Preço Max Comprado: <input type="number" name="precoMaxComprado"/></label>
		
		<input type="submit" />
	
	</form>
</body>
</html>