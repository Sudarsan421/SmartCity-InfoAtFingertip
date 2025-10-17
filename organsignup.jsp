<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	<h2>Welcome to Organisation Registration</h2>
        <div class="article">
         
<form name="f1" method="get" action="organsignup1.jsp"> 

	<b>Enter the name of your Organisation with Pincode</b>
	<table>
	<tr>
	<td>Type:</td>
	<td><input type="text" name="t0" value="<%=request.getParameter("select")%>" readonly="true" /></td>
	<tr>
	<td>Name:</td>
	<td><input type="text"  name="t1" /></td>
	</tr>
	<tr>
	<td>Pincode:</td>
	<td><input type="text"  name="t2" /></td>
	</tr>
	<tr><td><input type="submit" value="GO" /></td></tr>
	</table>
		</form>
 
          
          <p>&nbsp;</p>
        </div>
		<br /><br /><br /><br /><br /><br /><br />
      </div>
      <div class="sidebar"> 
        <div class="gadget">
		
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div> 
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
