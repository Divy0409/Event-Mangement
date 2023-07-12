<!DOCTYPE html>
<%@page import="com.model.Registrationmodel"%>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<%@ include file="cust-header.jsp"%>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__text">
						<h4>Event Booking Form</h4>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<form method="post" action="CustomerBookController">
					<div class="row">
						<div class="col-lg-8 col-md-6">
							<%
                          Registrationmodel rmodel=(Registrationmodel)session.getAttribute("cmodel");                                                              
                         %>
							<h6 class="checkout__title">Order Details</h6>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											First Name<span>*</span>
										</p>
										<input type="text" name="username" style="color:black;"
											value="<%=rmodel.getUsername() %>">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Last Name<span>*</span>
										</p>
										<input type="text" style="color:black;">
									</div>
								</div>
							</div>							
							<div class="checkout__input">
								<p>
									Address<span>*</span>
								</p>
								<input type="text" placeholder="Street Address" style="color:black;"
									class="checkout__input__add">
								 <input type="text"placeholder="Apartment, suite, unite ect (optinal)"> <input
									type="text" name="address" style="color:black;" 
									value="<%=rmodel.getAddress() %>">
							</div>
							<div class="checkout__input">
								<p>
									Town/City<span>*</span>
								</p>
								<input type="text" name="city" style="color:black;" value="<%=rmodel.getCity() %>">

							</div>
							<div class="checkout__input">
								<p>
									Country/State<span>*</span>
								</p>
								<input type="text" style="color:black;">
							</div>
							<div class="checkout__input">
								<p>
									Postcode / ZIP<span>*</span>
								</p>
								<input type="text" style="color:black;">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Phone<span>*</span>
										</p>
										<input type="text" name="mobileno" style="color:black;"
											value="<%=rmodel.getMobileno() %>">
									</div>
										<div class="row">
										<div class="col-lg-6">
											<div class="checkout__input">
												<p>
													OtherPhoneNo<span>*</span>
												</p>
												<input type="text" name="amobileno">
											</div>

										</div>									
										<div class="col-lg-6">
											<div class="checkout__input">
												<p>
													Email<span>*</span>
												</p>
												<input type="text" name="email" style="color:black;"
													value="<%=rmodel.getEmail() %>">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="checkout__input">
												<p>
													package name<span>*</span>
												</p>
												<input type="text" name="spname" style="color:black;"
													value="<%=request.getParameter("spname") %>">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="checkout__input">
												<p>
													price<span>*</span>
												</p>
												<input type="text" name="price" style="color:black;"
													value="<%=request.getParameter("price") %>">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="checkout__input">
												<input type="hidden" name="spid" style="color:black;"
													value="<%=Integer.parseInt(request.getParameter("spid"))%>">
												<input type="hidden" name="customerid" style="color:black;"
													value="<%=rmodel.getCustomerid() %>">
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="checkout__input__checkbox">
								<label for="diff-acc"> Note about your order, e.g,
									special noe for delivery <input type="checkbox" id="diff-acc">
									<span class="checkmark"></span>
								</label>
								
							</div>
							<div class="checkout__input">
								<p>
									Order notes<span>*</span>
								</p>
								<input type="text" style="color:black;"
									placeholder="Notes about your order, e.g. special notes for delivery.">
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4 class="order__title">Your order</h4>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> Create an account? <input
										type="checkbox" id="acc-or"> <span class="checkmark"></span>
									</label>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="checkout__input__checkbox">
									<label for="payment"> Check Payment <input
										type="checkbox" id="payment"> <span class="checkmark"></span>
									</label>
								</div>
								<div class="checkout__input__checkbox">
									<label for="paypal"> Paypal <input type="checkbox"
										id="paypal"> <span class="checkmark"></span>
									</label>
								</div>
								<button type="submit" class="site-btn" name="action"
									value="Book">Book</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->
<%@ include file="footer.jsp"%>


	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
