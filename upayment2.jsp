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
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %>to</span> Customer Payment  <a href="upayview.jsp">View</a>   <br /> <br />    
  <div class="article">
 
<%!  String bid="",cid="",payid="";  %>
<%
try{
bid=request.getParameter("a1"); 
cid = (String)session.getAttribute("id"); 
String bname = request.getParameter("bname");
String pdate = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
String cardno = request.getParameter("cardno");
String acno = request.getParameter("acno");
String amount = request.getParameter("amount");
payid="";

ResultSet rs= st.executeQuery("select * from payment where cid='"+cid+"' and bid='"+bid+"' and bname='"+bname+"' and  pdate='"+pdate+"' and  cardno='"+cardno+"' and acno='"+acno+"' and amount="+amount );
if(rs.next()){
  out.print("<font color=red size=+2>Your have Already Paid.</font>");
  payid=rs.getString(1);
}else{
	 String qry="select max(substr(payid,2)) from payment";
	 rs=st.executeQuery(qry);
	 int cnt=0;
	 try{
		 if(rs.next()){
			cnt=rs.getInt(1);
		 }
	 }catch(Exception e){ cnt=0; }
	 cnt++;
	// out.print("ha ha "+cnt);
	 payid="";
	 if(cnt>0 && cnt<10) {
		payid="P0000"+cnt;
	 }else if(cnt>9 && cnt<100) {
		payid="P000"+cnt;
	 }else if(cnt>99 && cnt<1000) {
		payid="P00"+cnt; 
	 }else if(cnt>999 && cnt<10000) {
		payid="P0"+cnt; 
	 }else  {
		payid="P"+cnt;  
	 }
	 qry="insert into payment values('"+payid+"','"+cid+"','"+bid+"','"+bname+"', '"+pdate+"','"+cardno+"','"+acno+"', "+amount+")";
	  st.executeUpdate(qry);
	out.print("<font color=green size=+2>Payment Made Successfully.</font>"); 
}
con.close();
}catch(Exception e){ out.print(e); } 
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
