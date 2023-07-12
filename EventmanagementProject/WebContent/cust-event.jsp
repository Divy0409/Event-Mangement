
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>EVENT MANAGEMENT</title>

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
	<%@ include file="cust-header.jsp"%>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-blog set-bg" data-setbg="eventpic/event.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>Choose An Event</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<!-- Blog Section Begin -->
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<% 	            	 		     
 						   Connection cn1=new DBUtil().getDBConnection(); 
 						   String qry1="select * from mainpackages";
 						   PreparedStatement st1=cn1.prepareStatement(qry1);
 						   ResultSet rs1=st1.executeQuery();
 						   while(rs1.next())
 						   {
 							  %>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="profileupload %>"></div>
						<div class="blog__item__text">
							<h4>
								<%=rs1.getString(2) %></h4>
							<img
								src="profileupload\<%=rs1.getString(3) %>"
								alt=""> <a href="cust-allevent.jsp?pid=<%=rs1.getInt(1)%>">READ
								MORE</a>
						</div>
					</div>
				</div>
				<%
 			   }
 			   cn1.close();
        %>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->
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
