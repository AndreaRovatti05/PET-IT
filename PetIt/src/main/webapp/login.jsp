<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="modello.AnimaleSegnalato"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html >
<head>
<style type="text/css">
</style>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>

<title>PetIt Login</title>

<style type="text/css">
	
.body {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    padding-top: 40px;
    padding-bottom: 40px;
    background-color: #f5f5f5;
}

.form-signin {
    width: 100%;
    max-width: 330px;
    padding: 15px;
    margin: auto;
}
.btn-outline-success {
    color: #1d7d33;
    background-color: rgba(123, 241, 109, 0.9490196078431372);
}

.form-control:focus {
    border-color: #1e7e34;
    box-shadow: 0 0 0 0.2rem rgba(0, 255, 8, 0.25);
}
.bg-dark {
    background-color: #169a34 !important;
}
.navbar-brand{
max-height: 42px;
margin-bottom: 5px;
}

.logo {
margin-bottom: 10px;
}


/* CONTROLLA IL COLORE DELLA CASELLA SEARCH QUANDO SELEZIONATA */

.form-control:focus {
  border-color: #00c71bd1;
  box-shadow:  2px 4px 15px #003808e3;
}

/* STYLING MENU' DROPDOWN */

.dropdown-item {
padding-top: 2,5px;
padding-bottom: 2,5px;
}

/* STYLING BOTTONI */

.btn-outline-light:hover {
color: #169a34;
}

/* HAMBURGER */

.navbar-toggler:focus {
 	border-color: #b9b9b9b3; !important;
	box-shadow:  1px 2px 10px #003808cc;
  	outline: 0; 
}

.navbar-dark .navbar-toggler {

    border-color: white;
}
/* RENDE PIU' TONDO IL MENU' HAMBURGER */

.navbar-toggler {
    border-radius: .5rem !important;
    
}

.navbar-dark .navbar-toggler-icon {
    background-image: url !important;
}

.hamb {
background-color: transparent !important;
}




/* USER LOGO */

.user-logo {
margin-left: 7px;
margin-top: 5px;
float:right!important;

}

/* TRASFORMA HAMBURGER MENU IN UNA X */

.container {
  display: inline-block;
  cursor: pointer;
  float: right;
}

.bar1, .bar2, .bar3 {
  width: 25px;
  height: 2px;
  background-color: #fff;
  margin: 6px 0;
  transition: 0.4s;
}

.change .bar1 {
  -webkit-transform: rotate(-45deg) translate(-9px, 6px);
  transform: rotate(-45deg) translate(-2.5px, 5px);
}

.change .bar2 {opacity: 0;}

.change .bar3 {
  -webkit-transform: rotate(45deg) translate(-8px, -8px);
  transform: rotate(45deg) translate(-6px, -9px);
}



/*
4.) Aggiungere tasto profilo alto dx
5.) aggiungere menÃ¹ hamburger quando si riduce la finestra

*/
</style>
</head>
<body class="text-center body">
	<div class="container">
		<div class="row">
			<div class=" col-md-4 offset-md-4"  >
				<div class="row" >
					<div class="col align-self-center">
						<form class="form-signin" action="Login" method="post">
						<h1 class="h3 mb-3 font-weight-normal" class="row">Please
								sign in</h1>
							<div>
								<label for="inputEmail" class="sr-only">Email address</label> 
								<input name="username" type="email" id="inputEmail" class="form-control" 
								placeholder="Email address" style="margin-bottom: 2px;">
								<label for="inputPassword" class="sr-only">Password</label> 
								<input name="password" type="password" id="inputPassword" class="form-control"
									placeholder="Password">
								<div class="checkbox mb-3">
									<label> 
									<input type="checkbox" value="remember-me">
										Remember me
									</label>
								</div>
								<button class="btn btn-lg btn-outline-success btn-block"
									type="submit" value="Login">Sign in</button>
									<div style="color:#FF0000">${messaggio}</div>
								<p class="mt-5 mb-3 text-muted">© 2018-2019</p>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>		
							</form>	
</body>
</html>