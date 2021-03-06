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
<title>To Do Notes</title>
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
					<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
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

	<div class="container">
		<div class="card">
			<img src="icons/notes.png" class="card-img-top m-2 mx-auto"
				alt="icon.png" style="max-width: 450px;">
			<div class="card-body text-center">
				<br>
				<h2 class="text-info">Start Making Notes</h2>
				<br> <a href="add-note.jsp" class="btn btn-primary">Getting
					Started</a>
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