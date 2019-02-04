<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>

<title>Segnalazioni</title>

<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}
.btn {
    padding: .25rem .75rem !important;
}
 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
 	<jsp:include page="frammenti/css/bottonistyle.css"></jsp:include>

</style>

</head>
<body>
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>

	<h2 class="text-center text-success"> Segnalazioni</h2>

	<div class ="mx-3" class="border border-success">
		<table class="table table-hover table-striped">
			<thead class="thead-dark" >
				<tr>
					<th>&nbsp;</th>
					<th>Codice Segnalazione</th>
					<th>Segnalatore</th>
					<th>Codice Utente</th>
					<th>AnimaleSegnalato</th>
					<th>Note Segnalazione</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items= "${elencoSegnalazioni}">
					<tr data-id="${ s.idSegnalazione }">
						<td><div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">	
								<jsp:include page="frammenti/html/tastocancella.html"></jsp:include>
								<jsp:include page="frammenti/html/tastomodificasegnalazione.html"></jsp:include>	
							</div>  </td>
						<td>${ s.idSegnalazione } </td>
						<td> ${ s.segnalatore.nome}  ${s.segnalatore.cognome } </td>
						<td>${ s.segnalatore.idUtente}</td>
						<td>${s.animale.idAnimale}</td>
						<td>${ s.note}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> 
	<jsp:include page="frammenti/utility/script.html"></jsp:include>
	<script>
	$(() => {
		$('.bottoneCancellaSegnalazione').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			var ok = confirm('Sei sicuro di eliminare ' + id + '?');
			if (ok) {
				location.href = 'rimuoviSegnalazione?idSegnalazione=' + id;
			}
		});
		.done((se) => {
			$('#hddIdsegnalazione').val(se.idSegnalazione);
			$('#modalmodifica').modal();
		})
		
	});
	</script>
</body>
</html>