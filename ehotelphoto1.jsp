<%@ include file="dbcon.jsp" %>  
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
<style type="text/css">
<!--
.style1 {
	font-size: large;
	font-weight: bold;
	color: #000000;
}
.style7 {color: #000000; font-size: small; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="about.jsp">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="emptop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	   Welcome <%= ((String) session.getAttribute("name")).toUpperCase() %> to</span> Hotel <a href="ehotelview.jsp"> View    </a>     
        <div class="article">
	


 
		
		</div>
		
 UPLOAD A PHOTO<br>
 
<% 
String phid=request.getParameter("a1");
String fldid=request.getParameter("a2");
session.removeAttribute("phid");
session.removeAttribute("fldid"); 
session.setAttribute("phid",phid);
session.setAttribute("fldid",fldid);
%>

<form action="upphoto1" method="post" enctype="multipart/form-data" class="style5">
<center>
<table border="1" height="62" width="366">
<tr>
	<td>Choose the file </td>
	<td><input name="file" type="file"></td>
</tr>
		
<tr>
	<td colspan="2"> </td>
</tr>

<tr>
	<td colspan="2" align="center"><input type="submit" value="Upload"> </td>
</tr> 
</table>
</center>
</form> 




	</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
        </div>
        
      </div>
	  

      <div class="clr"></div>
    </div>
    </div>
  </div>
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
