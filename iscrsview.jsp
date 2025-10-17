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
.style16 {font-size: 14px}
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
		<jsp:include page="insttop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Course of the Institute    <br /> <br />    
  <div class="article">
  
<% 
try{
ResultSet rs= st.executeQuery("select * from instcrs where instid='"+(String)session.getAttribute("id")+"'");
if(rs.next()){
rs.beforeFirst();
%>
<table width="942" border="1" cellpadding="4">
  <tr> 
<td width="162"><span class="style16">Course</span></td>
<td width="93"><span class="style16">Fee</span></td>
<td width="74"><span class="style16">Duration (days)</span></td>
<td width="95"><span class="style16">Timing (hrs)</span></td>
<td width="131"><span class="style16">StartsOn</span></td>
<td width="286"><span class="style16">Description</span></td> 
</tr>


<%    while(rs.next()) {   %>
<tr>
<td><span class="style16"><%=rs.getString(3)%></span></td>
<td><span class="style16"><%=rs.getString(4)%></span></td>
<td><span class="style16"><%=rs.getString(5)%></span></td>
<td><span class="style16"><%=rs.getString(6)%></span></td>
<td><span class="style16"><%=rs.getString(7)%></span></td>
<td><span class="style16"><%=rs.getString(8)%></span></td>  
</tr>
<%    }   %>
</table>
<%
}
con.close();
}catch(Exception e){   out.print(e);   }   %>




</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="instleft.jsp" />
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
