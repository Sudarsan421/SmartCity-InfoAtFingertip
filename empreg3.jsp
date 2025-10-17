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
	<h2>Welcome to Employee Registration</h2>
        <div class="article">
         
			  <font color="#990000" size="3"><b>Emloyee Sign Up</b></font><br /> <br />
              <%
String logna=request.getParameter("logna");
try{
      String qry="select * from login where logname='"+logna+"'";
	  ResultSet rs= st.executeQuery(qry);
	  if(rs.next()){
	  	out.print("<font color=red size=3>"+logna.toUpperCase()+" is already registered..</font>");
	  }else {

		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String fname=request.getParameter("fname");
		String dob=request.getParameter("dob");
		String gen=request.getParameter("gen");
		String msta=request.getParameter("msta");
		String phone=request.getParameter("phone");
		String mail=request.getParameter("mail");
		String qual=request.getParameter("qual");
		String cadd=request.getParameter("cadd");
		String padd=request.getParameter("padd");
		String sques=request.getParameter("sques");
		String sans=request.getParameter("sans");

		rs=st.executeQuery("select max(substr(eid,2)) from employee");
		int cnt=0;
		try{
		  if(rs.next()){
		     cnt=rs.getInt(1);
	      }
		}catch(Exception e){ }
		cnt++;
		String eid="";
		if(cnt>0 && cnt <10)
		   eid="E0000"+cnt;
		else if(cnt>9 && cnt <100)
		   eid="E000"+cnt;
		else if(cnt>99 && cnt <1000)
		   eid="E00"+cnt;
		else if(cnt>999 && cnt <10000)
		   eid="E0"+cnt;
		else  
		   eid="E"+cnt;
		   
		String today=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
		qry="insert into login values('"+eid+"', '"+logna+"', '"+pwd+"', '"+ today +"', 'Employee','N', '"+ sques+"', '"+sans+"')";
		//out.print("<br>"+qry+"<br>");
		st.executeUpdate(qry);
		 
		qry="insert into employee values('"+eid+"', '"+name+"', '"+fname+"', '"+dob+"','1111-11-11','"+gen+"', '"+ msta+"', '"+phone+"','"+mail+"','"+cadd+"', '"+padd+"','"+qual+"')";
		//out.print("<br>"+qry+"<br>");
		st.executeUpdate(qry);
		
		out.print("<font color=green size=3>"+logna.toUpperCase()+" is registered successfully.</font>");	  
	  }
	  con.close();
}catch(Exception e){ out.print(e);}
%>


          
          <p>&nbsp;</p>
        </div>
		<br /><br /><br /><br /><br /><br /><br /><br /><br />
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
