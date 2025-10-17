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
	<h2>Welcome to Institute Registration</h2>
        <div class="article">
         


<%
try{
String name=request.getParameter("logname");
String pwd=request.getParameter("pwd");
String type=request.getParameter("type");
String cadd=request.getParameter("cadd");
String about=request.getParameter("about");
String phone1=request.getParameter("phone1");
String phone2=request.getParameter("phone2");
String mail=request.getParameter("mail");
String secques=request.getParameter("secques");
String secans=request.getParameter("secans");
String lat=request.getParameter("lat");
String lng=request.getParameter("lng");
String dt=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());


ResultSet rs=st.executeQuery("select * from institute where name='"+name+"'");
if(rs.next()){
	out.print("<font color=red size=3>"+ name +" Already Registered.</font><br />");
}else{
	rs=st.executeQuery("select max(substr(instid,2)) from institute");
	int cnt=0;
	String uid="";
	try{
		if(rs.next()){
			cnt=rs.getInt(1);
		}
	}catch(Exception ee){}
	cnt++;

	if(cnt>0&&cnt<10)
		uid="A000"+cnt;
	else if(cnt>9&&cnt<100)
		uid="A00"+cnt;
	else if(cnt>99&&cnt<1000)
		uid="A0"+cnt;

//instid	name	type	dor cadd	photo	phone1	phone2	mail	about	lati	longi
	st.executeUpdate("insert into institute values('"+uid+"' , '"+name+"', '"+type+"', '"+dt+"','"+cadd+"','','"+phone1+"','"+phone2+"','"+mail+"','"+about+"','"+lat+"','"+lng+"')");
	
	session.removeAttribute("instid");
	session.setAttribute("instid",uid);

	st.executeUpdate("insert into login values('"+uid+"','"+name+"','"+pwd+"','"+dt+"','Institute','N','"+secques+"','"+secans+"')");
	out.print("<font color=green size=3>"+ name +" Registered Successfully.</font><br />");

	con.close();
	}
}catch(Exception e){	}
%>	
 
 
 <br />
<font color=green size=3>Choose Picture of Institute.</font>
<FORM ENCTYPE="multipart/form-data" ACTION="upservlet3" METHOD=POST> 
<table border="0" bgcolor=#ccFDDEE>
<tr>
	<td colspan="2" align="center"><B>UPLOAD THE FILE</B></td>
</tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><b>Choose the file To Upload:</b></td>
<td><INPUT NAME="file" TYPE="file"></td>
</tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr>
  <td colspan="2" align="center"><input name="submit" type="submit" value="Send File" /></td>
</tr>
</table>
</FORM>
         
          <p>&nbsp;</p>
        </div>
		<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
