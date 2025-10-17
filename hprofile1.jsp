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
		<jsp:include page="hospitaltop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Hospital Updation    <br /> <br />    
  <div class="article">
  
  
<% 
try{
  String s1=(String) session.getAttribute("id");
  String plotno=request.getParameter("plotno"); 
  String area=request.getParameter("area");
  String city=request.getParameter("city");
  String pincode=request.getParameter("pincode");
  String district=request.getParameter("district");
  String state=request.getParameter("state");
  String phone=request.getParameter("phone");
  String mail=request.getParameter("mail");
  String timing=request.getParameter("timing");
  String type=request.getParameter("type");
	String qry="update organisation set  plotno='"+plotno+"' , area='"+area+"' , city='"+city+"' , pincode='"+pincode+"' , dist='"+district+"' ,state='"+state+"' ,phone='"+phone+"' , mail='"+mail+"',timing='"+timing+"'  where oid='"+s1+"'";
	
	//out.print(qry);
	st.executeUpdate(qry);
	
	out.print("<font color=green size=+3> Updated Successfully </font><br />");
	
	con.close();
	
	}catch(Exception e){out.print(e);}
%>	


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospitalleft.jsp" />
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
