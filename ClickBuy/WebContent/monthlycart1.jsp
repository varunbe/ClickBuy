<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page session="true" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Click Buy</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<!-- Shell -->
<div class="shell">
  
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">Click Buy</a></h1>
    
    <!-- Navigation -->
    <div id="navigation">
      <ul>
        <li><a href="ClickBuy.jsp" >Home</a></li>
	    <li><a href="ClickBuy.jsp">Logout</a></li>
        <li><a href="contactus.html">Contact Us</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  
  </div>
  <!-- End Header -->
  

  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
      
      <!-- Content Slider -->
      <div id="slider" class="box">
        <div id="slider-holder">
       
<form name="form" action="Mcart" method="get"  onSubmit="return validate1();">
  <h3>Welcome:<% if (session.getAttribute("Uname")!= null) {
                        String Uname=(String)session.getAttribute("Uname");
                        out.println(Uname);
                        session.setAttribute("Uname",Uname);
                        System.out.println("session.getAttribute:" + session.getAttribute("Uname"));
                        } %>
  		                </h3>
 
 
 
 <div style="width: 500px;overflow: auto;height: 300px" >
 <table border="0" cellpadding="10" cellspacing="10">
<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<table border="0" cellpadding="3" cellspacing="3">
<tr>
<tr bgcolor="#CCFFCC">
<td><b>Product</b></td>
<td><b>Qty</b></td>
</tr>
<tr bgcolor="#CCFFCC">
<%
try{ 
String  F_VC2NAME1[]=request.getParameterValues("c1");

statement=DB.getConnection().createStatement();

for(int i=0;i<F_VC2NAME1.length;i++){
%>
<tr bgcolor="#CCFFCC"><td><input type="hidden" name="product" value="<%=F_VC2NAME1[i] %>"/><%=F_VC2NAME1[i] %></td>
<td><input type="text" name="Qty" /></td></tr>
<% 
}
%>
</tr>
					<td><input type=submit value=Submit>
					</td>
					</tr>
					<%

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </table>
    </div>
   </form>


        </div>
 
      </div>
      <!-- End Content Slider -->
      

     <jsp:include page="common/voucher.jsp"></jsp:include>
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    

      <div id="sidebar">
      <!-- Login -->
      <div class="box search">
        <h2>Login <span></span></h2>
        <div class="box-content">
          <form action="#" method="post">
            <label>User</label>
            <input type="text" class="field" />
            <label>Password</label>
            <input type="password" class="field" />
	    <center>
            <select >
		<option value="User">User</option>
		<option value="Admin">Admin</option>
	    </select>
	    </center>
            <center>
            <input type="submit" class="search-submit" value="Login"  />
	    <a href="Register.jsp"><input type="button"  class="search-submit" value="Register"/></a> 
	    
            </center>
	   </form>
        </div>
      </div>
      <!-- End Login -->
      

      <!-- Categories -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="Groceries.jsp">Groceries</a></li>
            <li><a href="Electronics.jsp">Electronics</a></li>
            <li><a href="Stationary.jsp">Stationary</a></li>
            <li><a href="Beauty.jsp">Beauty</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->
    

  <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  

  <!-- Side Full -->
  <jsp:include page="common/common.jsp"></jsp:include>
  </div>
<!-- End Shell -->
</body>
</html>
