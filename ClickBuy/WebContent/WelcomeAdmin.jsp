<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
<script src="validateForm.js"> 
</script>
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
       <li><a href="SelectMcart.jsp">MonthlyCart</a></li>
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
		
					
					  <h3><%out.println("<h2>"+message+"<h2>");%></h3>
<form name="frm" action="AdminView.jsp" method="post" onSubmit="return validateFrm();">
<%
try{
PreparedStatement ps=DB.getConnection().prepareStatement("select distinct Uname from userproducts");
ResultSet  rs= ps.executeQuery();
 
%>
<table>

<tr><td><font size=4 color=#008000>Select User Name:</td>
<td><select name=t1>
	<option value="">-Select User Name-</option>

<%
			
				while(rs.next())
				{
					String Uname=rs.getString(1);
					%>
					<option  value="<%=Uname%>"><%=Uname%></option>
					<%
				}
					%>
					</select>
					<td><input type=submit value=Submit>
					</td>
					</form>
					</tr>
					<%
			}catch(Exception ee)
			{
				out.println(ee);
			}
	%>

</table>
     
         
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
  