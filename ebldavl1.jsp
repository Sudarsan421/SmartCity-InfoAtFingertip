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
.style2 {font-size: small}
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
		<jsp:include page="emptop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Blood Availability     
        <div class="article">

<%
try{
String oid=request.getParameter("oid");
String qry="select * from blood a, organisation b  where a.oid='"+oid+"' and a.oid=b.oid";
//out.print(qry);
ResultSet rs=st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
int cnt=1;
%>
<table width="796" border="1" cellpadding="3">
<tr><td width="41"><span class="style2">Slno</span></td>
<td width="132"><span class="style2">Organisation Name</span></td>
<td width="155"><span class="style2">Address</span></td>
<td width="96"><span class="style2">Phone</span></td> 
<td width="117"><span class="style2">Mail</span></td> 
<td width="65"><span class="style2">Blood Group</span></td>
<td width="53"><span class="style2">Rh Factor</span></td>
<td width="53"><span class="style2">Unit</span></td> 
</tr>
<%	while(rs.next()){	%>

<tr><td><span class="style2"><%=cnt++ %></span></td>
<td><span class="style2"><%=rs.getString(7)%></span></td>
<td><span class="style2"><%=rs.getString(8)+" "+rs.getString(9)+" "+rs.getString(10)%></span></td>
<td><span class="style2"><%=rs.getString(14)%></span></td>
<td><span class="style2"><%=rs.getString(15)%></span></td>

<td><span class="style2"><%=rs.getString(3)%></span></td>
<td><span class="style2"><%=rs.getString(4)%></span></td>
<td><span class="style2"><%=rs.getString(5)%></span></td> 
</tr>
<%	}	%>
</table>
<%
}else{
	out.print("<font color=red size=3>No blood is currently available.</font>");
}
con.close();
}catch(Exception e){  }
%> 



		</div>
		</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
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
