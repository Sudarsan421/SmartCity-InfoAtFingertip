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
	  <h2><span>Welcome to New Customer</span></h2>
        <div class="article">
          
<h5>
<form  action="custreg3.jsp">
<table width="863" >
<tr><td width="131">Enter Mail ID</td> 
<td width="156"><input type="text" name="logname" value="<%=request.getParameter("a1")%>" readonly="true"/></td>
<td width="25"></td>
<td width="122">Name</td> 
<td width="172"><input type="text" name="name" /></td>
</tr>

<tr><td>Password</td> <td><input type="password" name="pwd" /></td>
<td></td>
<td>Cofirm Password</td> <td><input type="password" name="pwd1" /></td>
</tr>

<tr><td>Addres</td> <td><textarea name="addres" rows="6" cols="25"></textarea></td>
<td></td>
<td></td> <td></td>
</tr>

<tr><td>Phone</td> <td><input type="text" name="phno" /></td>
<td></td>
<td>DOB</td> <td><input type="date" name="dob" /></td>
</tr>

<tr><td>Gender</td> 
  <td><input name="gender" type="radio" value="Male">Male <input name="gender" type="radio" value="Female">Female</td>
  <td></td>
<td>Marital Status</td> <td><input name="mstatus" type="radio" value="Married">Married <input name="mstatus" type="radio" value="Single">Single</td>
</tr>

<tr><td>Security Question</td> <td><select name="sques">
              <option value="What is my pet name ?">What is my pet name ?</option>
              <option value="Who is my best friend ?">Who is my best friend ?</option>
              <option value="Who is my favourite actor ?">Who is my favourite actor ?</option>
              <option value="What is my first cell no ?">What is my first cell no ?</option>
              <option value="What is my mothers maiden name ?">What is my mothers maiden name ?</option>
              <option value="Where is my birth place ?">Where is my birth place ?</option>
              <option value="Who is your ideal person ?">Who is your ideal person ?</option>
              <option value="What is my fist school name ?">What is my fist school name ?</option>
            </select>
</td>
<td></td>
<td>Security Answer</td> <td><input type="text" name="sans" /></td>
</tr>

<tr>
<td></td> 
<td></td> 
<td></td> 
<td></td>
<td><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></td>
</tr>
</table> 

</form>
</h5>  
        </div>
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
