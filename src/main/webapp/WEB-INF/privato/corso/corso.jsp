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
<title>Corsi</title>
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
<link href="/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">

	<!-- Navigation-->
	<%@ include file="/WEB-INF/privato/navbarPrivato.jsp"%>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="/assets/img/uni_logo.png"
				alt="University logo" />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Manage students</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p></p>
		</div>

		<div class="col-6">
			<p class="masthead-subheading font-weight-light mb-0">
<form class="row g-3" action="/privato/corso/Corso" method="post">
				<a href="aggiungi.html">
					<button type="button" class="btn btn-secondary btn-lg">Add
						student</button>
				</a>

			</p>
		</div>

		<p></p>
		<div class="container align-items-center">
			<table class="table table-secondary table-hover">
				<thead>
					<tr>
						<th scope="col">Registration Number</th>
						<th scope="col">First Name</th>
						<th scope="col">Date of Birth</th>
						<th scope="col">Degree</th>
						<th scope="col">Modify</th>
						<th scope="col">Eliminate</th>
					</tr>
				</thead>
				<tbody>
					<%-- <%
					for (Studente s : studenti) {
					%>
					<tr>
						<td>
							<%=
							s.getMatricola()
							%>
						</td>
						<td><%= s.getNome() %></td>
						<td><%= Utils.dateToString(s.getData_di_nascita()) %></td>
						<% 
						String CdlNome="Nessuno";
						if (s.getCdl()!=null){
							for (CDL c:corsi){
								if(c.getId()==s.getCdl()){
									CdlNome=c.getNome();
									break;
								}
								
							}
								
						}
						%>
						<td><%= CdlNome %></td>
						<td><a href="RichiediModifica?matricola=<%= s.getMatricola()%>"> <!-- Visto che ogni pagina deve riferirsi ad uno specifico studente si passa un parametro (l'id); inoltre dobbiamo trovare un modo per passare il parametro con metodo POST e non GET -->
								<button type="button" class="btn btn-secondary btn-lg">Modify</button>
						</a></td>
						<td><a href="/privato/studente/Elimina?matricola=<%= s.getMatricola()%>">
								<button type="button" class="btn btn-secondary btn-lg">Eliminate</button>
						</a></td>

					</tr>
					<%
					}
					%> --%>
				</tbody>
			</table>
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