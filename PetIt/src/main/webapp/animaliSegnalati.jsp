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

.btn {
    padding: .25rem .75rem !important;
}

 	<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
  	<jsp:include page="frammenti/css/bottonistyle.css"></jsp:include>
	<jsp:include page="frammenti/css/tablestyle.css"></jsp:include>
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>

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
	<h2 class="text-center text-success" style="margin:0.6rem">Animali segnalati</h2>
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
				$('#selSpecie').append('<option value="' + s.idSpecie + '" >' + s.nomeSpecie + '</option>')
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
		$.ajax({
			url: 'dizionari',
			method: 'get'
		})
		.done((dizio) => {
			dizio.taglie.forEach((s) => {
				$('#selTaglia').append('<option value="' + s + '">' + s + '</option>')
			});
			dizio.tipiPelo.forEach((s) => {
				$('#selPelo').append('<option value="' + s + '">' + s + '</option>')
			});
			dizio.statiFisici.forEach((s) => {
				$('#selFisico').append('<option value="' + s + '">' + s + '</option>')
			});
			dizio.statiMentali.forEach((s) => {
				$('#selStatoMentale').append('<option value="' + s + '">' + s + '</option>')
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
				$('#hddIdAnimale').val(an.idAnimale);
				$('#selRazza').val(an.razza.id);
				$('#selSpecie').val(an.razza.specie.idSpecie);
				$('#selTaglia').val(an.taglia);
				$('#selPelo').val(an.tipoPelo);
				$('#selFisico').val(an.statoFisico);
				$('#selStatoMentale').val(an.statoMentale);
				$('#selColorePelo').val(an.colorePelo)
				
				$('#selRazza').attr('value',''+an.razza.id)
				$('#selSpecie').attr('value',''+an.razza.specie.idSpecie)
				$('#selTaglia').attr('value',''+an.taglia)
				$('#selPelo').attr('value',''+an.tipoPelo)
				$('#selFisico').attr('value',''+an.statoFisico)
				$('#selStatoMentale').attr('value',''+an.statoMentale)
				//$('#selColorePelo').val(an.colorePelo)
				$('#selColorePelo').attr('value',''+an.colorePelo)
				$('#modalmodifica').modal();

				
			})
		});
		
		/*  $('.bottoneSalvaModifiche').click((e) =>{
			
			let id = $(e.currentTarget).closest('tr').data('id');	e	
			location.href = 'modificaAnimale?idAnimale=' + id + 'colorePelo=' + $('#selColorePelo').value() 
					+ 'razza=' + $('#selRazza').value()  + 'statoFisico='+ $('#selFisico').value() + 'statoMentale=' + $('#selStatoMentale').value() 
					+ 'taglia=' + $('#selTaglia').value() + 'tipoPelo='+ $('#selPelo').value() ;
		})  
		 */
	});
	
	function manda() {
		document.forms['form_modifica'].submit();
		}	
	</script>

</body>
</html>
