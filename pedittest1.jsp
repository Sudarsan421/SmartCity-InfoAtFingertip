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
		<jsp:include page="pathtop.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style1">
	  
	<br />  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Edit Test Information    <br /> <br />    
  <div class="article">
  
  
 <%
			try{
			 String name=request.getParameter("em");
			 String qry="select a.* from lab a,login b  where a.oid='"+(String)session.getAttribute("id")+"'  and a.oid=b.id and a.tname='"+name+"' ";
			//out.print(qry);
		    ResultSet rs=st.executeQuery(qry);
			if(rs.next()){
			%>	
<form method="post" action="pedittest2.jsp">
      <table width="718">
          <tr> 
		  <tr>
          <td>Test ID</td>
          <td><input type="text" name="tid" value="<%=rs.getString(1)%>" readonly="true" /></td>
          <td></td>
        </tr>
		  <tr>
          <td>Test Name</td>
          <td><input type="text" name="tname" value="<%=rs.getString(3)%>"/></td>
          <td></td>
        </tr>
          <tr>
            <td>Fees </td>
            <td><input type="text" name="fees" value="<%=rs.getString(4)%>"/></td>
            <td></td>
          </tr>
          <td>Days</td>
      <td><input type="text" name="days" value="<%=rs.getString(5)%>" /></td>
    <td></td>
  </tr>
  <tr>
    <td height="87"></td>
    <td><input name="submit" type="submit" value="Submit" /></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
      </table>
    </form>
			 <br/><br/>
<%
}
con.close();
}catch(Exception ee) { }
%>


</div>
</div>
      <div class="sidebar"> 
        <div class="gadget">
			<jsp:include page="pathleft.jsp" />
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
