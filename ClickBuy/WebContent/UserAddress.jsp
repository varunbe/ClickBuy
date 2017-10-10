<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
         
			<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<form action="EmailSendingServlet" method="post">
		<table border="0" width="35%" align="center">
			<caption><h2>Send E-mail To User</h2></caption>

			<%


String Uname =request.getParameter("Uname");
try{ 

PreparedStatement ps=DB.getConnection().prepareStatement("select eid from register where Uname='"+Uname+"';");
ResultSet  rs= ps.executeQuery();

while(rs.next()){						
%>
 <tr><td width="50%">User Id:</td><td><input type="hidden" name="recipient" size="50" value="<%=rs.getString(1) %>"/><%=rs.getString(1) %></td></tr>

<% }

} catch (Exception e) {
e.printStackTrace();
}%>

<tr>
				<td>Subject:</td>
				<td><input type="hidden" name="subject" value="msg from Admin"/>msg from Admin</td>
			</tr>
			
				
				
			

		
<%
try{ 
String Uname1=request.getParameter("Uname"); 
System.out.println(Uname);
PreparedStatement ps=DB.getConnection().prepareStatement("SELECT sum(price) FROM userproducts where Uname='"+Uname1+"'");
ResultSet  rs= ps.executeQuery();
%>

<%while(rs.next()){
%>
<tr>
 <td>Content:</td>
 <td><textarea rows="4" cols="39" name="content">
 <%String tp = rs.getString(1);
  
    String number =request.getParameter("code");
    double newprice=Integer.parseInt(tp)-(Integer.parseInt(number));
    out.println("Final Price:"+newprice+" Thanks for Shopping with us Your products reach your door step with in 2 days. Please Pay Cash immediately on receiving the delivery.... " );
  %>
</textarea></td>
			</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
<tr>
				<td colspan="2" align="center"><input type="submit" value="Send"/></td>
			</tr>

</table>




	              
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
  