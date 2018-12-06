<%@page import="modello.AnimaleSegnalato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover table-striped">
		<thead class="thead-dark" >
			<tr>
				<th>&nbsp;</th>
				<th>Specie</th>
				<th>Razza</th>
				<th>Taglia</th>
				<th>Tipo pelo</th>
				<th>Colore pelo</th>
				<th>Stato Fisico</th>
				<th>Stato Mentale</th>
				<th>Note</th>
			</tr>
			</thead>
			<tbody>
		
			<c:forEach var="a" items= "${elencoAnimaliSegnalati}">
				<tr>
					<td>&nbsp; </td>
					<td>${ a.specie.nomeSpecie } </td>
					<td> ${ a.razza.nomeRazza } </td>
					<td>${ a.animalesegnalato.taglia }</td>
					<td>${ a.animalesegnalato.tipoPelo }</td>
					<td>${ a.animalesegnalato.colorePelo}</td>
					<td>${ a.animalesegnalato.statoFisico }</td>
					<td>${ a.animalesegnalato.statoMentale }</td>
					<td>${ a.animalesegnalato.commento }</td>
				</tr>
			
			</c:forEach>
		</tbody>
</table>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>