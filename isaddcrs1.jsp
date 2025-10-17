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
.style13 {font-size: 14px}
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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Add Course of the Institute    <br /> <br />    
  <div class="article">
  
<%
try{
String course=request.getParameter("course");
String fee=request.getParameter("fee");
String dur=request.getParameter("dur");
String timing=request.getParameter("timing");
String startson=request.getParameter("startson");
String desc=request.getParameter("desc");

String id=(String)session.getAttribute("id");
ResultSet  rs=st.executeQuery("select * from instcrs where course='"+course+"'");
if(rs.next()){
	out.print("<font Color=red size=3>"+course+" is Already Added</font></br>");
}else{
	rs=st.executeQuery("select max(substr(incrid,2)) from instcrs");
	int cnt=0;
	String uid="";
	 
	if(rs.next()){
		cnt=rs.getInt(1);
	}
	cnt++;
	if(cnt>0&&cnt<10)
		uid="C000"+cnt;
	else if(cnt>9&&cnt<100)
		uid="C00"+cnt;
	else if(cnt>99&&cnt<1000)
		uid="C0"+cnt;
	else
		uid="C"+cnt;
		
	 if( fee!="" && timing !="" && dur!="" && desc!=""  && startson!="" ){
		st.executeUpdate("insert into instcrs values('"+uid+"' , '"+id+"', '"+course+"', '"+fee+"','"+dur+"','"+timing+"','"+startson+"','"+desc+"')");
	out.print("<font Color=green size=3>"+course+" Added Successfully</font></br>");
	}
}
con.close();
}catch(Exception e){ out.print(e); }
%>



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
