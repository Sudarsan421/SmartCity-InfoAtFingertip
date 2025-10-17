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
.style19 {font-size: 14px}
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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Update Course of the Institute    <br /> <br />    
  <div class="article">
  
<% 
try{
String crsid=request.getParameter("a1");
ResultSet rs= st.executeQuery("select * from instcrs where incrid='"+crsid+"'");
if(rs.next()){ 
%>
<form action="isupdcrs2.jsp">
<input type="hidden" name="crsid" value="<%=crsid%>"  />
<table width="286" cellpadding="4">
<tr><td width="98"><span class="style19">Course</span></td> 
<td width="164"><input type="text" name="course" value="<%=rs.getString(3)%>" /></td></tr>
<tr>
  <td><span class="style19">Fees</span></td> 
<td><input type="text" name="fee" value="<%=rs.getString(4)%>" /></td></tr>
<tr>
  <td><span class="style19">Duration</span></td> 
<td><input type="text" name="dur" value="<%=rs.getString(5)%>" /></td></tr>
<tr>
  <td><span class="style19">Timing</span></td> 
<td><input type="text" name="timing" value="<%=rs.getString(6)%>" /></td></tr>
<tr>
  <td><span class="style19">Starts On</span></td> 
<td><input type="text" name="startson" value="<%=rs.getString(7)%>" /></td></tr>
<tr>
  <td><span class="style19">Description</span></td> 
<td><input type="text" name="desc" value="<%=rs.getString(8)%>" /></td></tr>
<tr>
  <td colspan="2" align="center"><span class="style19">
    <input type="submit" value="Submit" /> 
    <input type="reset" value="Reset" />
  </span></td>
</tr>
</table>
</form>
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
