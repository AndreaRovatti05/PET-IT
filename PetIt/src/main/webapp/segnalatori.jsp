
<!DOCTYPE html>
<%@page import="modello.Segnalatore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>

<title>PetIT</title>

<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}

.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
  background-color: wheat;
}

.table {background-color: oldlace}

 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>

</style>
</head>
<body>
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>

	<h2 class="text-center text-success">  Elenco segnalatori</h2>
	
	<div class ="mx-3 border border-success">
		<table class="table table-hover table-striped">
			<thead class="thead-dark" >
				<tr>
					<th scope="col">&nbsp</th>
					<th scope="col">Codice Fiscale</th>
					<th scope="col">Nome</th>
					<th scope="col">Cognome</th>
					<th scope="col">Data di nascita</th>
					<th scope="col">Email</th>
					<th scope="col">Username</th>
				</tr>
			</thead>
					  
			<tbody>
				<c:forEach var="s" items="${elencoSegnalatori}" >
					<tr>
						<td> 
							<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">			
								<jsp:include page="frammenti/html/ban.html"></jsp:include>
							</div>
  						</td>
							    
						<td>${s.codiceFiscale}</td>
						<td>${s.nome}</td>
						<td>${s.cognome}</td>
						<td>${s.dataNascita}</td>
						<td> ${s.utente.email}</td>
						<td> ${s.utente.nomeUtente}</td>
					</tr> 
				</c:forEach>						    
			</tbody>
		</table>
	</div>

	<jsp:include page="frammenti/utility/script.html"></jsp:include>
	
</body>
</html>