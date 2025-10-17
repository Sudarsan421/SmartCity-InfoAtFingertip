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
.style7 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Approve Institute        
        <div class="article">
	    <%
            try{
             ResultSet rs=st.executeQuery("select * from institute a,login b where a.instid=b.id and b.status='N'");
			%>
			<table width="960"  height="65" border="1"  cellpadding="5">
			<tr>
			<td width="62"><span class="style7">Name</span></td>
			<td width="54"><span class="style7">Type</span></td>
			<td width="86"><span class="style7">Date of Registration</span></td>
			<td width="131"><span class="style7">Address</span></td> 
			<td width="107"><span class="style7">Phone</span></td>
			<td width="97"><span class="style7">Alt. Phone</span></td>
			<td width="87"><span class="style7">Mail ID</span></td>
			<td width="142"><span class="style7">About</span></td> 
			<td width="64"><span class="style7">Action</span></td> 
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			<td><span class="style7"><%=rs.getString(2)%></span></td>
			<td><span class="style7"><%=rs.getString(3)%></span></td>
			<td><span class="style7"><%=rs.getString(4)%></span></td>
			<td><span class="style7"><%=rs.getString(5)%></span></td> 
			<td><span class="style7"><%=rs.getString(7)%></span></td>
			<td><span class="style7"><%=rs.getString(8)%></span></td>
			<td><span class="style7"><%=rs.getString(9)%></span></td>
			<td><span class="style7"><%=rs.getString(10)%></span></td>
			<td><a href="aprvinst1.jsp?a1=<%=rs.getString(1)%>&a2=A" class="style7">Approve</a> 
			   <a href="aprvinst1.jsp?a1=<%=rs.getString(1)%>&a2=R" class="style7">Remove</a></td> 
			</tr>
			 <% }	
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
