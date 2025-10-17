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
.style4 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Admin Home   <div class="article">
	  
<%
try{
    String s1=(String) session.getAttribute("id");
	ResultSet rs=st.executeQuery("select b. * from login a,admin b where a.id='"+s1+"' and a.id=b.aid and a.type='admin'");
	if(rs.next()){
%>
    <form method="post" action="aprofile1.jsp">
	<table width="708" height="223">
	
    <tr>
	<td><span class="style4">Full Name</span></td>
		<td><input type="text" name="nam" value="<%=rs.getString(3)%>" ></td>
		<td></td>
		<td><span class="style4">Father Name</span></td>
		<td><input name="fnm" type="text" value="<%=rs.getString(4)%>" ></td>
	</tr>
    <tr> 
		<td><span class="style4">Date of Birth</span></td>
		<td><input type="date" name="dt" value="<%=rs.getString(5)%>" ></td>
		<td></td>
		<td><span class="style4">Gender</span></td>
		<td>
		  <span class="style4">
		  <%
		  String gen=rs.getString(6);
		  if(gen.equalsIgnoreCase("male")) {
		 %>
		    <input type="radio" name="gen" value="Male" checked="checked"  />
		    Male 
		    <input type="radio" name="gen" value="Female"  />
		    Female
		    <% }else {   %>
		 
		    <input type="radio" name="gen" value="Male"/>
		    Male 
		    <input type="radio" name="gen" value="Female" checked="checked"  />
		    Female
		    <%  }    %>		
		    </span></td>
	</tr>
         <tr>
		 <td><span class="style4">Mobile No.</span></td>
		<td><input type="text" name="mn"  value="<%=rs.getString(7)%>"></td>
		<td></td>
		
	    <td><span class="style4">Email</span></td>
		<td><input name="em" type="text" value="<%=rs.getString(8)%>"></td>
	</tr>

	<tr>	
		<td><span class="style4">Current Address</span></td>
	   <td><input type="text" name="text1" value="<%=rs.getString(9)%>">
	   <td></td>
	   <td><span class="style4">Permanent Address</span></td>
	   <td><input name="text2" type="text" value="<%=rs.getString(10)%>">	</tr>	
	<tr>
	<td height="48"></td>
	<td></td>
	<td><input type="submit" value="Update"> </td>
	<td><span class="style4"></span></td>
	<td></td>
	</tr>  
	</table>
	</form>

<%}
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
