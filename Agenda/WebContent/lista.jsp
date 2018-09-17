<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Lista</title>
	</head>
	
	<body>
	
		<h1>Lista</h1>
	
		<table border="1px groove black">
			<thead>
				<th text-align="center">Nome</th>
				<th text-align="center">Email</th>
				<th text-align="center">Endereço</th>
				<th text-align="center">Data de Nascimento</th>
			</thead>
			<tbody>
				<c:forEach var="contato" items="${contatos}">
					<tr>
						<td>${contato.nome}</td>
						<td><c:if test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:if></td>
						<td>${contato.endereco}</td>
						<td><fmt:formatDate value="${contato.dataNascimento.time}"
								pattern="dd/MM/yyyy" /></td>
					</tr>
				</c:forEach>
			</tbody>
	
		</table>
	
	</body>
</html>