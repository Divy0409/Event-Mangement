<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

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
<title>EVENT MANAGEMENT | CATERING SERVICE</title>

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
					<h2>ALL EVENTS</h2>
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
				int pid = Integer.parseInt(request.getParameter("pid"));
				Connection cn = new DBUtil().getDBConnection();
				String qry1 = "select * from mainpackages where pid=?";
				PreparedStatement st1 = cn.prepareStatement(qry1);
				st1.setInt(1, pid);
				ResultSet rs1 = st1.executeQuery();
				while (rs1.next()) {
				%>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="profileupload/<%=rs1.getString(3)%>"></div>
						<div class="blog__item__text">
							<h5><%=rs1.getString(2)%></h5>
							<a href="cust-subevent.jsp?pid=<%=rs1.getInt(1)%>">go to
								subpackage</a> <a href="#">click here</a>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-12 col-sm-12">
					<h4><%=rs1.getString(4)%></h4>
				</div>
				<%
				}
				cn.close();
				%>
			</div>
			<%
			Connection c = new DBUtil().getDBConnection();
			String qr = "select * from mainpackages";
			PreparedStatement s = c.prepareStatement(qr);
			ResultSet r = s.executeQuery();
			while (r.next()) {
			%>
			<h5"<%=r.getInt(1)%>">
				<a href="cust-allevent.jsp?pid=<%=r.getInt(1)%>"><%=r.getString(2)%></a>
			</h5>
			<%
			}
			c.close();
			%>
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
