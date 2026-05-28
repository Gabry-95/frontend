<%@page import="it.pale.tweb.dao.beans.News"%>
<%@page import="it.pale.tweb.dao.beans.Istruttore_sala"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="it.pale.tweb.dao.beans.Palestra"%>
<%@page import="it.pale.tweb.dao.beans.Corso"%>
<%@page import="it.pale.tweb.dao.beans.Istruttore_sala"%>
<%@page import="it.pale.tweb.dao.beans.Personal_trainer"%>
<%@page import="java.util.Vector"%>
<%@page import="it.pale.tweb.dao.utils.Utils"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Aurora Fitness</title>
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
<link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">

	<%
	long telefono = (long) request.getAttribute("telefono");
	Vector<Corso> corsi= (Vector<Corso>)request.getAttribute("corsi");
	Vector<Istruttore_sala> is= (Vector<Istruttore_sala>)request.getAttribute("is");
	Vector<Personal_trainer> pt= (Vector<Personal_trainer>)request.getAttribute("pt");
	Vector<News> news= (Vector<News>)request.getAttribute("news");
	%>

	<!-- Navigation-->
	<%@ include file="/Navbar.jsp"%>

	<div class="container py-5">
		<h3 class="mb-1">Numero di Telefono</h3>
		<p><%=telefono%></p>
		<br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Tipo</th>
					<th scope="col">Costo</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Corso c : corsi) {
				%>
				<tr>
					<td><%=c.getId()%></td>
					<td><%=c.getTipo()%></td>
					<td><%=c.getNome()%></td>
					<td><%=c.getCosto()%> €</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<div class="container py-5">
		<h3 class="mb-1">Istruttori di Sala</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Cognome</th>
				</tr>
			</thead>
			<tbody>
				<%
				int k=0;
				for (Istruttore_sala s : is) {
					k++;
				%>
				<tr>
					<td><%=k%></td>
					<td><%=s.getNome()%></td>
					<td><%=s.getCognome()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<div class="container py-5">
		<h3 class="mb-1">Personal Trainer</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">Cognome</th>
				</tr>
			</thead>
			<tbody>
				<%
				k=0;
				for (Personal_trainer ptr : pt) {
					k++;
				%>
				<tr>
					<td><%=k%></td>
					<td><%=ptr.getNome()%></td>
					<td><%=ptr.getCognome()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<div class="container py-5">
		<h3 class="mb-1">Bacheca Notizie Palestra</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Data</th>
					<th scope="col">News</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (News n : news) {
				%>
				<tr>
					<td><%=Utils.dateToString(n.getData())%></td>
					<td><%=n.getTesto()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<!-- Footer-->
	<%@ include file="/Footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
