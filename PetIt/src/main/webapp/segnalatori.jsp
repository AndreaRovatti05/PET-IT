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

<title>PetIT</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.0/css/all.css" integrity="sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h" crossorigin="anonymous">

<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}

.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
  background-color: wheat;
}

.table {background-color: oldlace}

 	<jsp:include page="frammenti/navbarstyle.frammenti"></jsp:include>
 

	<jsp:include page="frammenti/boxstyle.frammenti"></jsp:include>

</style>
</head>
<body>
<jsp:include page="frammenti/navbar.frammenti"></jsp:include>
<header class="text-center">

			<h1> Elenco segnalatori</h1>
			<p style="color:darkgoldenrod">Oggi è <%= (new java.util.Date()).toLocaleString()%> </p>
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


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>