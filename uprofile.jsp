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
.style7 {font-size: 14px}
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
		<jsp:include page="usertop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to User Profile   <div class="article">
	  
<%
try{
    String s1=(String) session.getAttribute("id");
	String qry="select b. * from login a,user b where a.id='"+s1+"' and a.id=b.uid and a.type='user'";
	//out.print(qry);
	ResultSet rs=st.executeQuery(qry);
	if(rs.next()){
	
%>
    <form method="post" action="uprofile1.jsp">
	<table width="708">	
    <tr>
		<td><span class="style7">Full name</span></td>
		<td><input type="text" name="fullname" value="<%=rs.getString(2)%>"></td>
		<td></td>
		<td><span class="style7">Father Name</span></td>
		<td><input name="fname" type="text" value="<%=rs.getString(3)%>"></td>
	</tr>
     <tr> 	
	   <td><span class="style7">Date of Birth</span></td>
		<td><input type="date" name="dob" value="<%=rs.getString(4)%>"/></td>
		<td></td>
		<td><span class="style7">Gender</span></td>
		<td><span class="style7">
		  <%
		  String gen=rs.getString(5);
		  if(gen.equalsIgnoreCase("male")) {
		 %>
		    <input type="radio" name="gender" value="Male"  />
		    Male 
		    <input type="radio" name="gender" value="Female" checked="checked"   />
		    Female
		    <% }else {   %>
		 
		    <input type="radio" name="gender" value="Male"  checked="checked" />
		    Male 
		    <input type="radio" name="gender" value="Female" />
		    Female
		    <%  }    %>		
		    </span></td>
	</tr>
     <tr> 
		<td><span class="style7">Marital Status</span></td>
		<td><input type="text" name="mstatus" value="<%=rs.getString(6)%>"></td>
		<td></td>
		<td><span class="style7">Education</span></td>
		<td><input name="edu" type="text" value="<%=rs.getString(7)%>"/></td>
	</tr>
	 <tr> 
		<td><span class="style7">Phone</span></td>
		<td><input type="text" name="phone" value="<%=rs.getString(8)%>"></td>
		<td></td>
		<td><span class="style7">Mail</span></td>
		<td><input name="mail" type="text" value="<%=rs.getString(9)%>" ></td>
		
			</tr>
	 <tr> 
	  <tr> 
		<td><span class="style7">Current Address </span></td>
		<td><input type="text" name="cadd" value="<%=rs.getString(10)%>"></td>
		<td></td>
		<td><span class="style7">Permanent Address </span></td>
		<td><input name="padd" type="text" value="<%=rs.getString(11)%>"/></td>
	</tr>
	 <tr> 
		<td><span class="style7">ID Proof</span></td>
		<td><input type="text" name="idprf" value="<%=rs.getString(12)%>"></td>
		<td></td>
		<td><span class="style7">ID Proof Number</span></td>
		<td><input name="idprfid" type="text" value="<%=rs.getString(13)%>" /></td>
	</tr>
	<tr><td height="48"><input type="submit" value="SUBMIT" ></td>
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
			<jsp:include page="userleft.jsp" />
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
