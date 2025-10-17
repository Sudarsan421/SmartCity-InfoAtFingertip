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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Room        
        <div class="article">
		</div>

<h5>
<% 
try{
ResultSet rs= st.executeQuery("select * from room a, hotel b where a.hid=b.hid");
%>
<table width="940" height="63">
<tr style="border:double #6666FF"> 
<td width="151">Hotel Name</td>
<td width="178">Size</td>
<td width="249">Facility</td>
<td width="140">Price</td>
<td width="68">Rooms</td>
<td width="126">Action</td>
</tr>


<%    while(rs.next()) {   %>
<tr style="border:double #6666FF">
<td><%=rs.getString(10)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getFloat(5)%></td>
<td><%=rs.getString(6)%></td>
<td> <a href="aroom1.jsp?a1=<%=rs.getString(1)%>"><font color="green">Edit</font></a> </td>
</tr>
<%    }   %>
</table>
<%
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
