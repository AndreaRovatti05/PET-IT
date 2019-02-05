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
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}

 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
 	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
	

</style>
</head>
<body>
<jsp:include page="frammenti/html/navbar.html"></jsp:include>

<h2 class="text-center text-success">Profilo Utente</h2>
<div align="left">
<ul class="list-group" data-id="${ ut.idUtenteRegistrato }"> 
  <li id="nome" class="list-group-item">Nome: </li>
  <li id="conome" class="list-group-item">Cognome:</li>
  <li id="email" class="list-group-item">E-mail:</li>
  <li id="username" class="list-group-item">Username:</li>
  <li id="numeroTelefono" class="list-group-item">Numero di telefono:</li>
  <li id="indirizzo" class="list-group-item">Indirizzo:</li>
  <li class="list-group-item">N. Segnalazioni visualizzate:</li>
  <li class="list-group-item">N. Utenti bloccati:</li>
</ul>
</div>

<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include>

<jsp:include page="frammenti/utility/script.html"></jsp:include>
<script>

</script>
</body>
</html>