<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart City | Support</title>
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
	color: #009900;
	font-weight: bold;
}
.style2 {font-weight: bold}
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
		<jsp:include page="topmenu.jsp" />
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  <h2><span>Welcome to</span> New User</h2>
        <div class="article">
          
 <form action="userreg3.jsp" class="style2">
   <table width="795" height="478" align="center">
     
     <tr>
       <td width="124">Login Name</td>
       <td width="256"><input name="logname" type="text" value="<%=request.getParameter("a1")%>" readonly="true" /> <span class="style1">Avaialble</span> </td>
     	<td width="20"></td>
        <td width="158">FullName</td>
       <td width="197"><input name="fullname" type="text" /></td>
    </tr>
	<tr>
       <td>Password</td>
       <td><input name="pwd" type="password" /></td>
	   <td width="20"></td>
	   <td>Conform Password</td>
       <td><input name="pwd1" type="password" /></td>
	 </tr> 

   <tr>
   		<td>Father's Name</td>
		<td><input type="text" name="fname" /></td>
		<td width="20"></td>
		<td>Date Of Birth</td>
		<td><input name="dob" type="date" /></td>
	<td width="0"></td>
	<tr>	
		<td>Gender</td>
        <td><input name="gender" type="radio" value="male" checked="checked" />
         Male
         <input name="gender" type="radio" value="female" />
         Female </td>
		 <td width="20"></td>
       <td>Mstatus</td>
       <td><input name="mstatus" type="radio" value="married" checked="checked" />
         Married
         <input name="mstatus" type="radio" value="unmarried" />
         Unmarried </td>
     </tr>
     <tr>
       <td>Phone</td>
       <td><input name="phone" type="text" /></td>
	   <td></td>
       <td>Mail</td>
       <td><input name="mail" type="text" /></td>
     </tr>
     <tr>
       <td>CurrentAddress</td>
       <td><textarea name="cadd" rows="6" cols="30"></textarea></td>
       <td></td>
       <td>PermanentAddress</td>
       <td><textarea name="padd" rows="6" cols="30"></textarea></td>
     </tr>
     <tr>
       <td>ID Prof </td>
       <td><input name="idprf" type="text" /></td>
	   <td></td>
       <td>Id Prof No </td>
       <td><input name="idprfid" type="text" /></td>
     <tr>
       <td>Security Question</td>
       <td><select name="secques"> <option value="what is your first mobile no. ?">what is your first mobile no. ?</option>
	   							  <option value="who is your favourite Actor. ?">who is your favourite Actor. ?</option>
								  <option value="who is your Best Friend . ?">who is your Best Friend . ?</option> </select></td>
	    <td></td>
		<td>Security Answer</td>
		<td><input type="text" name="secans" /></td>
	</tr>
     <tr>
       <td>Education</td>
       <td><input name="edu" type="text" /></td>
	   <td></td>
       <td colspan="2" align="center"><input type="Submit" value="Submit" /> <input type="reset" value="reset" />     </td>
     <tr>
   </table>
 </form>



          
          <p>&nbsp;</p>
        </div>
      </div>
     
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    
  </div>
  <div class="footer">
    <jsp:include page="footer.jsp" />
  </div>
</div>
</body>
</html>
