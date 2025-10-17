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
.style5 {font-size: 14px}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Place Entry <a href="aplaceview.jsp">View</a> <br />       
        <div class="article">

<%
try{
String place = request.getParameter("place");
String area = request.getParameter("area");
String dist = request.getParameter("dist");
String state = request.getParameter("state");
String famfor = request.getParameter("famfor");
String descr = request.getParameter("descr");
String url = request.getParameter("url");

ResultSet rs= st.executeQuery("select * from place where place='"+place+"' and famfor='"+famfor+"'");
if(rs.next()){
	out.print("<font color=red size=3>The "+famfor +" at "+place+" is Already Avaialable.</font>");
}else{
 	
	rs=st.executeQuery("select max(substr(pid,3)) from place");
	int cnt=0;
	String pid="";
	try{
	  if(rs.next()){
	     cnt=rs.getInt(1);
      }
	}catch(Exception e){ }
	cnt++;
	
	if(cnt>0 && cnt <10)
	   pid="PL0000"+cnt;
	else if(cnt>9 && cnt <100)
	   pid="PL000"+cnt;
	else if(cnt>99 && cnt <1000)
	   pid="PL00"+cnt;
	else if(cnt>999 && cnt <10000)
	   pid="PL0"+cnt;
	else  
	   pid="PL"+cnt;
	
	String qry="insert into place values('"+pid+"','"+place+"','"+area+"','"+ dist+"','"+state+"','"+famfor+"','"+descr+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	
	 qry="insert into photo values('"+pid+"','','','','','','','','')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	
	String qry="insert into link values('"+pid+"','"+url+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	out.print("<font color=green size=3>The "+famfor +" at "+ place+" is uploaded Successfully.</font>");
}
con.close();
}catch(Exception e){ }
%> 		

		</div>
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
