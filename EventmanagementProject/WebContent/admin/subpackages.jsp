
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

 <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Pluto - Responsive Bootstrap Admin Panel Templates</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icon -->
      <link rel="icon" href="images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>
<body>

<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>


 <body class="inner_page login">
      <div class="full_container">
         <div class="container">
            <div class="center verticle_center full_height">
               <div class="login_section">
                  <div class="logo_login">
                     <div class="center">

                     </div>
                  </div>
                  
                  <div class="login_form">
                    <form  action="../PackagesController" method="post" enctype="multipart/form-data">
                    
                     
                     
                     
                        <fieldset>
                         <h1> Sub packages</h1>                                              
                        <label>Select Main package</label>
                     	<div class="field " >
						 <select class="form-control" name="pid">
 						 <option>----select main package---</option>
 						 <% 						   
 						   Connection cn=new DBUtil().getDBConnection(); 
 						   String qry="select * from mainpackages";
 						   PreparedStatement st=cn.prepareStatement(qry);
 						   ResultSet rs=st.executeQuery();
 						   while(rs.next())
 						   {
 							   %>
 							   <option value="<%=rs.getInt(1)%>"><%=rs.getString(2) %></option>
 							   <% 
 							   
 						   }
 						 cn.close();
 						 %>
  							</select>
							</div>
                           <div class="field">
                              <label class="label_field">SubPackageName</label>
                              <input type="text" name="spname" placeholder="Enter package name" >
                           </div>
                           
                            <div class="field">
                              <label class="label_field">Price</label>
                              <input type="text" name="price" placeholder="Enter package price" >
                           </div>
                           
                           <div class="field">
                              <label class="label_field">Image upload</label>
                              <input type="file" name="images" placeholder="Insert image pls" >
                           </div>
                          
                           <div class="field margin_0">
                              <label class="label_field hidden">hidden label</label>
                              <button  type="submit" name="action" value="addsubpackages"class="main_bt">Addsubpackages</button>
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
               
<%@ include file="footer.jsp" %>



 <!-- jQuery -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js/Chart.min.js"></script>
      <script src="js/Chart.bundle.min.js"></script>
      <script src="js/utils.js"></script>
      <script src="js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      <script src="js/chart_custom_style1.js"></script>

</body>
</html>
