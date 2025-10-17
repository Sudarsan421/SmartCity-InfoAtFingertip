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
		<jsp:include page="hospitaltop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Department View    <br /> <br />    
  <div class="article">
  
  
<%
			try{
			String qry="select a.* from dept a,login b  where a.oid='"+(String)session.getAttribute("id")+"'  and a.oid=b.id";
			  //out.print(qry);
			  ResultSet rs=st.executeQuery(qry);
			 %>	
			 
				<table width="923"  height="65" border="1"  cellpadding="5">
			<tr>
			<td width="98"><span class="style7 style2 style7"><strong>Organisation ID</strong></span></td> 
			<td width="101"><span class="style7 style2 style7"><strong>Department ID</strong></span></td>
			<td width="354"><span class="style7 style2 style7"><strong>Department Name</strong></span></td>
			<td width="144"><span class="style7 style2 style7"><strong>Type</strong></span></td>
			<td width="192"><span class="style7 style2 style7"><strong>Timing</strong></span></td>
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			<td height="29"><span class="style10 style5"><strong><%=rs.getString(2)%></strong></span></td>
			<td><span class="style10 style5"><strong><%=rs.getString(1)%></strong></span></td>
			<td><span class="style10 style5"><strong><%=rs.getString(3)%></strong></span></td>
			<td><span class="style10 style5"><strong><%=rs.getString(4)%></strong></span></td>
			<td><span class="style10 style5"><strong><%=rs.getString(5)%></strong></span></td>
			</tr>
			 <% }
			 	%> 
			  </table>
			  </br></br></br></br></br></br></br>
 <%
con.close();
}catch(Exception ee) { }
%>


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospitalleft.jsp" />
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
