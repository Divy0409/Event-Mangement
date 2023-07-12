<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Event Management Login</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="regfonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="regcss/style.css">
</head>
<body>

	<div class="main">

		<div class="container">
			<div class="booking-content">
				<div class="booking-image">
					<img class="booking-img" src="regimages/form-img.jpg"
						alt="Booking Image">
				</div>
				<div class="booking-form">
					<form  method="post"
						action="CustomerLoginController">
						<h2>login To Your Account!</h2>
						<div class="form-group form-input">
							<label>Username</label> 
							<input type="text" class="form-control required-validate" id="username"
											name="username" placeholder="username">

						</div>
						<div class="form-group form-input">
							<label>Password</label> 
							<input type="password" class="form-control required-validate" id="sitepass"
											name="password" placeholder="Password">
						</div>



						<div class="form-group form-submit">
							<input type="submit" class="genric-btn info-border" name="action"
								value="Login"> <input type="submit"
								class="genric-btn info-border" name="action" value="Cancel">
						</div>
						<div>
							<p>
								Not a registered user? <a href="cust-registration.jsp">Register!</a>
							</p>
						</div>
				</div>
				</form>
			</div>
		</div>
	</div>

	</div>
	

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="regjs/main.js"></script>
</body>
</html>