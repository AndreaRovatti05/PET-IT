<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="frammenti/utility/boostrap.html"></jsp:include>
<jsp:include page="/frammenti/utility/utilitynavbar.html"></jsp:include>

<title>Impostazioni</title>
<style type="text/css">
<jsp:include page="frammenti/css/modificadatistyle.css"></jsp:include>
<jsp:include page="frammenti/css/boxstyle.css"></jsp:include>
<jsp:include page="frammenti/css/navbarstyle.css"></jsp:include>
</style>
</head>
<body>

	<jsp:include page="frammenti/html/navbar.html"></jsp:include>

	<div class="marginealto marginelato">
		<div class="row">
			<div class="col-3">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-item-action active b" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Modifica Dati personali</a> 
					<a class="list-group-item list-group-item-action b" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Utenti bloccati</a> 
					<a class="list-group-item list-group-item-action b" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Registrazione Nuovo utente</a> 
					<a class="list-group-item list-group-item-action b" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Assistenza</a>
				</div>
			</div>
			<div class="col-9">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
						<jsp:include page="frammenti/html/ModificaDati.html"></jsp:include>
					</div>
					<div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
					<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
						<jsp:include page="frammenti/html/RegistrazioneAdmin.html"></jsp:include></div>
					<div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="frammenti/utility/script.html"></jsp:include>
</body>
</html>