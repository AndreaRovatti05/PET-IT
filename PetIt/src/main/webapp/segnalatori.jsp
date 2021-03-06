
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

 	<jsp:include page="frammenti/css/bottonistyle.css"></jsp:include>
 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>

#fas {
    float: left !important;
    padding-top: 10px !important;
} 

.center{
	margin-left: 500px;
    width: 200px;
}
.mx-3 {
 	margin-left: ($spacer * .25) !important;
 	margin-right:($spacer * .25) !important;
}

</style>
</head>

<body class="bg-light">
<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("email")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	
<div class="btn-group right">
  <button type="button" class="btn btn-secondary filtro"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fas fa-filter" style="padding: 10px 0 !important"></i>
  </button>
  <div class="dropdown-menu dropdown-menu-right">
    <a class="dropdown-item" href="http://localhost:8080/PetIt/elencoSegnalatori">Tutti</a>
    <a class="dropdown-item" href="http://localhost:8080/PetIt/elencoSegnalatori?stato=ban">Bloccati</a>
    <a class="dropdown-item" href="http://localhost:8080/PetIt/elencoSegnalatori?stato=online">Online</a>
    <a class="dropdown-item" href="http://localhost:8080/PetIt/elencoSegnalatori?stato=attivi">Attivi</a>
    <a class="dropdown-item" href="http://localhost:8080/PetIt/elencoSegnalatori?stato=admin">Amministratori</a>
    </div>
</div> 
 	
	
	<h2 class="text-center text-success" style="margin:0.6rem">Segnalatori</h2>
	<div class ="margine-tab">
		<table class="table table-hover table-striped">
			<thead class="thead-dark" >
				<tr>
					<th scope="col">&nbsp</th>
					<th scope="col">Codice Fiscale</th>
					<th scope="col">Nome</th>
					<th scope="col">Cognome</th>
<!-- 					
					<th scope="col">Data di nascita</th>
 -->					
 					<th scope="col">Email</th>
					<th scope="col">Username</th>
					<th scope="col">Online</th>
					<th scope="col">Ban</th>
					<th scope="col">Admin</th>
					<th scope="col">Account Attivo</th>
					
					
				</tr>
			</thead>
					  
			<tbody>
				<c:forEach var="s" items="${elencoSegnalatori}" >
					<tr data-id="${ s.idUtente }">
						<td> 
							<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">	
								<jsp:include page="frammenti/html/ban.html"></jsp:include>
								<jsp:include page="frammenti/html/tastoadmin.html"></jsp:include>
							</div>
  						</td>
							    
						<td>${s.codiceFiscale}</td>
						<td>${s.nome}</td>
						<td>${s.cognome}</td>
						<%-- 
						<td>${s.dataNascita}</td> 
						--%>
						<td> ${s.idUtente}</td>
						<td> ${s.nomeUtente}</td>
						<td> ${s.statoUtente}</td>
						<td> ${s.ban}</td>
						<td> ${s.admin}</td>
						<td> ${s.attivo}</td>				
					</tr> 
				</c:forEach>						    
			</tbody>
		</table>
			<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include>
	</div>
			<jsp:include page="frammenti/utility/script.html"></jsp:include>					
<script type="text/javascript">
$(() =>{
		/* $('.bottoneModificaUtenti').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			$.ajax({
				url: 'utentiPerId?idUtente=' + id,
				method: 'get'
			})
		.done((se) => {
			$('#idUtente').val(se.idUtente);
		})
		}); */
		$('.bottoneModificaBanUtenti').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			var ok = confirm('Sei sicuro di voler modificare lo stato ban di ' + id + '?');
			if (ok) {
				location.href = 'modificaBanUtente?idUtente=' + id;
			}
		});
		
		$('.bottoneAdmin').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			var ok = confirm('Sei sicuro di voler modificare lo stato admin di ' + id + '?');
			if (ok) {
				location.href = 'modificaAdminController?idUtente=' + id;
			}
		});
});

function addUtente() {
	document.forms['form_add'].submit();
	}	
</script>

	
</body>
</html>