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
.style19 {font-size: 14px}
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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Update Course of the Institute    <br /> <br />    
  <div class="article">
  
<% 
try{
String crsid=request.getParameter("crsid"); 
String course = request.getParameter("course");
String fee = request.getParameter("fee");
String dur = request.getParameter("dur");
String timing = request.getParameter("timing");
String startson = request.getParameter("startson");
String desc = request.getParameter("desc");
String qry="update instcrs set course='"+course+"', fee='"+fee+"', dur='"+dur+"', timing='"+timing+"', startson='"+startson+"', descr='"+desc+"' where incrid='"+crsid+"'";
//out.print("<br>"+qry+"<br>");
st.executeUpdate(qry);
out.print("<font Color=green size=3>"+course+" Updated Successfully</font></br>");
con.close();
}catch(Exception e){   out.print(e);   }   %>




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
