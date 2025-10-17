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
-->
</style>

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
  
<script type="text/javascript" src="tabcontent.js"></script>
 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
    .style2 {font-size: small}
 </style>
<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="usertop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Book Hotel    <a href="ubookview.jsp">View</a>  <br /> <br />    
  <div class="article">
 
<%
String s1= request.getParameter("p1"); 
try{
ResultSet rs= st.executeQuery("select * from hotel a, place b where a.hid='"+s1+"' and a.pid=b.pid limit 10");
if(rs.next()){
%>
<table width="622" border="1" cellpadding="6">
<tr>
<td width="63" height="25"><span class="style2"><strong> Place </strong></span></td>
<td><span class="style2"><%=rs.getString(9)%> </span></td>
<td width="80"><span class="style2"><strong>Name</strong></span></td>
<td><span class="style2"><%=rs.getString(4)%> </span></td>
</tr>

<tr>
<td width="76"><span class="style2"><strong>Type</strong></span></td>
<td><span class="style2"><%=rs.getString(3)%> </span></td>
<td width="99"><span class="style2"><strong>Phone</strong></span></td>
<td><span class="style2"><%=rs.getString(5)%> </span></td>
</tr>

<tr>
<td width="102"><span class="style2"><strong>Address</strong></span></td>
<td><span class="style2"><%=rs.getString(6)%> </span></td>
<td width="109"><span class="style2"><strong>Location</strong></span></td> 
<td><span class="style2"><%=rs.getString(7)%> </span></td>
</tr>
</table>
<br> 
<%
}
rs=st.executeQuery("select * from room where hid='"+s1+"'");
if(rs.next()){
 rs.beforeFirst();
%>
<table width="610" border="1" cellpadding="4">
<tr style="border:double #6666FF">
<td width="188"><span class="style2"><strong>Room Size</strong></span></td>
<td width="178"><span class="style2"><strong>Facility</strong></span></td>
<td width="70"><span class="style2"><strong>Price</strong></span></td>
<td width="81"><span class="style2"><strong>No of room</strong></span></td>
<td width="69"><span class="style2"><strong>Action</strong></span></td>
</tr>
<%
while(rs.next()){  %>
<tr style="border:double #6666FF">
<td><span class="style2"><%=rs.getString(3)%></span></td>
<td><span class="style2"><%=rs.getString(4)%></span></td>
<td><span class="style2"><%=rs.getFloat(5)%></span></td>
<td><span class="style2"><%=rs.getString(6)%></span></td>
<td><a href="ubooking2.jsp?a1=<%=rs.getString(1)%>" class="style5 style2">Book</a></td>
</tr>
<% } %>
</table>
<%
}else{
	out.print("<font color=red size=+2>The room has not been alloted.</font>");
}
con.close();
}catch(Exception e){   out.print(e);   }   
%>

 
  </div>
 


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="userleft.jsp" />
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
