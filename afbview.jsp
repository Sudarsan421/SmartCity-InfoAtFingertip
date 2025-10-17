<%@ include file="dbcon.jsp"%>
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
.style4 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Pending Feedback        
        <div class="article">

		 <%
			try{
			 //ResultSet rs=st.executeQuery("select * from contactus where status='Pending' order by(feedbackid) limit 15");
			 
			  ResultSet rs=st.executeQuery("select * from contactus where status='Pending' order by(feedbackid) limit 15");
			%>	
			
			<table width="953"  height="65" border="1"  cellpadding="5">
			<tr> 
			<td width="69"><span class="style4">Name</span></td>
			<td width="99"><span class="style4">Date of Feedback</span></td>
			<td width="62"><span class="style4">Type of User</span></td>
			<td width="117"><span class="style4">Email/ Phone</span></td>
            <td width="155"><span class="style4">Message</span></td>
			<td width="105"><span class="style4">Current Status</span></td>
			<td width="147"><span class="style4">Reply</span></td>
			<td width="83"><span class="style4">Action</span></td>
			</tr>
			<% while(rs.next()){ 	%>
			<form method="post" name="f1" id="f1" action="afbview1.jsp"> 
			<input type="hidden" name="a1" value="<%=rs.getString(1)%>" />
			<input type="hidden" name="a2" value="C" />
			
			<tr>
			 
			<td><span class="style4"><%=rs.getString(5)%></span></td>
			<td><span class="style4"><%=rs.getString(3)%></span></td>
			<td><span class="style4"><%=rs.getString(4)%></span></td>
			<td><span class="style4"><%=rs.getString(6)%> <%=rs.getString(7)%></span></td>
			<td><span class="style4"><%=rs.getString(8)%></span></td>
			<td><span class="style4"><%=rs.getString(10)%></span></td>
			<td><input name="a3" type="text" >  </td>
			 
			 <td> <p class="style10 style4"> <a href="afbview1.jsp?a1=<%=rs.getString(1)%>&a2=R">Remove</a></p>  
			
			   <span style="font-size: 14px">
			   <input type="submit" value="Accept" style="border:none" />
			   </span></td>
			</tr>
			</form>
			 <% }
			 	%> 
		  </table>
			  
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
