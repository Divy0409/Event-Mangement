<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Event Management</title>

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


	<%@ include file="header.jsp"%>

	<!-- Shop Details Section Begin -->
	<section class="shop-details">
		<div class="product__details__pic">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__breadcrumb">
							<span style="color:red;">Concert Event Details</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="concert/concert1.jpeg"></div>
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="concert/concert2.jpeg"></div>
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="concert/concert3.jpeg"></div>
							</a></li>
							
						</ul>
					</div>
					<div class="col-lg-6 col-md-9">
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="concert/concert1.jpeg" alt="">
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="concert/concert2.jpeg" alt="">
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="concert/concert3.jpeg" alt="">
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product__details__content">
			<div class="container">
				
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab" style="color:black;">Description</a></li>
							
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">You can organize this type of event for promotional 
										 events for an artist's upcoming music or movie.</p>
										<div class="product__details__tab__content__item">
											<h5>Event Information</h5>
											<p>This event contains several aspects to be fulfilled as it is
											   an concert. And every thing that will be organized has to
											   be precise and Perfect.</p>
											<p>And for that our team takes several quality measures of food, 
											   decoration and Management of the event. We assure that there
											   will be no issues throughout the event. At the time of booking 
											   you will have to select a sub-package which can fulfill your
											   requirement for your event.</p>
										</div>
										<div class="product__details__tab__content__item">
											<h5>Package Information</h5>
											<p>After selecting an event you will have to choose a sub-package
											   for that event. These packages will be dependent on your requirement.</p>
											<p>1. Silver Package : Decoration Only</p>
											<p>2. Golden Package : Decoration And Catering</p>
											<p>3. Diamond Package : Decoration, Catering And Music</p>
											<p> Customer will Be able to modify package for his/her requirements.</p>         
										</div>
									</div>
								</div>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Details Section End -->

	<!-- Related Section Begin -->
	<section class="related spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="related-title">Available Packages</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="subpackage/silver1.jpeg">
							<span class="label">New</span>
							
						</div>
						<div class="product__item__text">
							<h6>silver</h6>
							<a href="cust-event.jsp" class="add-cart">Book Now</a>
							
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="subpackage/gold1.jpeg">
							
						</div>
						<div class="product__item__text">
							<h6>Gold</h6>
							<a href="cust-event.jsp" class="add-cart">Book Now</a>
							
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
					<div class="product__item sale">
						<div class="product__item__pic set-bg"
							data-setbg="subpackage/diamond1.jpeg">
							<span class="label">Sale</span>
							
						</div>
						<div class="product__item__text">
							<h6>Multi-pocket Chest Bag</h6>
							<a href="cust-event.jsp" class="add-cart">Book Now</a>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- Related Section End -->


	<%@ include file="footer.jsp"%>

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

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