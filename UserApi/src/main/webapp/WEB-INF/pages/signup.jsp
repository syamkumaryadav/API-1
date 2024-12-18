<html xmlns:th="http://www.thymeleaf.org">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>SignUp</title>
</head>
<body>
	<div class="container">
		<h1>SignUp</h1>
		<form th:action="signup" method="post">
			<div class="form-group">
				<label>First Name :</label><input type="text"
					placeholder="Enter first your name" class="form-control" required name="firstName">
			</div>
			<div class="form-group">
				<label>Last Name :</label><input type="text"
					placeholder="Enter last your name" class="form-control"
					required name="lastName">
			</div>
			<div class="form-group">
				<label>Mobile No :</label><input type="tel" pattern="[0-9]{10}"
					placeholder="*******543" class="form-control" required name="mobileNo">
			</div>
			<div class="form-group">
				<label>Email : </label> <input type="email" class="form-control"
					id="username" placeholder="*******@gmail.com" required="required"
					pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" name="email">
			</div>
			<div class="form-group">
				<label>password : </label> <input type="email" class="form-control"
					id="username" placeholder="*********" required="required" 
					pattern="^(?=.*\d)(?=.*[!@#$%^&*?]).{6,}$" name="password">
				<p>Password must Be Character, numbers, Symbols</p>
			</div>
			<div class="form-group">
				<label>Address:</label><input type="text" placeholder="Enter your address..."
					class="form-control" required name="address">
			</div>
			<div class="form-group">
				<label>Date Of Birth :</label><input type="date"  placeholder="eg:- 03-12-2003"
					class="form-control"required name="dateOfBirth">
			</div>
			<button class="btn btn-primary" type="submit">SignUp</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<p>
				I Have Have Already Account ? <a href="login"> Login </a>
			</p>
		</form>
	</div>
</body>
</html>