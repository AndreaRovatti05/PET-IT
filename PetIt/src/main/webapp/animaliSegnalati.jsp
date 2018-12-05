<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" 
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover table-striped">
		<thead class="thead-dark" >
			<tr>
				<th>&nbsp;</th>
				<th><th>Specie</th>
				<th>Razza</th>
				<th>Taglia</th>
				<th>Tipo pelo</th>
				<th>Colore pelo</th>
				<th>Stato Fisico</th>
				<th>Stato Mentale</th>
				<th>Note</th>
			</tr>
			<tbody>
			
			<c:forEach var="a" items="${elencoAnimaliSegnalati}">
				<tr>
					<td>
						
					</td>
					<td>&nbsp; </td>
					<td>nulla </td>
					<td> nulla </td>
					<td>${a.animalesegnalato.taglia }</td>
						<td>${ a.animalesegnalato.tipoPelo }</td>
					<td>${ a.animalesegnalato.statoFisico }</td>
						<td>${ a.animalesegnalato.statoMentale }</td>
				</tr>
				<%-- } --%>
			</c:forEach>
		</tbody>
		</thead>
		
</body>
</html>