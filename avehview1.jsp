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
.style9 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Ambulance/Mortuary Vans <br /><br />        
        <div class="article">


		 <%
			try{
			String 	name=request.getParameter("em");		
		    ResultSet rs=st.executeQuery("select * from vehicle where vid='"+name+"'");
			 while(rs.next()){ 
			%>
				<table>
<tr><td>
<table width="515" height="384"  cellpadding="5">
<tr><td width="151"><span class="style9">Vehicle Number</span></td> 
<td width="336"><span class="style9"><%=rs.getString(2)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Model</span></td>
<td><span class="style9"><%=rs.getString(3)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Owner Name</span></td>
<td><span class="style9"><%=rs.getString(4)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Driver Name</span></td>
<td><span class="style9"><%=rs.getString(5)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Booking Contact</span></td>
<td><span class="style9"><%=rs.getString(6)%></span></td>
</tr>

<tr><td width="151"><span class="style9">City</span></td>
<td><span class="style9"><%=rs.getString(7)%></span></td>
</tr>

<tr><td width="151"><span class="style9">District</span></td>
<td><span class="style9"><%=rs.getString(8)%></span></td>
</tr>

<tr><td width="151"><span class="style9">State</span></td>
<td><span class="style9"><%=rs.getString(9)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Timing</span></td>
<td><span class="style9"><%=rs.getString(10)%></span></td>
</tr>

<tr><td width="151"><span class="style9">Base Price</span></td>
<td><span class="style9"><%=rs.getString(11)%></span></td>
</tr>


<tr><td width="151"><span class="style9">Per K.m Price</span></td>
<td><span class="style9"><%=rs.getString(12)%></span></td>
</tr>


<tr><td width="151"><span class="style9">Availability</span></td>
<td><span class="style9"><%=rs.getString(13)%></span></td>
</tr>


<tr><td width="151"><span class="style9">Type</span></td>
<td><span class="style9"><%=rs.getString(16)%></span></td>
</tr>
</table>	

</td><td>
<img src="./images/orga/<%=rs.getString(17)%>" width="420" height="300" />
</td></tr>
</table>
<%
}
con.close();
}catch(Exception ee) { }
%>

		

		</div>
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
