<!doctype html>
<%@page import="modello.Segnalazione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>

<title>Feed Segnalazioni</title>
<style type="text/css">

 /*---FRAMMENTO NAVBAR STYLE---*/

<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>

/*---CSS STYLING---*/


.btn-visualizza {
	float: right;
	margin-top: 50px;
	box-shadow: 5px 5px 5px #c3c3c3f2;
}

.list-group-item {
max-height: 170px;
background-color: #ececec6b;
}

.rounded-circle {
float: left;
box-shadow: 5px 5px 10px #c3c3c3f2;
}

.elemento-segnalazione {
float: left;
margin-top: 20px;
margin-left: 20px;
position: relative;
max-width: 500px;


}
</style>
</head>
<body>

	<!-- NAVBAR -->

	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	
	<!-- FEED SEGNALAZIONI -->
	<ul class="list-group list-group-flush">
	<c:forEach var="s" items= "${feedSegnalazioni}">
	
		<li class="list-group-item"><img class="rounded-circle"
			src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
			alt="Generic placeholder image" width="140" height="140">
			
			<!-- TESTO INTERNO AGLI ELEMENTI DELLA FEED -->
			
				<div class="elemento-segnalazione">
				<p class="font-weight-bold">Segnalazione: ${ s.idSegnalazione } <br>
				Codice Animale segnalato : ${s.animale.idAnimale}<br>
				Data Aggiunta: <br>
				Stato segnalazione: <br>
				</p>
				</div>
			
			<button type="button" class="btn btn-outline-success btn-visualizza">Visualizza</button>
		</li>
		</c:forEach>
		
	</ul>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<jsp:include page="frammenti/utility/script.html"></jsp:include>
</body>
</html>