<%@page import="modello.AnimaleSegnalato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="/frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>
<title>Animali Segnalati</title>
<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}
 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
 
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>

	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>

</style>
</head>
<body class="bg-light">
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>	
	<h2 class="text-center text-success" style="margin-bottom: 1.2rem">Animali segnalati</h2>
	<div class ="mx-3 border">
	<table class="table table-hover table-striped">
			<thead class="thead-dark" >
				<tr>
					<th>&nbsp;</th>
					<th>Specie</th>
					<th>Razza</th>
					<th>Taglia</th>
					<th>Tipo pelo</th>
					<th>Colore pelo</th>
					<th>Stato Fisico</th>
					<th>Stato Mentale</th>
				</tr>
				</thead>
				<tbody>
			
				<c:forEach var="a" items= "${elencoAnimaliSegnalati}">
					<tr data-id="${ a.idAnimale }">
						<td>
							<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">	
								<jsp:include page="frammenti/html/tastocancella.html"></jsp:include>
								<jsp:include page="frammenti/html/tastomodifica.html"></jsp:include>	
							</div> 
						</td>
						<td>${ a.razza.specie.nomeSpecie } </td>
						<td> ${ a.razza.nomeRazza } </td>
						<td>${ a.taglia }</td>
						<td>${ a.tipoPelo }</td>
						<td>${ a.colorePelo}</td>
						<td>${ a.statoFisico }</td>
						<td>${ a.statoMentale }</td>
					</tr>
				
				</c:forEach>
			</tbody>
	</table>
	</div> 

	<jsp:include page="frammenti/utility/script.html"></jsp:include>
	<script>
	$(() => {
		$.ajax({
			url: 'specie',
			method: 'get'
		})
		.done((species) => {
			species.forEach((s) => {
				$('#selSpecie').append('<option value="' + s.idSpecie + '">' + s.nomeSpecie + '</option>')
			});
		});
		$.ajax({
			url: 'razza',
			method: 'get'
		})
		.done((razzas) => {
			razzas.forEach((s) => {
				$('#selRazza').append('<option value="' + s.id + '">' + s.nomeRazza + '</option>')
			});
		});
		$('.bottoneCancellaAnimale').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			var ok = confirm('Sei sicuro di eliminare ' + id + '?');
			if (ok) {
				location.href = 'rimuoviAnimaleSegnalato?idAnimale=' + id;
			}
		});
		
		$('.bottoneModificaAnimale').click((e) => {
			let id = $(e.currentTarget).closest('tr').data('id');
			$.ajax({
				url: 'animalePerId?id=' + id,
				method: 'get'
			})
			.done((an) => {
				$('#selRazza').val(an.razza.id);
				$('#selSpecie').val(an.razza.specie.idSpecie);
				
				$('#modalmodifica').modal();
			})
		});
		
	});

	function update(id) {
		alert('stai per modificare ' + id);
	}
	</script>

</body>
</html>