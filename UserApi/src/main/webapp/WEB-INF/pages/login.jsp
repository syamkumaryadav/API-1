<!DOCTYPE html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<meta charset="UTF-8">
</head>
<body>
	<div class="container">
		<h1 class="mt-5">Login </h1>
		<h3 class="text-success ">${msg}</h3>
		<form action="login" method="post">
			<div class="form-group">
				<label>Email : </label> <input type="text" class="form-control" id="username"
				  placeholder="*******@gmail.com"
				 required="required"  name="email">
				 <!-- pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"-->
			</div>
			<div class="form-group">
				<label>password : </label> <input type="password" class="form-control" id="username"
				  placeholder="*********"
				 required="required" name="password">
				 <!--pattern="^(?=.*\d)(?=.*[!@#$%^&*?]).{6,}$"-->
				 <p>Password must Be Character, numbers, Symbols</p>
			</div>
			<button class="btn btn-primary" type="submit"> Login </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p> I Don't Have Account ? <a href="signup"> SignUp </a></p>
		</form>
	</div>
</body>
</html>