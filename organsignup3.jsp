<%@ page language="java" %>
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
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="">Smart City<small>Info at Fingure tip</small></a></h1>
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
	<h2>Welcome to Organisation Registration</h2>
        <div class="article">
         
<% 
try{
  String logname=request.getParameter("logna");
  ResultSet rs=st.executeQuery("select * from login where logname='"+logname+"'");
if(rs.next())
{
	out.print("<font color=red size=+1>"+ logname +" Already Registered.</font><br />");
}
else
{ 
  String name=request.getParameter("name");
  String plotno=request.getParameter("plotno");
  String area=request.getParameter("area");
  String city=request.getParameter("city");
  String pincode=request.getParameter("pincode");
  String dist=request.getParameter("dist");
  String state=request.getParameter("state");
  String phone=request.getParameter("phone");
  String mail=request.getParameter("mail");
  String timing=request.getParameter("timing");
  String type=request.getParameter("type");
  String pwd=request.getParameter("pas");
  String secque=request.getParameter("c4");
  String secans=request.getParameter("sec1");
  String lat=request.getParameter("lat");
  String lng=request.getParameter("lng");
  String url=request.getParameter("url");
  String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
  String oid="";
   int cnt=0;
    rs=st.executeQuery("select max(substr(oid,2)) from organisation");
	try{
	   if(rs.next())
	      {
	     cnt=rs.getInt(1);
		  }
		} catch(Exception e){}
		  cnt++;
		  if(cnt>0 && cnt<10)
		     oid="O0000"+cnt;
		  else if(cnt>9 && cnt<100)
		      oid="O000"+cnt;
		  else if(cnt>99 && cnt<1000)
		  	           oid="O00"+cnt;
		  else if(cnt>999 && cnt<10000)
		  	           oid="O0"+cnt;			   
		  else  oid="O"+cnt;		   
		  
	String qry="insert into login values('"+oid+"','"+logname+"','"+pwd+"','"+dt1+"','"+type+"','N','"+secque+"','"+secans+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
//	url="http://www."+url+"/";
	qry="insert into link values('"+oid+"','"+url+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	 qry="insert into organisation values('"+oid+"','"+name+"','"+plotno+"','"+area+"','"+city+"','"+pincode+"','"+dist+"','"+state+"','"+phone+"','"+mail+"','','"+timing+"','"+type+"','"+lat+"','"+lng+"')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	session.removeAttribute("oid");
	session.setAttribute("oid",oid);
	out.print("<font color=green size=+1>"+ name +" Registered Successfully </font><br />");
	}
	con.close();
	
	}catch(Exception e){out.print(e);}
%>
<br />
<font color=green size=+1>Choose Picture of Organization.</font>
<FORM ENCTYPE="multipart/form-data" ACTION="upservlet" METHOD=POST> 
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
		  <br /><br /><br /><br /><br /><br /><br /><br /<br /><br />
        </div>
		
      </div>
      <div class="sidebar"> 
        <div class="gadget">
		
        >
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
