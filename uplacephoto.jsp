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
.style4 {font-size: 14px}
.style6 {color: #000000; font-weight: bold;}
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
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Tourist Place    <br /> <br />    
  <div class="article">
  
    <span class="style4">
    <%
String place="",area="",dist="",state="",famfor="",descr="",pic1="",pic2="",pic3="",pic4="",pic5="",pic6="",pic7="",pic8="", url="";
try{
ResultSet rs = st.executeQuery("select * from link where id='"+request.getParameter("a1")+"'");
if(rs.next()){
  url=rs.getString(2);
}

rs = st.executeQuery("select * from place where pid='"+request.getParameter("a1")+"'");
if(rs.next()){
	place=rs.getString(2);
	area=rs.getString(3);
	dist=rs.getString(4);
	state=rs.getString(5);
	famfor=rs.getString(6);
	descr=rs.getString(7);
}

rs = st.executeQuery("select * from photo where pid='"+request.getParameter("a1")+"'");
if(rs.next()){
	pic1=rs.getString(2);
	pic2=rs.getString(3);
	pic3=rs.getString(4);
	pic4=rs.getString(5);
	pic5=rs.getString(6);
	pic6=rs.getString(7);
	pic7=rs.getString(8);
	pic8=rs.getString(9);
}
 
con.close();
}catch(Exception e){ }
%>



    <span class="style6">PLACE : </span></span> <span class="style4"><%=place%>&nbsp; &nbsp;&nbsp; &nbsp;	<span class="style6">CITY : </span></span> <span class="style4"><%=area%> &nbsp; &nbsp;&nbsp; &nbsp; <span class="style6">DIST : </span></span> <span class="style4"><%=dist%>  &nbsp; &nbsp;&nbsp; URL : <a href="<%=url%>" target="_parent" ><%=url%></a>  </span>  <br>
<img src="images/photos/<%=pic1%>" width="300" height="200" > &nbsp; &nbsp;
<img src="images/photos/<%=pic2%>" width="300" height="200" ><br>
<span class="style4"><br>
 <span class="style6">STATE : </span></span> <span class="style4"><%=state%> &nbsp; &nbsp;&nbsp; &nbsp; <span class="style6">FAMOUS FOR : </span></span> <span class="style4"><%=famfor%></span><br>
 <br>
<img src="images/photos/<%=pic3%>" width="300" height="200" > 
<img src="images/photos/<%=pic4%>" width="300" height="200" ><br><br>

<br>
<span class="style4"><%=	descr %> </span><br>
<br>
<img src="images/photos/<%=pic5%>" width="300" height="200" >
<img src="images/photos/<%=pic6%>" width="300" height="200" > <br><br>

<img src="images/photos/<%=pic7%>" width="300" height="200" >
<img src="images/photos/<%=pic8%>" width="300" height="200" ></div>
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
