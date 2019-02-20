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
	if(session.getAttribute("email")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>
<jsp:include page="frammenti/html/navbar.html"></jsp:include>
<h2 class="text-center text-success" style="margin:0.8rem">Profilo Utente
<button style="font-size:32px; float:left; margin:0.4rem">
<i class="fa fa-edit"></i></button></h2>
<div class="margine-tab">
<table border="1" cellpadding="0" cellspacing="1" style="border-collapse: collapse;" 
bordercolor="#111111" width="100%" id="AutoNumber1">
  <td id="nome" class="list-group-item">Nome:&emsp;</td>
  <td id="cognome" class="list-group-item">Cognome:&emsp;</td>
  <td id="email" class="list-group-item">E-mail:&emsp;${email}</td>
  <td id="num" class="list-group-item">Numero di telefono:&emsp;</td>
  <td id="ind" class="list-group-item">Indirizzo:&emsp;</td>
  <td id="ns" class="list-group-item">N. Segnalazioni visualizzate:</td>
  <td id="nu" class="list-group-item">N. Utenti bloccati:</td>
</table>

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
		$('#nome').text('Nome:  '+u.nomeUtente);
		$('#cognome').text('cognome:  '+u.cognome);
		$('#num').text('Numero di telefono: non esiste nel database');
		$('#ind').text('Indirizzo: non esiste nel database');
		$('#ns').text('N. Segnalazioni visualizzate: contatore da implementare');
		$('#nu').text('N. Utenti bloccati: contatore da implementare');
	})
})
</script>

</body>
</html>