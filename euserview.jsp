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
.style8 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to View User <br /><br />        
        <div class="article">

		<form method="get" action="euserview1.jsp">
			<%
			try{
			  ResultSet rs=st.executeQuery("select a .* from user a,login b where a.uid=b.id and b.status='y'");
			 %>	
			 <table>
			<tr><td>Choose User Name</td>
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
			 ResultSet rs=st.executeQuery("select a .* from user a,login b where a.uid=b.id and b.status='y' order by(a.uid)  limit 15");
			%>
	        <table width="923"  height="65" border="1"  cellpadding="5">
			<tr>
			<td width="110"><span class="style8">Name</span></td> 
			<td width="50"><span class="style8">Father's Name</span></td>
			<td width="60"><span class="style8">Date of Birth</span></td>
			<td width="60"><span class="style8">Gender</span></td>
			<td width="60"><span class="style8">Marital Status</span></td>
			<td width="99"><span class="style8">Education</span></td>
		    <td width="99"><span class="style8">Phone</span></td>
			<td width="94"><span class="style8">Mail</span></td>
            <td width="90"><span class="style8">Current Address</span></td>
			<td width="90"><span class="style8">Permanent Address</span></td>
			<td width="90"><span class="style8">I.D Proof</span></td>
			<td width="90"><span class="style8">I.D Proof Number</span></td> 
			</tr>
			<% while(rs.next()){ 	%>
			<tr>
			
			<td height="29"><span class="style8"><span class="style10  style5"><strong><%=rs.getString(2)%></span></td>
			<td><span class="style8"><%=rs.getString(3)%></span></td>
			<td><span class="style8"><%=rs.getString(4)%></span></td>
			<td><span class="style8"><%=rs.getString(5)%></span></td>
			<td><span class="style8"><%=rs.getString(6)%></span></td>
			<td><span class="style8"><%=rs.getString(7)%></span></td>
			<td><span class="style8"><%=rs.getString(8)%></span></td>
			<td><span class="style8"><%=rs.getString(9)%></span></td>
			<td><span class="style8"><%=rs.getString(10)%></span></td>
			<td><span class="style8"><%=rs.getString(11)%></span></td>
			<td><span class="style8"><%=rs.getString(12)%></span></td>
			<td><span class="style8"><%=rs.getString(13)%></span></td> 
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
