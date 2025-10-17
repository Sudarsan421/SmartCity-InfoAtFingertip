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
	  Welcome <%=((String) session.getAttribute("name")).toUpperCase() %> to User's Pannel <div class="article">


<%
String qry="", lati="", longi="", str="";
try{
String id=request.getParameter("em");
//String logname=request.getParameter("logname");
ResultSet rs=st.executeQuery("select * from link where id='"+id+"'");
if(rs.next()){
  str=rs.getString(2);
}
qry="select a.* from organisation a,login b where a.oid=b.id and b.status='y' and a.type='Hospital' and  oid='"+id+"'";
//out.print(qry+"<br>");
 rs=st.executeQuery(qry);
if(rs.next()){
%>	

<table border="1">
<tr><td>
	<table width="515" height="384"  cellpadding="5">
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Name</strong></span></td> 
	<td width="379" bordercolor="#000000"><span class="style10 style5 style4"><strong><a href="<%=str%>" target="_parent"><%=str%></a></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Plot No</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(3)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Area</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(4)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>City</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(5)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Pincode</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(6)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>District</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(7)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>State</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(8)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Phone</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(9)%></strong></span></td>
	</tr>
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Mail</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(10)%></strong></span></td>
	</tr>
	 
	
	<tr><td width="120" bordercolor="#000000"><span class="style7 style7 style4"><strong>Timing</strong></span></td>
	<td bordercolor="#000000"><span class="style10 style5 style4"><strong><%=rs.getString(12)%></strong></span></td>
	</tr>
	</table>	


</td><td>
	<img src="./images/orga/<%=rs.getString(11)%>" width="420" height="300" alt="no photo" />
</td></tr>
</table>
<% }  %>  	 
		
		
<h4>View Department Details Here</h4>
 			 <table width="923"  height="65" border="1"  cellpadding="5">
			 <tr>
			 <td width="354" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Department Name</strong></span></td>
			 <td width="144" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Type</strong></span></td>
			 <td width="192" bgcolor="#CCCCCC"><span class="style7 style7 style4"><strong>Timing</strong></span></td>
			 </tr>
			 <% 
			  qry="select a.*,b.* from dept a,organisation b where a.oid='"+id+"'  and b.oid='"+id+"' ";
			 //out.print(qry);
			  rs=st.executeQuery(qry);	 		   
			 while(rs.next())
			 { 
				lati = rs.getString("lati");
			    longi = rs.getString("longi");
			 %>
	<tr>
<td height="29" bgcolor="#CCCCCC"><span class="style4"><strong><a href="uviewdoctors.jsp?a1=<%=rs.getString(1)%>&a2=<%=rs.getString(2)%> &a3=<%=rs.getString(3)%> "><font color="#330099"><%=rs.getString(3)%></font></a></strong></span></span></td>
			<td bgcolor="#CCCCCC"><span class="style10 style5 style4"><strong><%=rs.getString(4)%></strong></span></td>
			<td bgcolor="#CCCCCC"><span class="style10 style5 style4"><strong><%=rs.getString(5)%></strong></span></td>
			</tr>
			<% }
            %>  	 
		   </table>
<div id="map"></div>
<%
con.close();
}catch(Exception e){out.print(e);}	 

%>	
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
