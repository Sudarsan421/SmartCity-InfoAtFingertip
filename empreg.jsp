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
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
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
	<h2>Welcome to Employee Registration</h2>
        <div class="article">
         
			  <font color="#990000" size="3"><b>Emloyee Sign Up</b></font><br /> <br />
              <form  action="empreg1.jsp" method="post" name="f1">
          
            <label> <span class="style2">Check Login Name</span> 
            <input name="t1" type="text" required="true" />
          </label>  
                  <input type="submit" value="Submit">            
        </form>	  		  
					<%
			  try{
			  	String s1=request.getParameter("a1");
				if(s1.equals("galat")){
					out.print("<font color=red>User Name is already Registered. Try another Name  !!</font>");
				}
			  }catch(Exception e){ }
			 %>


          
          <p>&nbsp;</p>
        </div>
		<br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div>
      <div class="sidebar"> 
        <div class="gadget">
		
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
