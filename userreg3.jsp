<%@ include file="dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="about.jsp">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2>Welcome to user resistration</h2>
        <div class="article">
     

<%
try{
  String logname=request.getParameter("logname");
  ResultSet rs=st.executeQuery("select * from login where logname='"+logname+"'");
  if(rs.next()){
  out.print("<font color=red size=+2>"+logname+" is Already Exist !!!!!</font>");
}else{

    String pwd=request.getParameter("pwd");
	String secques=request.getParameter("secques");
 	String secans=request.getParameter("secans");
	
	//String name=request.getParameter("logname");
	String fullname=request.getParameter("fullname");
    String fname=request.getParameter("fname");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
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
	 
 
 rs=st.executeQuery("select max(substr(uid,2)) from user");
 int cnt=0;
 if(rs.next()){
cnt=rs.getInt(1);
}
cnt++;
String uid="";
if(cnt>0 && cnt<10)
   uid = "U000"+cnt;
else if(cnt>9 && cnt<100)
   uid = "U00"+cnt;
else if(cnt>99 && cnt<1000)
   uid = "U0"+cnt;
else
	uid = "U"+cnt;

String qry ="insert into login values('"+uid+"','"+logname+"','"+pwd+"','"+dor+"','user','y','"+secques+"','"+secans+"')";
//out.println("<br>"+qry+"<br>");
st.executeUpdate(qry);


     qry ="insert into user values('"+uid+"','"+fullname+"','"+fname+"','"+dob+"','"+gender+"','"+mstatus+"','"+edu+"','"+phone+"','"+mail+"','"+cadd+"','"+padd+"','"+idprf+"','"+idprfid+"','"+dor+"','')";
//out.println("<br>"+qry+"<br>");
int i=st.executeUpdate(qry);

qry="insert into customer values('"+uid+"', '"+fullname+"', '"+cadd+"', '"+phone+"','"+mail+"', '"+dob+"', '"+gender+"','"+mstatus+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);

out.println("<font color=green size=+2>"+logname+" ia Registered Successfully.</font>");
}
con.close();
}catch(Exception e) { 
 out.print(e);
}
%>
<br /> <a href="index.jsp">Please Login </a>




          
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar"> 
        <div class="gadget"> 
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
