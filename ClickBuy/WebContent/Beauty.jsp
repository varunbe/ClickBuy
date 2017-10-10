
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
	    <li><a href="monthlycart.html">Monthly Cart</a></li>
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
           <%String message= "";
							  if(request.getAttribute("message")!= null){ 
							  	 message= (String)request.getAttribute("message");
							  	
							  }%>
			
						  <h5><%out.println("<h5>"+message+"<h5>");%></h5>       
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<div style="width: 720px;overflow: auto;height: 320px" >
<h2 align="center"><font color="white">Beauty</font></h2>
<form name="frmOne" action="UserProducts" method="get" onSubmit="return validateSearch2();">


                      <h3>Welcome:<% if (session.getAttribute("Uname")!= null) {
                        String Uname=(String)session.getAttribute("Uname");
                        out.println(Uname);
                        session.setAttribute("Uname",Uname);
                        System.out.println("session.getAttribute:" + session.getAttribute("Uname"));
                        } %>
  		                </h3>
  		             






<table>

<tr>
<%
try{ 

PreparedStatement ps=DB.getConnection().prepareStatement("select model,image,price,adp from ImageUpload where itemname='Beauty';");
ResultSet  rs= ps.executeQuery();

while(rs.next()){%>
 <td><img src="uploads/<%=rs.getString("image")%>" width="100" height="100"/></td>
 <%}%>
  </tr><tr>
 <%rs.first();
 String S=null;
 do{
 S=rs.getString("model");
  %>
 
<td><h3><%=S %>
 <strike><%=rs.getString("price") %></strike> <%=rs.getString("adp") %></h3>
 Qty<input type="text" NAME = "<%=S%>"/> </td>
  <%}while(rs.next());%>
</tr>
<%
} catch (Exception e) {
e.printStackTrace();
}%>

<td><input type=submit value=Submit></td></tr>
</table>
</form>
</div>
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
 