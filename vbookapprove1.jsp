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
.style4 {font-size: 12px}
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
		<jsp:include page="vehicletop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  <br />
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Vehicle Approve    <br />     

        <div class="article">
<br />

<%try{
      		  String str=request.getParameter("a1");
			   String str1=request.getParameter("a2");
			   String str2= (String)session.getAttribute("id");
			   //out.print(str);
			   //out.print(str1);
			   //out.print(str2);
			   if(str1.equalsIgnoreCase("A"))
			    {
				   
				   String qry="update booking set status='Complete' where bookid='"+str+"'";
	               st.executeUpdate(qry);
				   //out.print(qry);
				   out.print("<font Color=green size=3>"+ str +" Approved Successfully</font></br>");
				 }
				 else
				 {
				 String qry2="update vehicle set availability='Y' where vid='"+str2+"'";
				 out.print(qry2);
				  st.executeUpdate(qry2);
				 String qry1="update booking set status='Rejected' where bid='"+str+"'";
				  out.print(qry1);
				    st.executeUpdate(qry1);
				 
				   out.print("<font Color=red size=3>"+ str +" Rejected Successfully</font></br>");
				  }
				 
				   
			con.close();
			}
			catch(Exception e){ }  
			%>




</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="vehicleleft.jsp" />
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
