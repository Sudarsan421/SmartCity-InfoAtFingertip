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
.style5 {font-size: 16px}
.style6 {font-size: small}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to  </span>  Booking Detail             
        <div class="article">
		</div>

<% 
String cid=request.getParameter("a1");
try{
String qry="select a.*, b.*, c.*, d.*  from booking1 a, room b, hotel c, place d where a.cid='"+cid+"' and a.rid=b.rid and a.hid=c.hid and a.pid=d.pid order by a.bkdt desc";
//out.print("<br>"+qry+"<br>");
ResultSet rs = st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
%>

<table width="778">
<tr>
<td width="69"><span class="style5">Place</span></td>
<td width="79"><span class="style5">Hotel Name</span></td>
<td width="44"><span class="style5">Type</span></td>
<td width="41"><span class="style5">Price per Room</span></td>
<td width="94"><span class="style5">Size</span></td>
<td width="121"><span class="style5">Facility</span></td>
<td width="50"><span class="style5">No. of Room Booked</span></td>
<td width="77"><span class="style5">Amount</span></td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><span class="style6"><%=rs.getString(25)%></span></td>
<td><span class="style6"><%=rs.getString(20)%></span></td>
<td><span class="style6"><%=rs.getString(19)%></span></td>
<td><span class="style6"><%=rs.getFloat(15)%></span></td>
<td><span class="style6"><%=rs.getString(13)%></span></td>
<td><span class="style6"><%=rs.getString(14)%></span></td>
<td><span class="style6"><%=rs.getString(6)%></span></td>
<td><span class="style6"><%=rs.getFloat(10)%></span></td>
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
