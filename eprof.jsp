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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Edit Profile 
        <div class="article">
		</div>

<h5>
<%

try{
ResultSet rs = st.executeQuery("select * from employee where eid='"+(String)session.getAttribute("id")+"'");
if(rs.next()){
%>
<form action="eprof1.jsp" method="get">

<table width="845" height="317">
<tr>
	<td width="137">Name</td>
	<td width="261"><input type="text" name="name" value="<%=rs.getString(2)%>" /></td>
<td width="13"></td>
	<td width="159">Father's Name</td>
	<td width="251"><input type="text" name="fname" value="<%=rs.getString(3)%>" /> </td>
</tr>

<tr>
	<td>Date of Birth</td><td><input type="date" name="dob" value="<%=rs.getString(4)%>" /></td>
<td></td>
	<td>Date of Joining</td><td><%=rs.getString(5)%> </td>
</tr>
<tr>
	<td>Gender</td><td>
		<%
			String gen=rs.getString(6);
			if(gen.equalsIgnoreCase("male")){
		%>
			<input type="radio" name="gen" value="Male" checked="checked">Male
			<input type="radio" name="gen" value="Female">Female
		<%	}else{	%>
			<input type="radio" name="gen" value="Male" >Male
			<input type="radio" name="gen" value="Female" checked="checked">Female		
		<%	}	%>
		</td>
<td></td>
		<td>Marital status</td><td>
		<%
			String msta=rs.getString(7);
			if(msta.equalsIgnoreCase("married")){
		%>
			<input type="radio" name="msta" value="Married" checked="checked">Married
			<input type="radio" name="msta" value="Single">Single
		<%	}else{	%>
			<input type="radio" name="msta" value="Married" >Married
			<input type="radio" name="msta" value="Single" checked="checked">Single		
		<%	}	%>
		</td>
</tr>

<tr>
	<td>Phone</td><td><input type="text" name="phone" value="<%=rs.getString(8)%>" /></td>
<td></td>
	<td>Mail</td><td><input type="text" name="mail" value="<%=rs.getString(9)%>" /> </td>
</tr>
<tr>
	<td>Current Address</td><td><textarea rows="6" cols="35" name="cadd"><%=rs.getString(10)%></textarea></td>
<td></td>
	<td>Permanent Address</td><td><textarea rows="6" cols="35" name="padd"><%=rs.getString(11)%></textarea> </td>
</tr>
<tr>
	<td>Qualification</td><td><input type="text" name="qual" value="<%=rs.getString(12)%>" /></td>
<td></td>
	<td></td><td><input type="submit" value="Submit">&nbsp; <input type="reset" value="Reset"></td>
</tr>
</table>
</form>
<%
}
con.close();
}catch(Exception e){ }
%>
	</h5>	</div>
	
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
