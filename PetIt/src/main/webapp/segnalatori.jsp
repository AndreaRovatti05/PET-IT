
<!DOCTYPE html>
<%@page import="modello.Segnalatore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>

<title>Utenti</title>

<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}

 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>

</style>
</head>
<body class="bg-light">
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>

	<h2 class="text-center text-success" style="margin-bottom: 1.2rem">Segnalatori</h2>
	
	<div class ="mx-3 border">
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
					<th scope="col">Stato Utente</th>
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
						<td> ${s.email}</td>
						<td> ${s.nomeUtente}</td>
						<td> ${s.statoUtente}</td>
					</tr> 
				</c:forEach>						    
			</tbody>
		</table>
	</div>

	<jsp:include page="frammenti/utility/script.html"></jsp:include>
	
</body>
</html>