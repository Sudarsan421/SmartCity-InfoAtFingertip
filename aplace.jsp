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

<form action="aplace1.jsp" method="post">
<table>
<tr><td width="278"><span class="style8 style5">Place Name</span></td> 
<td width="225"><input type="text" name="place" required /></td></tr>
<tr><td><span class="style8 style5">Area(City Name or nearest City Name)</span></td> 
<td><input type="text" name="area" required /></td></tr>
<tr><td><span class="style8 style5">District</span></td> 
<td><input type="text" name="dist" required /></td></tr>

<tr><td><span class="style8 style5">State</span></td> 
<td><input type="text" name="state" required /></td></tr>

<tr><td><span class="style8 style5">URL</span></td> 
<td><input type="text" name="url" required /></td></tr>


<tr><td><span class="style8 style5">Famous for</span></td> 
<td><textarea name="famfor" rows="6" cols="60"  required></textarea></td></tr>

<tr><td><span class="style8 style5">Description(Within 1000 letters)</span></td> 
<td><textarea name="descr" rows="6" cols="60"  required></textarea></td></tr>
<tr><td></td> 
<td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
</table>
</form>			

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
