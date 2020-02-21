<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	crossorigin="anonymous">
</head>
<body>
	<%
		String user = (String) session.getAttribute("LOGGED_IN_USERNAME");
		if (user != null) {
	%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample08" aria-controls="navbarsExample08"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse justify-content-md-center"
			id="navbarsExample08">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="Menu1.jsp">CollegeFeeRegister <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="">Link</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown08"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
					<div class="dropdown-menu" aria-labelledby="dropdown08">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<%
		String infoMessage = (String) request.getAttribute("infoMessage");
			String errorMessage = (String) request.getAttribute("errorMessage");
			if (infoMessage != null)
				out.println(infoMessage);
			if (errorMessage != null)
				out.println(errorMessage);
		} else {
			response.sendRedirect("Login.jsp");
		}
	%>

</body>
</html>