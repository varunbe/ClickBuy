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
	    <li><a href="ImageUpload.jsp" >ProductUpload</a></li>
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
 
<form action="UserAddress.jsp" method="get">
<% String Uname1=request.getParameter("t1");%> 

 <div style="width:600px;overflow: auto;height:300px" >
 <table border="1" cellpadding="20" cellspacing="10">           
<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<tr>
<td>
<table border="0" cellpadding="3" cellspacing="3">
<h2>Products List Of: <tr><td><input type="hidden" name="Uname" value="<%=(Uname1)%>"><%=(Uname1)%></td></tr></h2>
<tr>
<tr bgcolor="#8B0000">
<td><b>Products</b></td>
<td><b>Qty</b></td>
<td><b>Price</b></td>
<td><b>Date</b></td>
<td><b>Time</b></td>
</tr>
<%
try{ 
String Uname2=request.getParameter("t1");   
 statement=DB.getConnection().createStatement();
 String sql =" select * from userproducts where Uname='"+Uname2+"'";

 resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
</tr>
<% 
}
String sql1 ="SELECT sum(price) FROM userproducts where Uname='"+Uname1+"'";

ResultSet rs = statement.executeQuery(sql1);%>
<td><b>Total Price</b></td>
<%while(rs.next()){
%>
<tr bgcolor="#DEB887">

<td><%=rs.getString(1) %></td>
</tr>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</td>
<td>

  <table>
<td><font size=4 color=#008000>Discount Code:</font></td>
 
<tr><td><input type="radio" name="code" value="200">AE131=200</td></tr>
<tr><td><input type="radio" name="code" value="300">AE132=300<br></td></tr>
<tr><td><input type="radio" name="code" value="150">AE133=150</td></tr>
<tr><td><input type="submit" value="submit"/></td></tr>
</td>
  </table>

</td>
   
</tr>


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
            <li><a href="Groceries1.jsp">Groceries</a></li>
            <li><a href="Electronics1.jsp">Electronics</a></li>
            <li><a href="Stationary1.jsp">Stationary</a></li>
            <li><a href="Beauty1.jsp">Beauty</a></li>
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
 