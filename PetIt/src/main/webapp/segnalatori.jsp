<%@page import="modello.Segnalatore"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<jsp:include page="frammenti/boostrap.frammenti"></jsp:include>
		<jsp:include page="frammenti/icone.frammenti"></jsp:include>
	
		<title>Segnalatori</title>
	
	
		<style type="text/css">
			.mx-3 {
			  margin-left: ($spacer * .25) !important;
			  margin-right:($spacer * .25) !important;
			}
			<jsp:include page="frammenti/tablestyle.frammenti"></jsp:include>
			
		 	<jsp:include page="frammenti/navbarstyle.frammenti"></jsp:include> 
			
			<jsp:include page="frammenti/boxstyle.frammenti"></jsp:include>
		
		</style>
	</head>
	<body class="bg-light">
		<jsp:include page="frammenti/navbar.frammenti"></jsp:include>
		<h2 class="text-center text-success">Segnalatori</h2>
		<div class ="mx-3" class="border border-success">
			<table class="table table-hover table-striped">
				<thead class="thead-dark">
					<tr>
						<th>&nbsp</th>
						<th>&nbsp</th>
						<th>Codice Fiscale</th>
						<th>Nome</th>
						<th>Cognome</th>
						<th>Data di nascita</th>
						<th>Email</th>
						<th>Username</th>
						<th>Stato Account</th>
					</tr>
				</thead>	  
				<tbody>				  
					<c:forEach items="${elencoSegnalatori}" var="s">
						<tr>
							<td scope="row"> 
								<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">						
									<div class="btn-group mr-2" role="group" aria-label="Second group">
										<button type="button" class="btn btn-secondary">
											<i class="fas fa-ban"></i>									    
										</button>
									</div>
								</div>  			
							</td>
							<td>&nbsp</td>
							<td>${s.codiceFiscale}</td>
							<td>${s.nome}</td>
							<td>${s.cognome}</td>
							<td>${s.dataNascita}</td>
							<td> ${s.utente.email}</td>
							<td> ${s.utente.nomeUtente}</td>
							<td>${s.utente.stato} </td>
						</tr> 
					</c:forEach>	    
				</tbody>
			</table>
		</div>
		
		<jsp:include page="frammenti/script.frammenti"></jsp:include>

	</body>
</html>