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

.bg-img {
background-image: url("provaSfondo.jpg");
}


.bg-image1 {
background-image: url("segnala2.jpg");  
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-image:  -webkit-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(segnala2.jpg); 
background-image:  -moz-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(segnala2.jpg);
background-image:  -ms-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(segnala2.jpg);
background-image:  -o-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(segnala2.jpg);
background-image:  linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(segnala2.jpg) !important
}


.bg-image2{background-image: url("bello.jpg");  
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-image:  -webkit-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bello.jpg); 
background-image:  -moz-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bello.jpg);
background-image:  -ms-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bello.jpg);
background-image:  -o-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bello.jpg);
background-image:  linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bello.jpg) !important
 
}
.bg-image3{background-image: url("bellissimo.jpg");  
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-image:  -webkit-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bellissimo.jpg); 
background-image:  -moz-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bellissimo.jpg);
background-image:  -ms-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bellissimo.jpg);
background-image:  -o-linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bellissimo.jpg);
background-image:  linear-gradient(top left, rgba(0,34,34,  0.1),  rgba(75, 107, 175, 1)), url(bellissimo.jpg) !important
 
}

.white{color: white !important
}

 /*---FRAMMENTO NAVBAR STYLE---*/
<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>

</style>
</head>


	<!-- NAVBAR -->


	<jsp:include page="frammenti/html/navbar.html"></jsp:include>
	
	<!-- HOME -->
	
		<!-- FUNZIONE 1 -->
		<body>
	<% 
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("email")==null) {
			response.sendRedirect("login.jsp");
		}
	%>
		
	<div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-image1">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal white">Gestisci Segnalazioni</h1>
        <p class="lead font-weight-normal white">Controlla che ogni segnalazione sia ben fatta!</p>
        <a class="btn btn-outline-success white" href="elencoSegnalazioni">VAI AI SEGNALATORI!</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
   
 	   
 	 	<!-- FUNZIONE 2 -->
    <div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-image2">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal white">Gestisci Utenti</h1>
        <p class="lead font-weight-normal white">Verifica l'operato degli utenti!</p>
        <a class="btn btn-outline-success white" href="elencoSegnalatori">VAI AGLI UTENTI!</a>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
  
  	 	<!-- FUNZIONE 3 -->
    <div class="header">
	 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-image3">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal white">Aggiungi Account</h1>
        <p class="lead font-weight-normal white">Aggiungi un collaboratore alla lista!</p>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-outline-success white" data-toggle="modal" data-target="#exampleModal">
			 REGISTRA NUOVO ADMIN
			</button>
			
			<!-- Modal -->
			<div class="modal fade" style="text-align: left;" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Registrazione Amministratore</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			       <form action ="addNuovoUtente" method="get">
			  <div class="form-group">
			    <label for="Nome">Nome</label>
			    <input class="form-control" name="nomeUtente"  aria-describedby="emailHelp" placeholder="Inserisci Nome Utente">
			  </div>
			  <div class="form-group">
			    <label for="Cognome">Cognome</label>
			    <input  class="form-control" name="conomeUtente"  id="cognomeUtente" aria-describedby="emailHelp" placeholder="Inserisci Cognome Utente">
			  </div>
			  <div class="form-group">
			    <label for="CF">Codice Fiscale</label>
			    <input  class="form-control" name="cfUtente"  id="CodFiscale" aria-describedby="emailHelp" placeholder="Inserisci Codice Fiscale">
			  </div>
			  <div class="form-group">
			    <label for="Cognome">Username</label>
			    <input  class="form-control" name="usernameUtente" id="Username" aria-describedby="emailHelp" placeholder="Inserisci Username">
			  </div>
			   <div class="form-group">
			    <label for="email">Email</label>
			    <input  class="form-control" name="emailUtente"  id="email" aria-describedby="emailHelp" placeholder="Inserisci Email">
			  </div>
			  <div class="form-group">
			    <label for="InputPassword">Password</label>
			    <input type="password" name="passwordUtente" class="form-control" id="Password" placeholder="Inserisci Password">
			  </div>
			  
			</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" id="addAdmin" value="addNuovoUtente" class="btn btn-success">Add</button>
			      </div>
			    </div>
			  </div>
			</div>      
		</div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>
    </div>
    	
	<jsp:include page="frammenti/utility/script.html"></jsp:include>

</body>
</html>