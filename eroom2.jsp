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
.style2 {font-size: small}
.style4 {color: #0000FF; font-size: small;}
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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to  </span> Room <a href="eroomview.jsp"> View</a>        
        <div class="article">
		</div>

<% 
String hid = request.getParameter("hid");
String size = request.getParameter("size");
String facility = request.getParameter("facility");
String price = request.getParameter("price");
String noroom = request.getParameter("noroom");
try{
ResultSet rs= st.executeQuery("select * from room where hid='"+hid+"' and size='"+size+"'");
if(rs.next()){
	out.print("<font color=red size=3>Room details are Already Updated.</font>");	
}else{
	rs=st.executeQuery("select max(substr(rid,2)) from room");
	int cnt=0;
	String rid="";
	try{
	  if(rs.next()){
	     cnt=rs.getInt(1);
      }
	}catch(Exception e){ }
	cnt++;
	
	if(cnt>0 && cnt <10)
	   rid="R0000"+cnt;
	else if(cnt>9 && cnt <100)
	   rid="R000"+cnt;
	else if(cnt>99 && cnt <1000)
	   rid="R00"+cnt;
	else if(cnt>999 && cnt <10000)
	   rid="R0"+cnt;
	else  
	   rid="R"+cnt;
	
	String qry="insert into room values('"+rid+"','"+hid+"','"+size+"','"+ facility+"',"+price+","+noroom+")";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	out.print("<font color=green size=3>Room details are Updated Successfully.</font>");
}
con.close();
}catch(Exception e){   out.print(e);   }   
%>


	  </div>
		
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
