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
.style8 {font-size: 12px; }
.style11 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Place Entry <a href="aplaceview.jsp">View</a> <br />       
        <div class="article">

<br>
<form action="aplacephoto.jsp"> 
<span class="style11">Choose Place Name</span> 
<select name="a1"	>			   
<%
try{
ResultSet rs = st.executeQuery("select * from place order by place asc");
while(rs.next()){
%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)+" : " +rs.getString(6)%></option>
<%
}
}catch(Exception e){ }
%>
</select> 
<input type="submit" value="Submit">
</form>
<br />
<span class="style11">To Upload Image Click Under Place.</span><br>
<br />
<% 
 try{
ResultSet rs= st.executeQuery("select * from place order by pid desc limit 10");
%>
<table width="840" height="90" border="1" cellpadding="4">
<tr>
<td><span class="style11">Place Name</span></td>
<td><span class="style11">Area Name</span></td>
<td><span class="style11">District</span></td>
<td><span class="style11">State</span></td>
<td><span class="style11">Famous For</span></td>
</tr>


<%    while(rs.next()) {   %>
<tr>
<td><a href="aplacephoto.jsp?a1=<%=rs.getString(1)%>" class="style8"><%=rs.getString(2)%></a></td>
<td><span class="style8"><%=rs.getString(3)%></span></td>
<td><span class="style8"><%=rs.getString(4)%></span></td>
<td><span class="style8"><%=rs.getString(5)%></span></td>
<td><span class="style8"><%=rs.getString(6)%></span></td>
</tr>
<%    }   %>
</table>
<%   
con.close();
}catch(Exception e){   out.print(e);   }   %>

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
