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
.style2 {font-size: small}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to  </span> Room <a href="eroomview.jsp"> View</a>        
        <div class="article">
		</div>

<% 
String hid=request.getParameter("a1");
try{
ResultSet rs= st.executeQuery("select * from hotel where hid='"+hid+"'");
if(rs.next()){
%>
<form action="eroom2.jsp" method="post">
<input type="hidden" name="hid" value="<%=hid%>" />
<table width="622" height="176"> 
<tr><td><span class="style7 style2">Hotel Name</span></td> 
<td><span class="style8 style2"><%=rs.getString(4)%></span></td></tr>
<tr><td><span class="style7 style2">Size</span></td> 
<td><input name="size" type="text" /></td></tr>
<tr><td><span class="style7 style2">Facility</span></td> 
<td><input type="text" name="facility" /></td></tr>
<tr><td><span class="style7 style2">Price</span></td> 
<td><input type="text" name="price" /></td></tr>
<tr><td><span class="style7 style2">No. of Room</span></td> 
<td><input type="text" name="noroom" /></td></tr>
<tr><td></td> 
<td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
</table>
</form>
<%
}
con.close();
}catch(Exception e){   out.print(e);   }   
%>


	  </div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
        </div>
        
      </div>
	  
<br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br />
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
