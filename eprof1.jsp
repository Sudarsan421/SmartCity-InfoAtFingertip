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
String uid=request.getParameter("uid");
String name=request.getParameter("name");
String fname=request.getParameter("fname");
String dob=request.getParameter("dob");
String gen=request.getParameter("gen");
String msta=request.getParameter("msta");
String phone=request.getParameter("phone");
String mail=request.getParameter("mail");
String cadd=request.getParameter("cadd");
String padd=request.getParameter("padd");
String qual=request.getParameter("qual");
String s="update employee set name='"+name+"',fname='"+fname+"',dob='"+dob+"',gender='"+gen+"',mstatus='"+msta+"',phone='"+phone+"',mail='"+mail+"',cadd='"+cadd+"',padd='"+padd+"',qual='"+qual+"'  where eid='"+(String)session.getAttribute("uid")+"'";
st.executeUpdate(s);
out.print("<font color=green  >The Employee Profile  is updated.</font>");


con.close();
}catch(Exception e){out.print(e); }
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
