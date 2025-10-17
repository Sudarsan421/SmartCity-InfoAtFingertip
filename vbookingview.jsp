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
.style4 {font-size: 12px}
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
		<jsp:include page="vehicletop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Vehicle Approve    <br />     

        <div class="article">
<br />

           <%
            try{
			
			
String qry="select z.vno,  a.*,  b.id, b.logname, b.pwd, b.dor, c.fullname  from vehicle z, booking a,login b, user c where a.vid='"+(String)session.getAttribute("id")+"' and z.vid=a.vid and a.status='Complete' and a.vid=b.id and a.uid=c.uid";


//String qry="select * from (select z.vno,  a.*,  b.id, b.logname, b.pwd, b.dor  from vehicle z, booking a,login b where a.vid='"+(String)session.getAttribute("id")+"' and a.status='Pending' and a.vid=b.id) c, login d where  c.vid=d.id";
			//out.print(qry);
            ResultSet rs=st.executeQuery(qry);
			 
			%>
			<table width="803" height="78" border="1">
			<tr>
			
			<td width="58"><span class="style4">Vehicle ID</span></td>
			<td width="58"><span class="style4">Booking ID</span></td> 
			<td width="103"><span class="style4">Booked From Date</span></td>
			<td width="120"><span class="style4">Booked From Time</span></td>
			<td width="120"><span class="style4">Booked To Time</span></td>
			<td width="96"><span class="style4">User Name</span></td> 
     		<td width="182"><span class="style4">Action</span></td>  			
			</tr>
			<% while(rs.next()){ 	
			   String bkid=rs.getString(2);
			%>
			<tr>
			<td height="44" ><span class="style4"><%=rs.getString(1)%></span></td>
			<td><span class="style4"><%=rs.getString(2)%></span></td>
			<td><span class="style4"><%=rs.getString(6)%></span></td>
			<td><span class="style4"><%=rs.getString(7)%></span></td>
			<td><span class="style4"><%=rs.getString(8)%></span></td>
			<td><span class="style4"><%=rs.getString(19)%></span></td> 
			<td><p class="style10 style4"><a href="vbookapprove1.jsp?a1=<%=bkid%>&a2=A">Approve</a></p>
			    <p class="style10 style4"><a href="vbookapprove1.jsp?a1=<%=bkid%>&a2=R">Remove</a></p></td>  
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
			<jsp:include page="vehicleleft.jsp" />
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
