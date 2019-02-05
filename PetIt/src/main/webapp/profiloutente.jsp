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
<jsp:include page="frammenti/html/navbar.html"></jsp:include>
<<<<<<< HEAD
<h2 class="text-center text-success" style="margin:0.8rem">Profilo Utente
<button style="font-size:32px; float:left; margin:0.4rem">
<i class="fa fa-edit"></i></button></h2>
<div class="margine-tab">
<table border="1" cellpadding="0" cellspacing="1" style="border-collapse: collapse;" 
bordercolor="#111111" width="100%" id="AutoNumber1">
  <td class="list-group-item">Nome:</td>
  <td class="list-group-item">Cognome:</td>
  <td class="list-group-item">E-mail:</td>
  <td class="list-group-item">Username:</td>
  <td class="list-group-item">Numero di telefono:</td>
  <td class="list-group-item">Indirizzo:</td>
  <td class="list-group-item">N. Segnalazioni visualizzate:</td>
  <td class="list-group-item">N. Utenti bloccati:</td>
</table>
=======

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
>>>>>>> branch 'master' of https://github.com/AndreaRovatti05/PET-IT.git
</div>

<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include>
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/AndreaRovatti05/PET-IT.git

<jsp:include page="frammenti/utility/script.html"></jsp:include>
<script>

</script>
</body>
</html>