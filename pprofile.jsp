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
.style2 {color: #FFFFFF}
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
		<jsp:include page="pathtop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Pathology Profile    <br /> <br />    
  <div class="article">
  Benga
  
<%
try{

    String s1=(String) session.getAttribute("id");
	ResultSet rs=st.executeQuery("select b.* from login a,organisation b where a.id='"+s1+"' and a.id=b.oid and a.type='Path Lab'");
	if(rs.next()){
%>
  Thenga 
    <form method="post" action="pprofile1.jsp">
	<table width="708">
	
    <tr>
	<td><span class="style3">Names</span></td>
		<td><input name="nam" type="text" value="<%=rs.getString(2)%>" readonly="true" ></td>
		<td></td>
		<td><span class="style3">Plot No. </span></td>
		<td><input type="text" name="plotno" value="<%=rs.getString(3)%>" /></td>
	</tr>
    <tr> 
		<td><span class="style3">Area</span></td>
		<td><input name="area" type="text" value="<%=rs.getString(4)%>" /></td>
		<td></td>
		<td><span class="style3">City</span></td>
		<td><input type="text" name="city" value="<%=rs.getString(5)%>" /></td>
	</tr>
         <tr>
		 <td>Pincode</td>
		<td><input name="pincode" type="text"  value="<%=rs.getString(6)%>" readonly="true"></td>
		<td></td>
		
	    <td><span class="style3">District</span></td>
		<td><input type="text" name="district" value="<%=rs.getString(7)%>" /></td>
	</tr>

	     <tr>
	       <td>State</td>
	       <td><input name="state" type="text"  value="<%=rs.getString(8)%>" />         
	       <td></td>
	       <td>Phone</td>
        <td><input type="text" name="phone"  value="<%=rs.getString(9)%>" />          </tr>
	     <tr>
	       <td>Mail</td>
	       <td><input name="mail" type="text"  value="<%=rs.getString(10)%>" />
	       <td></td>
	       <td>Timing</td>
        <td><input type="text" name="timing"  value="<%=rs.getString(12)%>" /></tr>
        <tr>	
		<td><span class="style3">Type</span></td>
	    <td><input name="type" type="text" value="<%=rs.getString(13)%>" readonly="true" />
	    <td></td>
	   <td>&nbsp;</td>
	   <td>        </tr>	
	<tr>
	<td></td>
	<td></td>
	<td><input type="submit" value="Update"> </td>
	<td></td>
	<td></td>
	</tr>  
	</table>
	</form>
	Bekat
<%}
con.close();
}catch(Exception ee) { out.print(ee); }
%>
 


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="pathleft.jsp" />
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
