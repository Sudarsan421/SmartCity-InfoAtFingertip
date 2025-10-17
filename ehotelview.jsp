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
.style2 {font-size: small; font-weight: bold; color: #0000FF; }
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
	   Welcome <%= ((String) session.getAttribute("name")).toUpperCase() %> to</span> Hotel <a href="ehotelview.jsp"> View         
        <div class="article">
		</div>
		</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
        </div>
        
      </div>
	  

<% 
 try{
ResultSet rs= st.executeQuery("select * from hotel a, place b where a.pid=b.pid");
%>
<table width="822">
<tr style="border:double #6666FF">
<td width="64" height="25"><span class="style4">Place</span></td>
<td width="81"><span class="style4">Name</span></td>
<td width="77"><span class="style4">Type</span></td>
<td width="99"><span class="style4">Phone</span></td>
<td width="102"><span class="style4">Address</span></td>
<td width="90"><span class="style4">Location</span></td>
<td width="77"><span class="style4">Action</span></td>
</tr>


<%    while(rs.next()) {   %>
<tr style="border:double #6666FF">
<td><span class="style5"><%=rs.getString(9)%></span></td>
<td><span class="style5"><%=rs.getString(4)%></span></td>
<td><span class="style5"><%=rs.getString(3)%></span></td>
<td><span class="style5"><%=rs.getString(5)%></span></td>
<td><span class="style5"><%=rs.getString(6)%></span></td>
<td><span class="style5"><%=rs.getString(7)%></span></td>
<td><a href="ehotelphoto.jsp?a1=<%=rs.getString(1)%>" class="style2">Upload</a></td>
</tr>
<%    }   %>
</table>
<%con.close();
}catch(Exception e){   out.print(e);   }   
%>

<br /><br />
<br /><br /><br /><br /><br /><br /><br />
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
