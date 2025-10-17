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
.style3 {font-size: 12}
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
	   Welcome <%= ((String) session.getAttribute("name")).toUpperCase() %> to</span> Hotel <a href="ehotelview.jsp"> View         
        <div class="article">
		</div>
 <%
try{
String pid = request.getParameter("pid");
String type = request.getParameter("type");
String name = request.getParameter("name");
String phno = request.getParameter("phno");
String address = request.getParameter("address");
String loca = request.getParameter("loca");

ResultSet rs= st.executeQuery("select * from hotel where pid='"+pid+"' and name='"+name+"' and loca='"+loca+"'");
if(rs.next()){
	out.print("<font color=red size=3>The "+name +" is Already Avaialable.</font>");
}else{
	rs=st.executeQuery("select max(substr(hid,2)) from hotel");
	int cnt=0;
	String hid="";
	try{
	  if(rs.next()){
	     cnt=rs.getInt(1);
      }
	}catch(Exception e){ }
	
	cnt++;
	
	if(cnt>0 && cnt <10)
	   hid="H0000"+cnt;
	else if(cnt>9 && cnt <100)
	   hid="H000"+cnt;
	else if(cnt>99 && cnt <1000)
	   hid="H00"+cnt;
	else if(cnt>999 && cnt <10000)
	   hid="H0"+cnt;
	else  
	   hid="H"+cnt;
	
	String qry="insert into hotel values('"+hid+"','"+pid+"','"+type+"','"+ name+"','"+phno+"','"+address+"','"+loca+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	
	 qry="insert into photo values('"+hid+"','','','','','','','','')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	
	out.print("<font color=green size=3>The "+name +" is uploaded Successfully.</font>");
}
con.close();

}catch(Exception e){ }
%> 	
		</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
        </div>
        
      </div>
	  



<br /><br />
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
