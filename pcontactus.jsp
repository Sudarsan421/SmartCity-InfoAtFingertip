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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Contact Us. <br /> <br />    
  <div class="article">
  
   
<form  name="f2" id="f2" method="get" action="pcontactus1.jsp">

<%
try{
    String s1=(String) session.getAttribute("id");
	String qry="select b.* from login a,organisation b where a.id='"+s1+"' and a.id=b.oid and a.type='Path Lab' ";
	//out.print(qry);
	ResultSet rs=st.executeQuery(qry);
	if(rs.next()){
%>

<table>
<tr>
<td width="289"><h2>PathLab Name:</h2></td>
<td width="630"><input type="text" name="name" value="<%=rs.getString(2)%>" readonly="true"/></td>
</tr>
<tr>
  <td><h2>Email Address: </h2></td>
  <td><input type="text" name="email"  value="<%=rs.getString(10)%>"   readonly="true"/></td></tr>
<tr><td><h2>Phone Number:</h2></td><td> <input type="text" name="phone" value="<%=rs.getString(9)%>"  /> </td></tr>
<tr><td> <h2>Your Message/Feedback/Suggestion: </h2></td><td> <textarea id="message" name="message" rows="8" cols="60"></textarea>
</td>
</tr>
<tr><td> </td><td> <input type="submit" value="Submit" /> <input type="reset" value="Reset" /> </td></tr>
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
