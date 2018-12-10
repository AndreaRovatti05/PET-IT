<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="frammenti/boostrap.frammenti"></jsp:include>
<title>Segnalazioni</title>
<style type="text/css">
.mx-3 {
  margin-left: ($spacer * .25) !important;
  margin-right:($spacer * .25) !important;
}
 	<jsp:include page="frammenti/nawbarstyle.frammenti"></jsp:include>
 
	<jsp:include page="frammenti/tablestyle.frammenti"></jsp:include>

	<jsp:include page="frammenti/boxstyle.frammenti"></jsp:include>

</style>
</head>
<body>
<jsp:include page="frammenti/nawbar.frammenti"></jsp:include>
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
				<tr>
					<td>&nbsp; </td>
					<td>${ s.idSegnalazione } </td>
					<td> ${ s.segnalatore.nome}  ${s.segnalatore.cognome } </td>
					<td>${ s.segnalatore.utente.idUtente}</td>
					<td>${s.animale.idAnimale}</td>
					<td>${ s.animale.commento}</td>
				</tr>
			
			</c:forEach>
		</tbody>
</table>
</div> 
<jsp:include page="frammenti/script.frammenti"></jsp:include>

</body>
</html>