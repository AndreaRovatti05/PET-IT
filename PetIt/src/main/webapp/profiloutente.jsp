<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>
<title>Profilo Utente</title>
<style type="text/css">

.margine-tab{
margin-top:1.8rem
}
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
		if (session.getAttribute("email") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	<jsp:include page="frammenti/html/tastoModificaProfilo.html"></jsp:include>
	
	<h2 class="text-center text-success" style="margin: 0.6rem">Profilo Utente </h2>
	<div class="margine-tab">
		<table border="1" cellspacing="1" style="border-collapse: collapse; bordercolor:#111111; width:100%" id="AutoNumber1">
			<tr>
				<td id="nome" class="list-group-item"></td>
	  			<td id="cognome" class="list-group-item"></td>
	  			<td id="email" class="list-group-item">E-mail:&emsp;${email}</td>
	  			<td id="user" class="list-group-item"></td>
	  			<td id="num" class="list-group-item"></td>
	  			<td id="ind" class="list-group-item"></td>
 			</tr>
		</table>
	</div>

<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include>

<jsp:include page="frammenti/utility/script.html"></jsp:include>
<script>
	sessionStorage.setItem('email','${email}');
	
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
		$('#user').text('Username: ' + u.nomeUtente);
		$('#num').text('Numero di telefono:' + u.numeroTel);
		$('#ind').text('Indirizzo: ' +  u.indirizzo.via + " " + u.indirizzo.civico + "," + u.indirizzo.citta + " ("  + u.indirizzo.provincia + ") "  + u.indirizzo.cap );
	});
	$('.bottoneModificaProfilo').click((e) => {
		let id = sessionStorage.getItem('email');
		$.ajax({
			url: 'utentePerId?idUtente=' + id,
			method: 'get'
		})
		.done((u) => {
			$('#hddIdUtente').val(sessionStorage.getItem('email'));
			$('#selNome').val(u.nome);
			$('#selCognome').val(u.cognome);
			$('#selUsername').val(u.nomeUtente);
			$('#selNumero').val(u.numeroTel);
			$('#selVia').val(u.indirizzo.via);
			$('#selCap').val(u.indirizzo.cap);
			$('#selCivico').val(u.indirizzo.civico);
			$('#selInterno').val(u.indirizzo.interno);
			$('#selComune').val(u.indirizzo.citta);
			$('#selProvincia').val(u.indirizzo.provincia);
			$('#selPass').val(u.password);
			$('#modalmodificaProfilo').modal();
		})
	});
});
	
	function mandaUtente() {
		document.forms['form_modifica_profilo'].submit();
		}	
	function addUtente() {
		document.forms['form_add'].submit();
		}	
</script>

</body>
</html>
