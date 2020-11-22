<!doctype html>
<%@page import="org.hibernate.Query"%>
<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Castoro&display=swap"
	rel="stylesheet">
<title>All Note</title>
</head>
<body>

	<div class="container-fluid m-0 p-0">
		<nav class="navbar navbar-expand-lg navbar-dark purple">
			<a class="navbar-brand" href="index.jsp">Note Taker</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="add-note.jsp">Add
							Note</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="all-notes.jsp">Show Notes</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="container">
		<br>
		<h1 class="text-capitalize text-center text-primary"
			style="font-family: 'Castoro', serif; text-decoration:underline;">All Notes</h1>

		<div class="row">
			<div class="col-12">
				<%
					Session s = FactoryProvider.getSessionFactory().openSession();
				Query query = s.createQuery("from Note");
				List<Note> list = query.list();
				int count = 0;

				for (Note note : list) {
					count++;
				%>

				<div class="card mt-3">
					<img class="card-img-top pl-4 pt-4 mx-auto"
						style="max-width: 100px;" src="icons/icon.png" alt="icon.png">
					<div class="card-body">
						<h2 class="card-title">
							<%=count + ". " + note.getTitle()%></h2>
						<h6 class="card-subtitle mb-2">
							Date :
							<%=note.getDate()%></h6>
						<p class="card-text">
							Description :
							<%=note.getContent()%></p>
						<div class="container text-center">
							<a href="delete-note?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit-note.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
					}

				s.close();
				%>
			</div>
		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>