<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Feed Segnalazioni</title>
<style type="text/css">

 /*---FRAMMENTO NAVBAR STYLE---*/

<jsp:include page="frammenti/navbarstyle.frammenti"></jsp:include>

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

	<jsp:include page="frammenti/navbar.frammenti"></jsp:include>
	
	<!-- FEED SEGNALAZIONI -->
	<ul class="list-group list-group-flush">
	<c:forEach var="s" items= "${elencoSegnalazioni}">
	
		<li class="list-group-item"><img class="rounded-circle"
			src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
			alt="Generic placeholder image" width="140" height="140">
			
			<!-- TESTO INTERNO AGLI ELEMENTI DELLA FEED -->
			
				<div class="elemento-segnalazione">
				<p class="font-weight-bold">Segnalazione: ${ s.idSegnalazione } <br>
				Colore pelo: <br>
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
<jsp:include page="frammenti/script.frammenti"></jsp:include>
</body>
</html>