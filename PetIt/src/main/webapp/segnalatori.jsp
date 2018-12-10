<%@page import="modello.Segnalatore"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PetIT</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>

<header>
			<h1>Elenco utenti</h1>
			<p>Oggi è <%= (new java.util.Date()).toLocaleString()%> </p>
		</header>
		<main class="container">
		<div class="row">
			<div id="tblSegnalatore" class="col-12 row">
				
				
				<table class="table table-sm">
						  <thead>
						    <tr>
						      <th scope="col">Codice Fiscale</th>
						      <th scope="col">Nome</th>
						      <th scope="col">Cognome</th>
						      <th scope="col">Data di nascita</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						     <c:forEach items="${elencoSegnalatori}" var="s">
							    <th scope="row">${s.codiceFiscale}</th>
							    <td>${s.nome}</td><br/>
							    <td>${s.cognome}</td><br/>
							    <td>${s.dataNascita}</td><br/>
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