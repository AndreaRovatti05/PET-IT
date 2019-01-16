<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>

<title>Modifica dati</title>
<style type="text/css">
<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
 <jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>

</style>
</head>
<body>

 <jsp:include page="frammenti/html/navbar.html"></jsp:include>
 
 <main class="my-form">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-8">
            <br>
                    <div class="card">
                      <h2 class="text-center text-success">Modifica password</h2>
                       <br>
 
       <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Password" required>
      <div class="valid-feedback">
        Inserisci la tua password
      </div>
      <br>
        <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Nuova password" required>
      <div class="valid-feedback">
        Inserisci la nuova password
      </div>
      <br>
         <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Conferma password" required>
      <div class="valid-feedback">
        Conferma la nuova password
      </div>
      <br>
        <div class="col-md-6 offset-md-4">
                    <button class="btn btn-lg btn-outline-success btn-block"
					type="submit">Conferma modifiche</button>
                 </div>
    </div>
</form>
</main>


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