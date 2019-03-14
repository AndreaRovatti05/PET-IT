<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>
<title>PROFILO UTENTE</title>
<style type="text/css">

.margine-tab{
margin-top:1.8rem
}
 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
 	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
	

</style>
</head>

<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("email") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	<h2 class="text-center text-success" style="margin: 0.8rem">Profilo
		Utente
	<jsp:include page="frammenti/html/tastoModificaProfilo.html"></jsp:include></h2>
	<div class="margine-tab">
		<table border="1" cellspacing="1" style="border-collapse: collapse; bordercolor:#111111; width:100%" id="AutoNumber1">
			<td id="nome" class="list-group-item"></td>
  			<td id="cognome" class="list-group-item"></td>
  			<td id="email" class="list-group-item">E-mail:&emsp;${email}</td>
  			<td id="num" class="list-group-item"></td>
  			<td id="ind" class="list-group-item"></td>
 
		</table>
	</div>

<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include>

<jsp:include page="frammenti/utility/script.html"></jsp:include>
<script>
	sessionStorage.setItem('email','${email}');
</script>

<script>
$(()=>{
	var e = sessionStorage.getItem('email');
	$.ajax({
		url:'controllerProfilo?email='+e,
		method:'get'
	})
	.done((u)=>{
		console.log(u);
		$('#nome').text('Nome:  '+u.nome);
		$('#cognome').text('Cognome:  '+u.cognome);
		$('#num').text('Numero di telefono:' + u.numeroTel);
		$('#ind').text('Indirizzo: Via ' + u.indirizzo.via + " " + u.indirizzo.civico + "," + u.indirizzo.citta + " ("  + u.indirizzo.provincia + ") "  + u.indirizzo.cap );
	
	})
})
</script>

</body>
</html>