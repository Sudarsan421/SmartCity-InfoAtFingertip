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
.style3 {font-size: 14}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Admin Home        
        <div class="article">
	    <%
            try{
             ResultSet rs=st.executeQuery("select a.*,b.* from organisation a,login b where a.oid=b.id and b.status='N'");
			%>
			<table width="923" height="65" border="1" cellpadding="5">
			<tr>
			<td width="110"  height="28"><span class="style7 style7 style3">Name</span></td> 
			<td width="30"><span class="style7 style7 style3">Plot No</span></td>
			<td width="40"><span class="style7 style7 style3">Area</span></td>
			<td width="40"><span class="style7 style7 style3">City</span></td>
			<td width="68"><span class="style7 style7 style3">Pincode</span></td>
			<td width="99"><span class="style7 style7 style3">District</span></td>
			<td width="94"><span class="style7 style7 style3">State</span></td>
            <td width="120"><span class="style7 style7 style3">Phone</span></td>
			<td width="120"><span class="style7 style7 style3">Mail</span></td>
			<td width="100"><span class="style7 style7 style3">Timing</span></td>
			<td width="100"><span class="style7 style7 style3">Type</span></td>
     		<td width="138"><span class="style7 style7 style3">Action</span></td>  			
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			<td height="29"><span class="style10"><%=rs.getString(2)%></span></td>
			<td><span class="style10"><%=rs.getString(3)%></span></td>
			<td><span class="style10"><%=rs.getString(4)%></span></td>
			<td><span class="style10"><%=rs.getString(5)%></span></td>
			<td><span class="style10"><%=rs.getString(6)%></span></td>
			<td><span class="style10"><%=rs.getString(7)%></span></td>
			<td><span class="style10"><%=rs.getString(8)%></span></td>
			<td><span class="style10"><%=rs.getString(9)%></span></td>
			<td><span class="style10"><%=rs.getString(10)%></span></td>
			<td><span class="style10"><%=rs.getString(12)%></span></td>
			<td><span class="style10"><%=rs.getString(13)%></span></td>
			
			<td><p class="style10"><a href="aapproveorg1.jsp?a1=<%=rs.getString(1)%>&a2=A">Approve</a></p>
			  <p class="style10"> <a href="aapproveorg1.jsp?a1=<%=rs.getString(1)%>&a2=R">Remove</a></p></td>  
			</tr>
			 <% 	}
			 %> 
	  </table>
			
<br/><br/>
<%
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
