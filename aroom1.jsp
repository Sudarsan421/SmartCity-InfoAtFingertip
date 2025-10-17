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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Edit Room        
        <div class="article">
		</div>

<h5>
<% 
String s1=request.getParameter("a1");
try{ 
ResultSet rs= st.executeQuery("select * from room a, hotel b where a.rid='"+s1+"' and a.hid=b.hid");
if(rs.next()){
%>
<form action="aroom2.jsp" method="get">
<input type="hidden" name="rid" value="<%=s1%>" />
<table width="370" height="199">
<tr > 
<td width="114">Hotel Name</td>
<td width="244"> <%=rs.getString(10)%> </td>
</tr>

<tr> 
<td width="114">Size</td>
<td><input type="text" name="size" value="<%=rs.getString(3)%>" /></td></tr> 

<tr> 
<td width="114">Facility</td>
<td><input type="text" name="facility" value="<%=rs.getString(4)%>" /></td></tr> 


<tr> 
<td width="114">Price</td>
<td><input type="text" name="price" value="<%=rs.getFloat(5)%>" /></td></tr>


<tr> 
<td width="114">Rooms</td>
<td><input type="text" name="noroom" value="<%=rs.getString(6)%>" /></td></tr>

<tr>
<td></td>
<td><input type="submit" value="Submit"> <input type="reset" value="Reset"></td></tr>
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
