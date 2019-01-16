<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>

<title>Modifica dati</title>
<style type="text/css">
.marginealto{
margin-top: 20px
}
.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
  color: #fff !important;
    background-color: #029b2d !important;
}
.a{
    color: #0f5f07 !important;
}

<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>

</style>
</head>
<body>

 <jsp:include page="frammenti/html/navbar.html"></jsp:include>
 <div class="marginealto">
 <div class="row">
  <div class="col-3">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active a" id="v-pills-impostazioni-tab" data-toggle="pill" href="#v-pills-impostazioni" role="tab" aria-controls="v-pills-impostazioni" aria-selected="true">Impostazioni</a>
      <a class="nav-link a" id="v-pills-blocco-tab" data-toggle="pill" href="#v-pills-blocco" role="tab" aria-controls="v-pills-blocco" aria-selected="false">Utenti Bloccati</a>
      <a class="nav-link a" id="v-pills-messaggi-tab" data-toggle="pill" href="#v-pills-messaggi" role="tab" aria-controls="v-pills-messaggi" aria-selected="false">Registra nuovo utente</a>
      <a class="nav-link a" id="v-pills-assistenza-tab" data-toggle="pill" href="#v-pills-assistenza" role="tab" aria-controls="v-pills-assistenza" aria-selected="false">Assistenza</a>
    </div>
  </div>
  <div class="col-9">
    <div class="tab-content" id="v-pills-tabContent">
      <a class="tab-pane fade show active" id="v-pills-impostazioni" role="tabpanel" aria-labelledby="v-pills-impostazioni-tab">
     <main class="my-form">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
            <br>
                    <div class="card">
                      <h2 class="text-center text-success">Modifica Dati personali</h2>
                       <br>
 
       <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Nome" required>
      <div class="valid-feedback">
      	Inserisci nome
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Cognome" required>
      <div class="valid-feedback">
      	Inserisci cognome
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="E-mail" required>
      <div class="valid-feedback">
      	Inserisci e-mail
      </div>
      <br>
        <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Username" required>
      <div class="valid-feedback">
        Inserisci username
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Numero di telefono" required>
      <div class="valid-feedback">
      	Inserisci numero di telefono
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Indirizzo" required>
      <div class="valid-feedback">
      	Inserisci indirizzo
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Password" required>
      <div class="valid-feedback">
      	Inserisci vecchia password
      </div>
      <br>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Nuova password" required>
      <div class="valid-feedback">
      	Inserisci nuova password
      </div>
      <br>
         <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Conferma password" required>
      <div class="valid-feedback">
        Conferma la nuova password
      </div>
      <br>
        <div class="col-md-6 offset-md-4">
                    <button class="btn btn-lg btn-outline-success btn-block"
					type="submit">Conferma</button>
                 </div>
    </div>
</form>
</main></a>
<br>
<br>
      <div class="tab-pane fade" id="v-pills-blocco" role="tabpanel" aria-labelledby="v-pills-blocco-tab"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Contatti</label>
  </div>
  <select class="custom-select" id="inputGroupSelect01">
    <option selected>Selezione</option>
    <option value="1">Bloccati</option>
    <option value="2">Tutti i contatti</option>
  </select>
</div>
      </div>
     
      <div class="tab-pane fade" id="v-pills-messaggi" role="tabpanel" aria-labelledby="v-pills-messaggi-tab">
       
        <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Registra nuovo utente</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="success.php" method="">
                          
                                <div class="form-group row">
                                    <label for="nome" class="col-md-4 col-form-label text-md-right">Nome</label>
                                    <div class="col-md-6">
                                        <input type="text" id="nome" class="form-control" name="nome">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="cognome" class="col-md-4 col-form-label text-md-right">Cognome</label>
                                    <div class="col-md-6">
                                        <input type="text" id="cognome" class="form-control" name="cognome">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail</label>
                                    <div class="col-md-6">
                                        <input type="text" id="email" class="form-control" name="email">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="user_name" class="form-control" name="username">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="numero di telefono" class="col-md-4 col-form-label text-md-right">Numero di telefono</label>
                                    <div class="col-md-6">
                                        <input type="text" id="numero di telefono" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="indirizzo" class="col-md-4 col-form-label text-md-right">Indirizzo</label>
                                    <div class="col-md-6">
                                        <input type="text" id="indirizzo" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="inserisci_password" class="col-md-4 col-form-label text-md-right">Inserisci password</label>
                                    <div class="col-md-6">
                                        <input type="text" id="inserisci_password" class="form-control" name="inserisci-password">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="conferma_password" class="col-md-4 col-form-label text-md-right">Conferma password</label>
                                    <div class="col-md-6">
                                        <input type="text" id="conferma_password" class="form-control" name="conferma-password">
                                    </div>
                                </div>

           
                                    <div class="col-md-6 offset-md-4">
                                       <button class="btn btn-lg btn-outline-success btn-block"
									type="submit">Registrati</button>
                                    </div>
                                  </form>
                                </div>
                         
                        </div>
                    </div>
            </div>
        </div>
	  
  </div>

    </div>
      <div class="tab-pane fade" id="v-pills-assistenza" role="tabpanel" aria-labelledby="v-pills-assistenza-tab">
      <a href="#">contatti</a></div>
    </div>
  </div>
</div>

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