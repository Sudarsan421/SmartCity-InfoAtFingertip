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
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="pathtop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Feedback View. <br /> <br />    
  <div class="article">
  
   
		 <%
			try{
			 ResultSet rs=st.executeQuery("select * from contactus where id= '"+(String)session.getAttribute("id")+"' order by(feedbackid) limit 15");
			%>	
			
			<table width="923"  height="65" border="1"  cellpadding="5">
			<tr>
			<td width="85">Feedbackid</td> 
			<td width="56">ID</td>
			<td width="67">Date of Feedback</td>
			<td width="57">Type of User</td>
			<td width="59">Name</td>
			<td width="106">Email</td>
			<td width="101">Phone</td>
            <td width="129">Message</td>
			<td width="133">Current Status</td>
			<td width="129">Reply</td>
			
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			<td height="29">
			<%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
			<td><%=rs.getString(10)%></td>
			<td><%=rs.getString(9)%></td>
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
			<jsp:include page="pathleft.jsp" />
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
