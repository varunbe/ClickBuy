
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
           <h2>Upload Products</h2>
            <%String message= "";
							  if(request.getAttribute("message")!= null){ 
							  	 message= (String)request.getAttribute("message");
							  	
							  }%>
			
						  <h5><%out.println("<h5>"+message+"<h5>");%></h5>
	<form name="frm4" action="ImageUpload" method="post" enctype="multipart/form-data" onSubmit="return validateDetails();" >
	
	 <table border="0" cellpadding="0" cellspacing="6" width="50%">
  
<tr><td><font color=#008000>Product Type</font></td><td> <select name="itemname">
        <option >Groceries</option>  
        <option >Electronics</option>
        <option >Stationary</option>  
        <option >Beauty</option>
      </select>
     </td> </tr>

<tr><td> <font color=#008000>Price</font></td>
           <td><input type="text" name="price"/>
           </td></tr>
<tr><td> <font color=#008000>Discount</font></td>
           <td><input type="text" name="discount"/>%
           </td></tr>

<tr><td><font color=#008000>Image:</font></td>
<td><input type='file' name='image'/></td></tr>	

<tr><td> <font color=#008000>Product</font></td>
           <td><input type="text" name="model"/>
           </td></tr>
	                              			                            
<tr align="center">
  <td colspan="2">
  <input type="submit" value="Continue"/>
  <input type="reset" value="clear"/>
  </td>
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
  