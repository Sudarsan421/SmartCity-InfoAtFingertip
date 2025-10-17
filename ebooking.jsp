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
.style3 {font-size: 14px}
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

<form action="ebooking1.jsp" method="get">
Choose Customer 
<select name="a1">
<%
try{
ResultSet rs=st.executeQuery("select * from customer where cid in (select distinct cid from booking)");
while(rs.next()){
%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
}catch(Exception e){   out.print(e);   }   
%>				  
</select> 
<input type="submit" value="Submit">
</form><br>

<%  
try{
String qry="select a.*, b.*, c.*, d.*, e.*  from booking1 a, room b, hotel c, place d, customer e where a.cid=e.cid and a.rid=b.rid and a.hid=c.hid and a.pid=d.pid order by a.bkdt desc limit 10";
//out.print("<br>"+qry+"<br>");
ResultSet rs = st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
%>
<table width="952">
<tr>
<td width="135"><span class="style3">Place</span></td>
<td width="149"><span class="style3">Hotel Name</span></td>
<td width="77"><span class="style3">Type</span></td>
<td width="70"><span class="style3">Price per Room</span></td>
<td width="161"><span class="style3">Size</span></td>
<td width="154"><span class="style3">Facility</span></td>
<td width="70"><span class="style3">No. of Room Booked</span></td>
<td width="100"><span class="style3">Amount</span></td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><span class="style2"><%=rs.getString(25)%></span></td>
<td><span class="style2"><%=rs.getString(20)%></span></td>
<td><span class="style2"><%=rs.getString(19)%></span></td>
<td><span class="style2"><%=rs.getFloat(15)%></span></td>
<td><span class="style2"><%=rs.getString(13)%></span></td>
<td><span class="style2"><%=rs.getString(14)%></span></td>
<td><span class="style2"><%=rs.getString(6)%></span></td>
<td><span class="style2"><%=rs.getFloat(10)%></span></td>
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
