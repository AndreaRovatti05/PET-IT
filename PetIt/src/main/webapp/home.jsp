<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>


<title>Home</title>
<style type="text/css">

 /*---FRAMMENTO NAVBAR STYLE---*/

<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>

/*---CSS---*/

#container py-5 {
   position: absolute;
   bottom:0;
   height:30px;   
   background:#6cf;
}

.container {
    max-width: 100%;
}

#bg-img {
background-image: url (provaSfondo.jpg);
}

</style>
</head>
<body>

	<!-- NAVBAR -->

	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	
	<!-- HOME -->
	
		<!-- FUNZIONE 1 -->
		
	<div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Gestisci Segnalazioni</h1>
        <p class="lead font-weight-normal">Breve testo.</p>
        <a class="btn btn-outline-success" href="elencoSegnalazioni">TASTO AZIONE</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
   
 	   
 	 	<!-- FUNZIONE 2 -->
    <div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Gestisci Utenti</h1>
        <p class="lead font-weight-normal">Breve testo.</p>
        <a class="btn btn-outline-success" href="elencoSegnalatori">TASTO AZIONE</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
  
  	 	<!-- FUNZIONE 3 -->
    <div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Aggiungi Account</h1>
        <p class="lead font-weight-normal">Breve testo.</p>
        <a class="btn btn-outline-success" href="ModificaDati.jsp">TASTO AZIONE</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
    	
    	
 
    		
    	


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<jsp:include page="frammenti/utility/script.html"></jsp:include>

</body>
</html>