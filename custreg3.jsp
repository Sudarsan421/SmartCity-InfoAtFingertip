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
	  <h2><span>Welcome to New Customer</span></h2>
        <div class="article">
          

<%
try{
String logname = request.getParameter("logname");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String addres = request.getParameter("addres");
String phno = request.getParameter("phno"); 
String dob = request.getParameter("dob");
String gender = request.getParameter("gender");
String mstatus = request.getParameter("mstatus");
String sques = request.getParameter("sques");
String sans = request.getParameter("sans");

String qry="select * from login where logname='"+logname+"'";
ResultSet rs= st.executeQuery(qry);
if(rs.next()){
  	out.print("<font color=red size=3>"+logname.toUpperCase()+" is already registered..</font>");
}else {
	rs=st.executeQuery("select max(substr(cid,2)) from customer");
	int cnt=0;
	try{
	  if(rs.next()){
	     cnt=rs.getInt(1);
      }
	}catch(Exception e){ }
	cnt++;
	String cid="";
	if(cnt>0 && cnt <10)
	   cid="C0000"+cnt;
	else if(cnt>9 && cnt <100)
	   cid="C000"+cnt;
	else if(cnt>99 && cnt <1000)
	   cid="C00"+cnt;
	else if(cnt>999 && cnt <10000)
	   cid="C0"+cnt;
	else  
	   cid="C"+cnt;
	String today= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
	qry="insert into login values('"+cid+"','"+logname+"','"+pwd+"','"+today+"','Customer','Y','"+ sques+"','"+sans+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
 	 
	qry="insert into customer values('"+cid+"', '"+name+"', '"+addres+"', '"+phno+"','"+logname+"', '"+dob+"', '"+gender+"','"+mstatus+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	out.print("<font color=green size=3>"+logname.toUpperCase()+" is registered successfully.</font>");	  
  }
  con.close(); 
}catch(Exception e){ out.print(e);}
%>

          <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
          <p>&nbsp;</p>
        </div>
      </div>
     
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
