
<!DOCTYPE html>
<%@page import="modello.Segnalatore"%>

<%@page import="modello.Segnalazione"%>
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
<header class="text-center">
			<h1> Elenco segnalatori</h1>
		</header>
		<main class="container">
		<div class="row">
			<div id="tblSegnalatore" class="col-12 row">
				
				
				<table class="table table-hover">
						  <thead>
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
						    <tr>
						     <c:forEach items="${elencoSegnalatori}" var="s">
							   
							    <th scope="row"> 
							    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
									  <div class="btn-group mr-2" role="group" aria-label="First group">
									    <button type="button" class="btn btn-secondary"><i class="fas fa-universal-access"></i></button>
									  </div>
									  
									  <div class="btn-group mr-2" role="group" aria-label="Second group">
									    <button type="button" class="btn btn-secondary">
									    
									  <i class="fas fa-ban"></i>
									    
									    </button>
									  </div>
  								</th>
							    
							    <td>${s.codiceFiscale}</td><br/>
							    <td>${s.nome}</td><br/>
							    <td>${s.cognome}</td><br/>
							    <td>${s.dataNascita}</td><br/>
							    <td> ${s.utente.email}</td>
							    <td> ${s.utente.nomeUtente}</td>
							     </tr> 
						</c:forEach>
						   
						    
						 </tbody>
						</table>
				
			
				
				</div>
			</div>
		</main>

<jsp:include page="frammenti/utility/script.html"></jsp:include>

</body>
</html>