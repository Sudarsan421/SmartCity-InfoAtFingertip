
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
.style6 {font-size: 12px}
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
	 <br /> Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Vehicle Profile    <br /><br />     
        <div class="article">

<%
try{
    String s1=(String) session.getAttribute("id");
	String qry="select b. * from login a,vehicle b where a.id='"+s1+"' and a.id=b.vid";
	//out.print(qry);
	ResultSet rs=st.executeQuery(qry);
	if(rs.next()){
%>
    <form method="post" action="vprofile1.jsp">
	<table width="878">	
   <tr> 
		<td><span class="style6">Registration Number</span></td>
		<td><input type="text" name="vno" value="<%=rs.getString(2)%> "readonly="true" /></td>
		<td></td>
		<td><span class="style6">Type </span></td>
		<td><input type="text" name="type" value="<%=rs.getString(16)%> "readonly="true" /></td>
		<td></td>
		</tr>
        <tr>
        <td><span class="style6">Model </span></td>
		<td><input type="text" name="model" value="<%=rs.getString(3)%> "readonly="true" /></td>
		<td></td>
		<td><span class="style6">Owner Name</span></td>
		<td><input type="textbox" name="oname" value="<%=rs.getString(4)%> "></td>
		<td></td>
		</tr>
		<tr>
		<td><span class="style6">Driver Name</span></td>
		<td><input type="text" name="dname" value="<%=rs.getString(5)%> "></td><td></td>
		<td><span class="style6">City</span></td>
		<td><input type="text" name="city" value="<%=rs.getString(7)%> "></td>
		</tr>
		<tr>
		<td><span class="style6">District</span></td>
		<td><input type="text" name="dist" value="<%=rs.getString(8)%> "> </td><td></td>
		<td><span class="style6">State</span></td>
		<td><input type="text" name="state" value="<%=rs.getString(9)%> "></td>
		</tr>
		<tr>
	    <td><span class="style6">Timing</span></td>
		<td><input type="text" name="timing" value="<%=rs.getString(10)%> "></td>
		<td></td>
		<td><span class="style6">Booking Contact</span></td>
		<td><input type="text" name="bno" value="<%=rs.getString(6)%> "></td>
		<td></td>
		</tr>
		<tr>
		<td><span class="style6">Price (Base+Per/Km)</span></td>
		<td><input type="text" name="base" value="<%=rs.getString(11)%> "> </td>
		<td><input type="text" name="perkm" value="<%=rs.getString(12)%> "></td>
		<td></td>
		</tr>
	<tr>
	<td></td>
	<td></td>
	<td><input type="submit" value="Update"> </td>
	<td></td>
	<td></td>
	</tr>  
	</table>
	</form>

<%}
con.close();
}catch(Exception ee) { }
%>



<br /><br />
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
