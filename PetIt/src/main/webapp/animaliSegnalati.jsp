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
<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}
.bg-dark {
    background-color: #169a34!important;
}
.btn-outline-success {
    color: #125d23;
    background-color: transparent;
    background-image: none;
    border-color: #145222;
}
.table {
    background-color: #4865591c;
}

</style>
</head>
<body class="bg-light">
	<jsp:include page="frammenti/nawbar.frammenti"></jsp:include>
<h2 class="text-center text-success"> Animali segnalati</h2>
<div class ="mx-3" class="border border-success">
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
					<td>${ a.razza.specie.nomeSpecie } </td>
					<td> ${ a.razza.nomeRazza } </td>
					<td>${ a.taglia }</td>
					<td>${ a.tipoPelo }</td>
					<td>${ a.colorePelo}</td>
					<td>${ a.statoFisico }</td>
					<td>${ a.statoMentale }</td>
					<td>${ a.commento }</td>
				</tr>
			
			</c:forEach>
		</tbody>
</table>
</div> 

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