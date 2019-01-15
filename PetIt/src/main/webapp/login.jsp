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
<title>PetIt Login</title>
	<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>

<style>
body {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    padding-top: 40px;
    padding-bottom: 40px;
    background-color: #f5f5f5;
}
	<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
		<jsp:include page="frammenti/css/navbar.css"></jsp:include>
	


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
</style>
</head>
<body class="text-center">
	<jsp:include page="frammenti/html/navbar.html"></jsp:include>

	<div class="container">
		<div class="row">
			<div class=" col-md-4 offset-md-4"  >
				<div class="row" >
					<div class="col align-self-center">
						<form class="form-signin">
							<h1 class="h3 mb-3 font-weight-normal" class="row">Please
								sign in</h1>
							<div>
								<label for="inputEmail" class="sr-only">Email address</label> 
								<input type="email" id="inputEmail" class="form-control" 
								placeholder="Email address" required="" autofocus="" 
								style="margin-bottom: 2px;">
								<label for="inputPassword" class="sr-only">Password</label> 
								<input type="password" id="inputPassword" class="form-control"
									placeholder="Password" required="">
								<div class="checkbox mb-3">
									<label> 
									<input type="checkbox" value="remember-me">
										Remember me
									</label>
								</div>
								<button class="btn btn-lg btn-outline-success btn-block"
									type="submit">Sign in</button>
								<p class="mt-5 mb-3 text-muted">© 2017-2018</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>