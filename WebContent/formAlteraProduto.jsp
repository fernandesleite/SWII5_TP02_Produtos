<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/alteraProduto" var="linkServletNovaEmpersa" />	
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produtos: Alterar</title>
</head>
<body>
	<h1>Produtos: Alterar</h1>
	<form action="${linkServletNovaEmpersa}" method="POST">
		<label style="display:block">Nome: <input type="text" name="nome" value="${produto.nome}"/></label>
		<label style="display:block">Descrição: <input type="text" name="descricao" value="${produto.descricao}"/></label>
		<label style="display:block">Unidade: <input type="number" name="unidadeCompra" value="${produto.unidadeCompra}"/></label>
		<label style="display:block">Quantidade Prevido Mês: <input type="number" name="qtdPrevistoMes" value="${produto.qtdPrevistoMes}"/></label>
		<label style="display:block">Preço Max Comprado: <input type="number" name="precoMaxComprado" value="${produto.precoMaxComprado}"/></label>
		<input type="hidden" name="nomeOriginal" value="${produto.nome}"/>
		<input type="submit" />	
	</form>
</body>
</html>