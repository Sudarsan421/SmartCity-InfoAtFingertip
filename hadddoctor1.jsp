 <%@ include file="dbcon.jsp"%>
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
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
		<jsp:include page="hospitaltop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Hospital's Doctors <br /> <br />    
  <div class="article">
  
  
 <%try{
  String oid=((String)session.getAttribute("id"));
  String depid=request.getParameter("depid");
  String name=request.getParameter("name");
  String timing=request.getParameter("timing");
  String fee=request.getParameter("fee");
  String days=request.getParameter("days");
  String doid="";
   int cnt=0;
   ResultSet rs=st.executeQuery("select max(substr(doid,2))from doctor");
	try{
	   if(rs.next())
	      {
	     cnt=rs.getInt(1);
		  }
		} catch(Exception e){}
		  cnt++;
		  if(cnt>0 && cnt<10)
		     doid="D0000"+cnt;
		  else if(cnt>9 && cnt<100)
		      doid="D000"+cnt;
		  else if(cnt>99 && cnt<1000)
		  	           doid="D00"+cnt;
		  else if(cnt>999 && cnt<10000)
		  	           doid="D"+cnt;			   
		  else  doid="D"+cnt;		   
		  
	String qry="insert into doctor values('"+doid+"','"+oid+"','"+depid+"','"+name+"','"+timing+"','"+fee+"','"+days+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
			
	out.print("<font color=green size=+3>"+ name +" Added Successfully </font><br />");
	

	con.close();
	
	}catch(Exception e){out.print(e);}
%>


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="hospitalleft.jsp" />
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
