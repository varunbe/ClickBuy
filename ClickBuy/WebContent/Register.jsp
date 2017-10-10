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
<script src="signup.js"> 
</script>
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
          <h2 id="slogan">Register...</h2>
          <%String message= "";
							  if(request.getAttribute("message")!= null){ 
							  	 message= (String)request.getAttribute("message");
							  	
							  }%>
			
						  <h5><%out.println("<h5>"+message+"<h5>");%></h5>
		  
		   <form name="signup" action="Register" method="get" onSubmit="return validateSignup();">
		    <%
			             int Uid=0;
			         		String sql = "select Uid from Register order by Uid desc limit 0,1";
							Statement pst = DB.getConnection().createStatement();
							ResultSet rs =pst.executeQuery(sql);
							if(rs!=null){
							   Uid=1;
							System.out.println("rs!= null");
								while(rs.next()){
								System.out.println("rs.next()");
									 Uid = rs.getInt("Uid");
									 Uid=Uid+7;
								}
			                }else{
			                System.out.println("rs!= null else");
			                		Uid=101;
			                 	}
			          %>
		  
		  
		  
		  
     <table>
      <tr><td>User ID</td><td><input type="text" name="Uid"  value="<%=Uid%>" readonly="readonly"/></td> </tr>
     <tr><td>User Name</td><td><input type="text" name="Uname" id="2"/></td> </tr>
	 <tr><td>Password</td><td><input type="password" name="pwd" id="2"/></td>  </tr>
	 <tr><td>User Type</td><td> <select name="Utype">
        <option >User</option>  
        <option >Admin</option>
      </select>
     </td> </tr>
	  <tr><td>Mobile No</td><td><input type="text" name="mobile" id="2"/></td></tr>
     <tr><td>EMail Id</td><td><input type="text" name="eid" id="2"/></td> </tr>
     <tr><td>Full Address</td><td><input type="text" name="address" id="2"/></td></tr> 
     <tr><td>Select Options:</td><td><select name="opt">
     
        <option >What is your favorite pastime?</option>
          <option >Who was your childhood hero?</option>
          <option >What was the name of your first school?</option>
          <option >Where did you meet your spouse?</option>
          <option >What is your favorite sports team?</option>
          <option >What is your father's middle name?</option>
          <option >What was your high school mascot?</option>
          <option >What make was your first car or bike?</option>
          <option >What is your pet's name?</option>
          </select>  
     </td> </tr>
	  <tr>
      <td>Secret Answer</strong></td>     
      <td><input type="text" name="ans" id="2"/></td> </tr>
      <tr><td><input type=submit value="Submit"> 
      <input type=reset value="Clear"></td> </tr>       
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
         <%String message1= "";
							  if(request.getAttribute("message1")!= null){ 
							  	 message1= (String)request.getAttribute("message1");
							  	
							  }%>
			
						  <h5><%out.println("<h5>"+message1+"<h5>");%></h5>
		  
       <form name="frm" action="login" method="post" onSubmit="return validateForm();">
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
            <li><a href="#">Groceries</a></li>
            <li><a href="#">Electronics</a></li>
            <li><a href="#">Stationary</a></li>
            <li><a href="#">Beauty</a></li>
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
  