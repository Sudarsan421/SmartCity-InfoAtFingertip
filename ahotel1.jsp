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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Edit Hotel       
        <div class="article">
		</div>
		
<h5>
<% 
 try{
 String s1=request.getParameter("a1");
ResultSet rs= st.executeQuery("select * from hotel where hid='"+s1+"'");
if(rs.next()){
%>
<form action="ahotel2.jsp" method="get">
<input type="hidden" name="h1" value="<%=s1%>" >
<table width="622" height="170"> 
<tr><td width="80">Name</td>
<td><input name="name" type="text" value="<%=rs.getString(4)%>" /></td></tr>
<tr><td width="76">Type</td>
<td><input name="type" type="text" value="<%=rs.getString(3)%>" /></td></tr>
<tr><td width="99">Phone</td>
<td><input name="phno" type="text" value="<%=rs.getString(5)%>" /></td></tr>
<tr><td width="102">Address</td>
<td><textarea name="address" rows="6" cols="30"><%=rs.getString(6)%></textarea></td></tr>
<tr><td width="109">Location</td> 
<td><input name="loca" type="text" value="<%=rs.getString(7)%>" /></td></tr>
<tr><td></td> 
<td><span class="style5">
  <input type="submit" value="Submit" /> 
  <input type="reset" value="Reset" />
</td></tr>
</table>
</form>
<%    
}
con.close();
}catch(Exception e){   out.print(e);   }   
%>
</h5>
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
