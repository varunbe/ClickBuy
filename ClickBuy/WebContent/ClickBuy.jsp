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
	    <li><a href="Register.jsp">Register</a></li>
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
          <ul>
	    <li><a href="giftvouchrs.html"><img src="css/images/intro.jpg" alt="" /></a></li>	
            <li><a href="#"><img src="css/images/grocery.jpg" alt="" /></a></li>
            <li><a href="#"><img src="css/images/iphone32.jpg" alt="" /></a></li>
            <li><a href="#"><img src="css/images/stationary.jpg" alt="" /></a></li>
	    <li><a href="#"><img src="css/images/perfumes.png" alt="" /></a></li>
          </ul>
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> </div>
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
         <%String message1= "";
							  if(request.getAttribute("message1")!= null){ 
							  	 message1= (String)request.getAttribute("message1");
							  	
							  }%>
			
						  <h5><%out.println("<h5>"+message1+"<h5>");%></h5>
		  
         <form name="frm" action="login" method="post" onSubmit="return validateForm()">
            <label>User</label>
            <input type="text" class="field" name="Uname" />
            <label>Password</label>
            <input type="password" class="field" name="pwd" />
	    <center>
            <select name="Utype"  >
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
