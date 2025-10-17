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
          
              <form   action="empreg3.jsp" method="post"  >
          <table width="847" height="363">
            <tr><td width="103"><span class="style4"> Login Name </span></td>
           	  <td width="251"><input name="logna" type="text" value="<%= request.getParameter("a1")%>" readonly="true" />
           	  <span class="style1">Available</span> </td>
			<td width="10"></td>
			<td width="114">Full Name</td>
			<td width="169"><input name="name" type="text" /></td>
			</tr>
			
			<tr><td><span class="style4"> Password </span></td>
              	<td><input name="pwd" type="password" /></td>
			<td></td>
			<td><span class="style4"> Confirm Password </span></td>
              	<td><input name="pwd1" type="password" /></td>
			</tr>
			
			<tr> <td><span class="style4">Your DOB </span></td>
              	<td><input name="dob" type="date" /></td>
			<td></td>
			<td><span class="style4">Father's Name </span></td>
              	<td><input name="fname" type="text" /></td>
			</tr>
			
			
			<tr><td><span class="style4">Gender </span></td>
              	<td><input type="radio" name="gen" value="Male"> Male <input type="radio" name="gen" value="Female"> Female 
			  </td>
			<td></td>
			<td><span class="style4">Marital Status </span></td>
              	<td><input type="radio" name="msta" value="Married">Married <input type="radio" name="msta" value="Single">Single </td>
			</tr>
			
			<tr><td><span class="style4">Your Phone </span></td>
              	<td><input name="phone" type="text" /></td>
			<td></td>
			<td><span class="style4">Your Mail </span></td>
              	<td><input name="mail" type="text" /></td> 
			</tr>			
			
			<tr><td height="121"><span class="style4">Your Current Address </span></td>
              	<td><textarea name="cadd" rows="6" cols="25"></textarea></td>
			<td></td>
			<td><span class="style4">Your Permanent Address </span></td>
              	<td><textarea name="padd" rows="6" cols="25"></textarea></td>
			</tr>
			
			<tr><td><span class="style4">Security Question</span></td>
			<td> 
			<select name="sques">
				<option value="What is my pet name ?">What is my pet name ?</option>
				<option value="Who is my best friend ?">Who is my best friend ?</option>
				<option value="Who is my favourite actor ?">Who is my favourite actor ?</option>
				<option value="What is my first cell no ?">What is my first cell no ?</option>
				<option value="What is my mothers maiden name ?">What is my mothers maiden name ?</option>
				<option value="Where is my birth place ?">Where is my birth place ?</option>
				<option value="Who is your ideal person ?">Who is your ideal person ?</option>
				<option value="What is my fist school name ?">What is my fist school name ?</option> 
			</select>			</td>
			<td></td>
			<td><span class="style4">Security Answer</span></td>
			<td><input name="sans" type="text" /></td>
			</tr>

			<tr>
			<td height="28"><span class="style4">Your Qualification </span></td>
              	<td><input name="qual" type="text" /></td>
				<td></td>		 
				<td></td><td valign="bottom">
                  <input type="submit" value="Register"> <input type="reset" value="Cancel" >  
				  </td>
			</tr>
		  </table>
        </form>


           
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
