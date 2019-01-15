<%@page import="modello.AnimaleSegnalato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="/frammenti/utility/boostrap.html"></jsp:include>
<title>Animali Segnalati</title>
<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}
 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
 
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>

	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>

</style>
</head>
<body class="bg-light">
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>	
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

	<jsp:include page="frammenti/utility/script.html"></jsp:include>

</body>
</html>