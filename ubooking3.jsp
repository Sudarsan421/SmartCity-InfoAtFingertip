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

<link rel="stylesheet" type="text/css" href="tabcontent.css" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
  
<script type="text/javascript" src="tabcontent.js"></script>
 <style> 
  .myButton {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 44px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.myButton:active {
	position:relative;
	top:1px;
}
     
      #map {
        width: 920px;
        height: 600px;
      }
    .style2 {font-size: small}
 </style>
<script type="text/javascript" src='js/jquery-1.10.0.min.js'></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Book Hotel <a href="ubookview.jsp">View</a>   <br /> <br />    
  <div class="article">
 
<%
String rid= request.getParameter("rid"); 
int nor=Integer.parseInt(request.getParameter("nor"));
String froms=request.getParameter("frms");
String tos=request.getParameter("tos");
String hid="",pid="";
float amt=0.0F;
String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
String cid=(String)session.getAttribute("id");
String qry="";
try{
qry="select * from room a, hotel b, place c where rid='"+rid+"' and a.hid=b.hid and b.pid=c.pid";
//out.print("<br>"+qry+"<br>");
ResultSet rs=st.executeQuery(qry);
if(rs.next()){
 	hid=rs.getString(2);
	amt=rs.getFloat(5);
 	pid=rs.getString(8);
}

qry="select * from booking1 where rid='"+rid+"' and cid='"+cid+"' and noroom="+nor+" and bkdt='"+dt+"'";
//out.print("<br>"+qry+"<br>");
rs=st.executeQuery(qry);
if(rs.next()){
  	out.print("<font color=red size=+2>The room is Already Booked.</font>");
}else{
	rs=st.executeQuery("select max(substr(bid,2)) from booking1");
	int cnt=0;
	String bid="";
	try{
	  if(rs.next()){
	     cnt=rs.getInt(1);
      }
	}catch(Exception e){ }
	
	cnt++;
	
	if(cnt>0 && cnt <10)
	   bid="B0000"+cnt;
	else if(cnt>9 && cnt <100)
	   bid="B000"+cnt;
	else if(cnt>99 && cnt <1000)
	   bid="B00"+cnt;
	else if(cnt>999 && cnt <10000)
	   bid="B0"+cnt;
	else  
	   bid="B"+cnt;

//bid	rid	hid	pid	cid	noroom froms	tos	bkdt	amount	
	qry="insert into booking1 values('"+bid+"','"+rid+"','"+hid+"','"+ pid+"','"+cid+"',"+nor+",'"+froms+"', '"+tos+"', '"+dt+"', "+(amt*nor)+")";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
		
  	out.print("<font color=green size=+2>The room is Booked Successfully.</font>");
}

con.close();
}catch(Exception e){   out.print(e);   }   
%>



 
  </div>
 


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
