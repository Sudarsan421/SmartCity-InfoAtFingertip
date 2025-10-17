<%@ include file="dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
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
	color: #990000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>
		<a  >Smartcity<span></span> <small>Info at Fingure tip</small></a>
		</h1>
      </div>
      <div class="menu_nav">
        <jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> 
		<a href="#"><img src="images/image.jpg" width="1320" height="312" alt="" /> </a>  
		<a href="#"><img src="images/imagem2.jpg" width="1320" height="312" alt="" /> </a>  
		<a href="#"><img src="images/imagem3.jpg" width="1320" height="312" alt="" /> </a>  
		<a href="#"><img src="images/imagem4.jpg" width="1320" height="312" alt="" /> </a>  
		<a href="#"><img src="images/imagem5.jpg" width="1320" height="312" alt="" /> </a>  
		<a href="#"><img src="images/imagem6.jpg" width="1320" height="312" alt="" /> </a>   
		<a href="#"><img src="images/imagem7.jpg" width="1320" height="312" alt="" /> </a>    
		</div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content"><br /> <br />
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
<table width="956">
<tr><td width="233" align="left" valign="top" >
		<span class="style1">Organisation</span> 
		<%
			try{
				ResultSet rs =st.executeQuery("select * from organisation");
				out.print("<table>");
				while(rs.next()){
					out.print("<tr><td><a href=show.jsp?id="+rs.getString(1)+"&type=organisation>"+ rs.getString(2) +" - "+rs.getString(13)+"</a></td></tr>");
				}
				out.print("</table>"); 
			}catch(Exception e){ }		
		%>
</td>
<td width="293" align="left" valign="top" >
		<span class="style1">Ambulance/Mortuary</span>  
		 <%
			try{
				ResultSet rs =st.executeQuery("select * from vehicle");
				out.print("<table>");
				while(rs.next()){
					out.print("<tr><td><a href=show.jsp?id="+rs.getString(1)+"&type=vehicle>"+ rs.getString(2) +" "+rs.getString(3) +" - "+rs.getString(16)+"</a></td></tr>");
				}
				out.print("</table>"); 
			}catch(Exception e){ }		
		%>
</td>
<td width="174" align="left" valign="top">
		<span class="style1">Institute</span> 
		<%
			try{
				ResultSet rs =st.executeQuery("select * from institute");
				out.print("<table>");
				while(rs.next()){
out.print("<tr><td><a href=show.jsp?id="+rs.getString(1)+"&type=institute>"+ rs.getString(2) +"-"+rs.getString(3)+ "</a></td></tr>");
				}
				out.print("</table>"); 
			}catch(Exception e){ }		
		%>
		</td>
<td width="236" align="left" valign="top">
		<span class="style1">Hotel</span>
		<%
			try{
				ResultSet rs =st.executeQuery("select * from hotel a, place b  where a.pid=b.pid");
				out.print("<table>");
				while(rs.next()){
out.print("<tr><td><a href=show.jsp?id="+rs.getString(1)+"&type=hotel>"+ rs.getString(3) +", "+rs.getString(4)+"-"+rs.getString(10) +","+rs.getString(11)+","+rs.getString(12)+ "</a></td></tr>");
				}
				out.print("</table>");
				con.close();
			}catch(Exception e){ out.print(e);}		
		%>
		</td>
</tr>
</table>
        
		
		</div>
        
      </div>
      <div class="sidebar">  
        <div class="gadget">
		  <span class="style1">Sign In.....</span> 
		  <table>
		  <form action="login.jsp">
		  <tr><td><input type="text" name="t1" placeholder="Enter User Name" size="25" required /></td></tr>
		  <tr><td> <input type="password" name="p1" placeholder="Enter Password" size="25" required /></td></tr>
		  <tr><td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td></tr>
		  <tr><td>
		  <%
		  try{
		  	String z1= request.getParameter("a1");
			if(z1.equals("error"))
				out.print("<font color=red size=2>Incorrect Username/password<font>");
		  }catch(Exception e){ }
		  %></td></tr>
		  </form>
		  <tr><td>
		  <span class="style1">Sign Up As</span>
		  </td></tr>
		  <tr><td><a href="userreg.jsp"><font color="#0033FF" size="3">New User </font></a> 
		  
</table>
		   
		  	
               
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span>odisha University of Agriculture & Technology,  BBSR<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">ori.nc.in</a> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
		<jsp:include page="footer.jsp" />
    </div>
  </div>
</div>
</body>
</html>
