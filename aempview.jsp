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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Employee        
        <div class="article">
		</div>
<h5>		
<form>
Choose Employee <select name="eid">
<%
try{
ResultSet rs=st.executeQuery("select * from employee order by name");
while(rs.next()){
%> 
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
}catch(Exception e){ }
%>

</select><input type="submit" value="Go" />
</form>
<br />

<%
try{
ResultSet rs=st.executeQuery("select * from employee where eid='"+request.getParameter("eid")+"'");
if(rs.next()){ 
%> 
<table width="988" height="159"  cellpadding="1" cellspacing="1" >
<tr><th width="124" height="30" align="left" valign="top"> Name</th>
<th width="255" height="30" align="left" valign="top"><%=rs.getString(2)%></th>
<th width="120" align="left" valign="top">Father's Name</th>
<th width="474" height="30" align="left" valign="top"><%=rs.getString(3)%></th></tr>

<tr><th width="124" align="left" valign="top">Date Of Birth</th>
<th height="32" align="left" valign="top"><%=rs.getString(4)%></th>
<th width="120" align="left" valign="top" >Date Of Birth</th>
<th height="32" align="left" valign="top"><%=rs.getString(5)%></th></tr>

<tr><th width="124" align="left" valign="top" >Gender</th>
<th height="36" align="left" valign="top"><%=rs.getString(6)%></th>
<th width="120" align="left" valign="top" >Marital Status</th>
<th height="36" align="left" valign="top"><%=rs.getString(7)%></th></tr>

<tr><th width="124" align="left" valign="top">Phone</th>
<th height="29" align="left" valign="top"><%=rs.getString(8)%></th>
<th width="120" align="left" valign="top" >Mail</th>
<th height="29" align="left" valign="top"><%=rs.getString(9)%></th></tr>
<tr>
<th width="124" align="left" valign="top" >Qualification</th>
<th height="22" align="left" valign="top"><%=rs.getString(12)%></th>
<th align="left" valign="top"></th>
</tr>
</table> 
<%
} 	
con.close();	  
}catch(Exception e){ out.print(e);  }	  
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
