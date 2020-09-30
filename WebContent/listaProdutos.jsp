
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Página Lista de Produtos</title>
</head>
<body>
	<h1>Lista de Produtos</h1>
	
	<table>
		<thead>
		  <tr>
		    <th>Nome</th>
		    <th>Descrição</th>
		    <th>Unidade Compra</th>
		    <th>Qtd Previsto Mês</th>
		    <th>Preço Máx Comprado</th>

		  </tr>
		</thead>
		<tbody>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<th>${produto.nome}</th>
				<th>${produto.descricao}</th>
				<th>${produto.unidadeCompra}</th>
				<th>${produto.qtdPrevistoMes}</th>
				<th>${produto.precoMaxComprado}</th>
				<th><a href="/TP02/mostraProduto?nome=${produto.nome}">Editar</a></th>
			    <th><a href="/TP02/removeProduto?nome=${produto.nome }">Remove</a></th>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</body>
</html>