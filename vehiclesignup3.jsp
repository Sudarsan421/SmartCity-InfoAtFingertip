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
	<h2>Welcome to Vehicle Registration</h2>
        <div class="article">
         
<% 
try{
  String vno=request.getParameter("vno");
    ResultSet rs=st.executeQuery("select * from vehicle where vno='"+vno+"'");
if(rs.next())
{
	out.print("<font color=red size=3>"+ vno +" Already Registered.</font><br />");
}else{ 
  String logname=request.getParameter("logna");
  String type=request.getParameter("type");
  String model=request.getParameter("model");
  String pwd=request.getParameter("pas");
  String secque=request.getParameter("c4");
  String secans=request.getParameter("sec1");
  String oname=request.getParameter("oname");
  String dname=request.getParameter("dname");
  String city=request.getParameter("city");
  String dist=request.getParameter("dist");
  String state=request.getParameter("state");
  String dno=request.getParameter("dno");
  String timing=request.getParameter("timing");
  String base=request.getParameter("base");
  String perkm=request.getParameter("perkm");
  String lat=request.getParameter("lat");
  String longi=request.getParameter("lng");
    String dt1=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
  String vid="";
   int cnt=0;
    rs=st.executeQuery("select max(substr(vid,2)) from vehicle");
	try{
	   if(rs.next()){
	      cnt=rs.getInt(1);
		  }
		 } catch(Exception e){}
		  cnt++;
		  if(cnt>0 && cnt<10)
		     vid="V0000"+cnt;
		  else if(cnt>9 && cnt<100)
		      vid="V000"+cnt;
		  else if(cnt>99 && cnt<1000)
		  	           vid="V00"+cnt;
		  else if(cnt>999 && cnt<10000)
		  	           vid="V0"+cnt;			   
		  else  vid="V"+cnt;
		  		   
	String qry="insert into login values('"+vid+"','"+logname+"','"+pwd+"','"+dt1+"','"+type+"','N','"+secque+"','"+secans+"')";
   // out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	
	
	qry="insert into vehicle values('"+vid+"','"+vno+"','"+model+"','"+oname+"','"+dname+"','"+dno+"','"+city+"','"+dist+"','"+state+"','"+timing+"','"+base+"','"+perkm+"','N','"+lat+"','"+longi+"','"+type+"','')";
	//out.print("<br>"+qry+"<br>");
	st.executeUpdate(qry);
	session.removeAttribute("vid");
	session.setAttribute("vid",vid);

		out.print("<font color=green size=3>"+ vno +" Registered Successfully </font><br />");
			}
	con.close();
	
	}catch(Exception e){out.print(e);}
%>
<br />
<font color=green size=3>Choose Picture of Vehicle.</font>
<FORM ENCTYPE="multipart/form-data" ACTION="upservlet1" METHOD=POST> 
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
		  <br /><br /><br /><br /><br />		  <br /><br /><br /><br /><br />
        </div>
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
