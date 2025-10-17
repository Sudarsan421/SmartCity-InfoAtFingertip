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
.style7 {color: #000000; font-size: small; }
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
	   Welcome <%= ((String) session.getAttribute("name")).toUpperCase() %> to</span> Hotel <a href="ehotelview.jsp"> View    </a>     
        <div class="article">
	


 
		
		</div>
		
 Click on image to Upload<br>
<% 
String phid=request.getParameter("a1");
//out.print(phid);
try{
ResultSet rs= st.executeQuery("select * from photo where pid='"+phid+"'");
 
if(rs.next()){
for(int i=1;i<=4;i++){
String img=rs.getString("photo"+ i);
// out.print("  "+("photo"+ i)+"  " + img+" "	);
%>
<a href="ehotelphoto1.jsp?a1=<%=phid%>&a2=<%=("photo"+ i)%>"><img src="./images/photos/<%=img%>" width="232" height="200"></a>
<%
	if(i%2==1){
		out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");	
	}else{
		out.print("<br><br>");
	}
}
}
con.close();
}catch(Exception e){   out.print("hello : "+e);   }   %>





	</div>
		
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="empleft.jsp" />
        </div>
        
      </div>
	  

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
