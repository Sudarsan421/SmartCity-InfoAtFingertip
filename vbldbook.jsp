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
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="bbtop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Approve Blood Donation    <br /> <br />    
  <div class="article">
  

<%
try{
String oid=(String)session.getAttribute("id");
String qry="select * from blddonation a, user b where a.oid='"+oid+"' and a.uid=b.uid  and a.status='Pending' order by a.dntdate asc";
//out.print(qry);
ResultSet rs=st.executeQuery(qry);
if(rs.next()){
rs.beforeFirst();
%>
<table width="608" border="1" cellpadding="3">
<tr><td width="225"><span class="style7">Name</span></td>
<td width="101"><span class="style7">Date to Donate</span></td>
<td width="47"><span class="style7">Group</span></td>
<td width="66"><span class="style7">Rh Factor</span></td>
<td width="52"><span class="style7">Status</span></td>
<td width="53"><span class="style7">Action</span></td>
</tr>
<%	while(rs.next()){	%>

<tr><td><span class="style10"><%=rs.getString(9)%></span></td>
<td><span class="style10"><%=rs.getString(6)%></span></td>
<td><span class="style10"><%=rs.getString(4)%></span></td>
<td><span class="style10"><%=rs.getString(5)%></span></td>
<td><span class="style10"><%=rs.getString(7)%></span></td>
<td><span class="style10"><a href="vbldbook1.jsp?a1=<%=rs.getString(1)%>">Accept</a></span></td>
</tr>
<%	}	%>
</table>
<%
}else{
	out.print("<font color=red size=3>No one to donate blood.</font>");
}
con.close();
}catch(Exception e){  }
%> 





</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="bbleft.jsp" />
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
