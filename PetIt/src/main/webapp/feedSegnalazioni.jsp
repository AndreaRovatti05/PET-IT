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
}

.rounded-circle {
float: left;
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

	
		<li class="list-group-item"><img class="rounded-circle"
			src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
			alt="Generic placeholder image" width="140" height="140">
			
			<!-- TESTO INTERNO AGLI ELEMENTI DELLA FEED -->
			
				<div class="elemento-segnalazione">
				<p class="font-weight-bold">Nome segnalazione: <br>
				Colore pelo: <br>
				Data Aggiunta: <br>
				Stato segnalazione: <br>
				</p>
				</div>
			
			<button type="button" class="btn btn-outline-success btn-visualizza">Visualizza</button>
		</li>
		

		<li class="list-group-item"><img class="rounded-circle"
			src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
			alt="Generic placeholder image" width="140" height="140">
			
			<!-- TESTO INTERNO AGLI ELEMENTI DELLA FEED -->
			
				<div class="elemento-segnalazione">
				<p class="font-weight-bold">Nome segnalazione: <br>
				Colore pelo: <br>
				Data Aggiunta: <br>
				Stato segnalazione: <br>
				</p>
				</div>
			
			<button type="button" class="btn btn-outline-success btn-visualizza">Visualizza</button>
		</li>

	</ul>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>