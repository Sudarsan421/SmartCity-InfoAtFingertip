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
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="about.jsp">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="admintop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Booking        
        <div class="article">
		</div>

<h5>
<% 
String cid=request.getParameter("a1");
try{
String qry="select a.*, b.*, c.*, d.*  from booking1 a, room b, hotel c, place d where a.cid='"+cid+"' and a.rid=b.rid and a.hid=c.hid and a.pid=d.pid order by a.bkdt desc";
//out.print("<br>"+qry+"<br>");
ResultSet rs = st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
%>

<table width="849" border="1" cellpadding="4">
<tr>
<td width="69">Place</td>
<td width="79">Hotel Name</td>
<td width="44">Type</td>
<td width="41">Price per Room</td>
<td width="94">Size</td>
<td width="121">Facility</td>
<td width="50">No. of Room Booked</td>
<td width="77">Amount</td>
</tr>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString(25)%></td>
<td><%=rs.getString(20)%></td>
<td><%=rs.getString(19)%></td>
<td><%=rs.getFloat(15)%></td>
<td><%=rs.getString(13)%></td>
<td><%=rs.getString(14)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getFloat(10)%></td>
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
</h5>

		</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="adminleft.jsp" />
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
