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
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %>to</span> Customer Payment  <a href="upayview.jsp">View</a>   <br /> <br />    
  <div class="article">
 
<% 
String cid=(String)session.getAttribute("id");
try{
String qry="select a.*, b.*, c.*, d.*,e.*  from booking1 a, room b, hotel c, place d, payment e where a.cid='"+cid+"' and a.rid=b.rid and a.hid=c.hid and a.pid=d.pid and  a.bid=e.bid order by a.bkdt desc";
//out.print("<br>"+qry+"<br>");
ResultSet rs = st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
%>
<table width="944" border="1" cellpadding="5">
<tr>
<td width="69"><span class="style2">Place</span></td>
<td width="79"><span class="style2">Hotel Name</span></td>
<td width="44"><span class="style2">Type</span></td>
<td width="41"><span class="style2">Price per Room</span></td>
<td width="94"><span class="style2">Size</span></td>
<td width="121"><span class="style2">Facility</span></td>
<td width="50"><span class="style2">No. of Room Booked </span></td>
<td width="77"><span class="style2">Amount</span></td>
<td width="77"><span class="style2">Bank</span></td>
<td width="77"><span class="style2">Payment Date</span></td>
<td width="77"><span class="style2">Ac No.</span></td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><span class="style2"><span class="style13"><%=rs.getString(25)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getString(20)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getString(19)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getFloat(15)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getString(13)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getString(14)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getString(6)%></span></td>
<td><span class="style2"><span class="style13"><%=rs.getFloat(10)%></span></td>
<td><span class="style2"><span class="style13"> <%=rs.getString(34)%></span></td>
<td><span class="style2"><span class="style13"> <%=rs.getString(35)%></span></td>
<td><span class="style2"><span class="style13"> <%=rs.getString(37)%></span></td>
</tr>
<%
}
%>
</table>
<%
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
