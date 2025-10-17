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
.style5 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View Ambulance/Mortuary Vans <br /><br />        
        <div class="article">
		<form method="get" action="avehview1.jsp">
			<%
			try{
			  ResultSet rs=st.executeQuery("select a .* from vehicle a,login b where a.vid=b.id and b.status='y'");
			 %>	
			 <table>
			<tr><td><span class="style6">Choose Ambulance/Mortuary Van</td>
			<td></td>
			<td><select name="em">
			<% while(rs.next()){%>
			  <option value="<%=rs.getString(1)%>"><%=rs.getString(2)+" "%></option>
			  <%}%>
			</select>
			</td>
			<td><input type="submit" value="Go"></td>
			</tr>
			</table>
			<%}catch(Exception ee){}%>
		  </form>
			 <%
			try{
			 ResultSet rs=st.executeQuery("select * from vehicle a,login b where a.vid=b.id and b.status='y' order by(a.vid)  limit 15");
			%>
			<table width="923"  height="65" border="1"  cellpadding="5" class="">
			<tr>
			<td width="110"><span class="style5">Vehicle Number</span></td> 
			<td width="50"><span class="style5">Model</span></td>
			<td width="60"><span class="style5">Owner Name</span></td>
			<td width="60"><span class="style5">Driver Name</span></td>
			<td width="60"><span class="style5">Booking Contact</span></td>
			<td width="99"><span class="style5">City</span></td>
		    <td width="99"><span class="style5">District</span></td>
			<td width="94"><span class="style5">State</span></td>
            <td width="90"><span class="style5">Timing</span></td>
			<td width="90"><span class="style5">Base Price</span></td>
			<td width="90"><span class="style5">Per K.m Price</span></td>
			<td width="90"><span class="style5">Availability</span></td>
			<td width="120"><span class="style5">Type</span></td>
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			
			<td height="29"><span class="style5"><%=rs.getString(2)%></span></td>
			<td><span class="style5"><%=rs.getString(3)%></span></td>
			<td><span class="style5"><%=rs.getString(4)%></span></td>
			<td><span class="style5"><%=rs.getString(5)%></span></td>
			<td><span class="style5"><%=rs.getString(6)%></span></td>
			<td><span class="style5"><%=rs.getString(7)%></span></td>
			<td><span class="style5"><%=rs.getString(8)%></span></td>
			<td><span class="style5"><%=rs.getString(9)%></span></td>
			<td><span class="style5"><%=rs.getString(10)%></span></td>
			<td><span class="style5"><%=rs.getString(11)%></span></td>
			<td><span class="style5"><%=rs.getString(12)%></span></td>
			<td><span class="style5"><%=rs.getString(13)%></span></td>
			<td><span class="style5"><%=rs.getString(16)%></span></td>
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
