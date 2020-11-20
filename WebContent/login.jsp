<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

	<jsp:include page="/Assets/header.jsp"></jsp:include>
	<div class="container col-md-4 col-md-offset-3" style="overflow: auto; margin-top: 50px">
		<div class="alert  center" role="alert">
				<p style="color:red;">${NOTIFICATION}</p>
			</div>
		<h1 style="text-align:center"  >Login Form</h1>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<div class="form-group">
				<label for="uname">User Name:</label> <input type="text"
					class="form-control" id="username" placeholder="User Name"
					name="username" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>

			<div class="container col-2 "><button type="submit" class="btn btn-primary" style="position">Submit</button></div>
			
		</form>
	</div>
	<jsp:include page="/Assets/footer.jsp"></jsp:include>
</body>
</html>