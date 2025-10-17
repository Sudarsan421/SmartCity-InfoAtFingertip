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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Update Profile <div class="article">
	<%
try{
  String s1=(String) session.getAttribute("id");
  String nam=request.getParameter("fullname"); 
  String fnm=request.getParameter("fname");
  String dob=request.getParameter("dob");
  String gen=request.getParameter("gender");
  String mstatus=request.getParameter("mstatus");
  String edu=request.getParameter("edu");
  String phone=request.getParameter("phone");
  String mail=request.getParameter("mail");
  String cadd=request.getParameter("cadd");
  String padd=request.getParameter("padd");
  String idprf=request.getParameter("idprf");
  String idprfid=request.getParameter("idprfid");
  String dor= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
  String photo=request.getParameter("photo");
	 
  String qry="update user set  fullname='"+nam+"', fname='"+fnm+"' , dob='"+dob+"' , gender='"+gen+"',mstatus='"+mstatus+"',edu='"+edu+"', phone='"+phone+"' ,mail='"+mail+"',cadd='"+cadd+"',padd='"+padd+"',idprf='"+idprf+"',idprfid='"+idprfid+"',dor='"+dor+"',photo='' where uid='"+s1+"'";
	
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
