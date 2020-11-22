<!doctype html>
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
<title>Successful</title>
<style>
body {
	background:
		url('https://images.unsplash.com/photo-1508614999368-9260051292e5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60');
	background-size: cover;
	height: 100vh;
	width: 100%;
	background-position: center;
	overflow: hidden;
}
</style>

</head>
<body>

	<div class="container-fluid p-0 m-0">
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
					<li class="nav-item"><a class="nav-link" href="all-notes.jsp">Show
							Notes</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="container text-center font-weight-bold">
		<h1 class="m-5 text-success"
			style="font-family: 'Raleway', sans-serif; font-size: 50px; font-weight: 600; line-height: 72px;">Note
			Successfully Added</h1>
		<a class="m-5 text-capitalize text-primary" href="add-note.jsp"
			style="font-family: 'Palatino Linotype', 'Book Antiqua', Palatino, serif; font-size: 40px;">Add
			New Note</a> <br> <br> <a
			class="m-5 text-capitalize text-danger" href="all-notes.jsp"
			style="font-family: 'Palatino Linotype', 'Book Antiqua', Palatino, serif; font-size: 40px;">Show
			All notes</a>
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