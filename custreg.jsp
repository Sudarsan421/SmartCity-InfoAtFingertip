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
	  <h2><span>Welcome to New Regstration</span></h2>
        <div class="article">

Sign Up as Smartcity User        
<form action="userreg1.jsp" >
<font color="#990000" size="3"><b>Check User Name</b>
 <input name="t1" type="text" />  
<input type="submit" value="Go" />
</form>
<%
try{
String z1= request.getParameter("a1");
if(z1.equals("error"))
  out.print("<font color=red size=3>usrname has already in use. Try agian</font>");
}catch(Exception w){  }
%>
<br /><br />


Sign Up as Hotel User        
<form  action="custreg1.jsp">
<font color="black">Check Mail Id</font> <input type="mail" name="t1" placeholder="Enter Login Name" required="true" /> <input type="submit" class="btn" value="Submit">
</form>					 
<%
try{
	String s1= request.getParameter("z1");
	if(s1.equalsIgnoreCase("error")){
		out.print("<font color=red>User Name is already Registered. Try again !!</font>");
	}
}catch(Exception e){ } 
%> 



          
		  
		  
		  
		  
		  <br /><br /><br /><br /><br /><br />
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
