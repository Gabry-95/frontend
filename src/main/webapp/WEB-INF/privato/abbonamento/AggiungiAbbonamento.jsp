<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Aggiungi Abbonamento</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/logo.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" />
</head>
<body id="page-top">

	<!-- Navigation-->
	<%@ include file="/WEB-INF/privato/navbarPrivato.jsp"%>

	<div class="container py-5">
		<form class="row g-3">
			<div class="col-md-6">
				<label for="inputEmail4" class="form-label">Codice Fattura</label> <input
					type="text" class="form-control" name="codice-fattura">
			</div>
			<div class="col-md-6">
				<label for="inputPassword4" class="form-label">Matricola
					Utente</label> <input type="text" class="form-control" name="matricola">
			</div>
			<div class="col-md-6">
				<label for="inputCity" class="form-label">Data di Scadenza</label> <input
					type="date" class="form-control" name="data">
			</div>
			<div class="col-md-4">
				<label for="inputState" class="form-label">Tipologia
					Abbonamento</label> <select name="tipo" class="form-select">
					<option selected>Standard</option>
					<option>Premium</option>
					<option>Gold</option>
				</select>
			</div>
			<div class="col-md-2">
				<label for="inputZip" class="form-label">Limite Ingresso</label> <input
					type="text" class="form-control" name="limite-ingresso"
					value="<% 
        	String tipologia = request.getParameter("tipo");
        	if (tipo == null || tipo.equals('Standard')) {
            	out.print('3');
        	}
    		%>">
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-primary">Aggiungi
					Abbonamento</button>
			</div>
		</form>
	</div>

	<!-- Footer-->

	<%@ include file="/WEB-INF/Footer.jsp"%>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
