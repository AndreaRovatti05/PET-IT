<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<title>Registrazione</title>
<style type="text/css">
<jsp:include page="bottone.frammenti"></jsp:include>
  <jsp:include page="frammenti/css/navbar.css"></jsp:include>
  
</style>

</head>
<body>

	<jsp:include page="frammenti/html/navbar.html"></jsp:include>



<main class="my-form">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Registrati</div>
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
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>

</main>
	  

<jsp:include page="frammenti/utility/script.html"></jsp:include>
</body>
</html>