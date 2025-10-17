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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to Approve Employee        
        <div class="article">
		</div>

<h5>	
<%! ResultSet rs=null; %>		  
<%
try{		
rs=st.executeQuery("select a.*,b.* from employee a,login b where a.eid=b.id and b.status='N'");
String id="";
if(rs.next()){
	rs.beforeFirst();
	%>
	<table width="877" border="1" cellpadding="1" cellspacing="2">
	<tr ><th width="119" height="27">Employee Id</th>
	<th width="214">Name</th>
	<th width="226">Father's Name</th>
	<th width="97">Date of birth</th>
	<th width="101">Date of joining</th>
	<th width="80">Action</th>
	</tr>
	<%
	while(rs.next()) {   %>
	<tr>
	<th><%id=rs.getString("eid");%><%=id%></th>
	<th><%=rs.getString("name")%> </th>
	<th><%=rs.getString("fname")%></th>
	<th><%=rs.getString("dob")%></th>
	<th><%=rs.getString("doj")%></th>
	<th><a href="adminapprove1.jsp?a1=<%=id%>"><font color="#00CC33">Approve</font></a></th>
	</tr>
	<%
	}
	%>
	</table>
<%	}else{
		out.print("<font color=red>New Empoyee are not register</font>");
	}
con.close();
}catch(Exception e){   out.print(e);  }
%>

</h5>	
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
