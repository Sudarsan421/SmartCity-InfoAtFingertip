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
.style9 {font-size: 14px}
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
		<jsp:include page="insttop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Institute Profile    <br /> <br />    
  <div class="article">
  
<%
try{
ResultSet rs= st.executeQuery("select * from institute where instid='"+(String)session.getAttribute("id")+"'");
if(rs.next()){	%>
<form action="isprofile1.jsp" >
<table width="914" height="263">
<tr><td width="94"><span class="style9">Name</span></td> <td width="303"><input name="name" type="text" value="<%=rs.getString(2)%>" /></td>
<td width="172"><span class="style9">Type</span></td> <td width="325"><input name="type" type="text" value="<%=rs.getString(3)%>" /></td></tr>


<tr><td><span class="style9">Phone</span></td> <td><input name="phone1" type="text" value="<%=rs.getString(7)%>" /></td>
<td><span class="style9">Alt. Phone</span></td> <td><input name="phone2" type="text" value="<%=rs.getString(8)%>" /></td></tr>

<tr><td><span class="style9">Mail ID</span></td> <td><input name="mail" type="text" value="<%=rs.getString(9)%>" /></td>
<td><span class="style9">Date of Registration</span></td> <td><span class="style9"><%=rs.getString(4)%></span></td></tr>

<tr>
<td><span class="style9">Address</span></td> <td><textarea name="cadd" rows="6" cols="35"><%=rs.getString(5)%></textarea></td>
<td><span class="style9">About</span></td> <td><textarea name="about" rows="6" cols="35"><%=rs.getString(10)%></textarea></td>
</tr>

<tr>
<td><span class="style9">Latitude</span></td> <td><input name="lati" type="text" value="<%=rs.getString(11)%>" /></td>
<td><span class="style9">Longitude</span></td> <td><input name="longi" type="text" value="<%=rs.getString(12)%>" /></td></tr>

<tr><td><span class="style9"></span></td> <td><span class="style9"></span></td>
<td></td> <td><span class="style9">
  <input type="submit" value="Submit" /> 
  <input type="reset" value="Reset" />
</span></td></tr>
</table>
</form>
<%
}
con.close();
}catch(Exception e){ }
%>



</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="instleft.jsp" />
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
