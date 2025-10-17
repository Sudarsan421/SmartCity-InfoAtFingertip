<%@ include file="dbcon.jsp" %>
<%! String ty=""; %>
<%

String s1=request.getParameter("t1");
String s2=request.getParameter("p1");
try{
ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"' and pwd='"+s2+"' and status='y'");
ty="";
	if(rs.next()){
		ty=rs.getString("type");
		session.removeAttribute("name");
		session.removeAttribute("type");
		session.removeAttribute("id");
		session.setAttribute("name",s1);
		session.setAttribute("type",ty);
		session.setAttribute("id",rs.getString(1));
	}else{
		  ty="";
	}
	con.close();
}catch(Exception e){
   out.println(e);
}
	if(ty.equalsIgnoreCase("admin"))	{ 	%>
			<jsp:forward page="adminhome.jsp"/>
<%  }else if(ty.equalsIgnoreCase("Ambulance") || ty.equalsIgnoreCase("Mortuary Van")) {	   %>
			<jsp:forward page="vehiclehome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("BloodBank"))	{		%>
			<jsp:forward page="bloodbankhome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("Path Lab"))		{		%>
			<jsp:forward page="pathlabhome.jsp"/>	
<%	}else if(ty.equalsIgnoreCase("Hospital"))		{		%>
			<jsp:forward page="hospitalhome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("Institute"))		{		%>
			<jsp:forward page="insthome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("employee"))		{		%>
			<jsp:forward page="emphome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("Customer"))		{		%>
			<jsp:forward page="custhome.jsp"/>
<%	}else if(ty.equalsIgnoreCase("User"))		{	%>
			<jsp:forward page="userhome.jsp"/>
<%	}else{		%>
			<jsp:forward page="index.jsp">
	  			<jsp:param name="a1" value="error" />
			</jsp:forward>
<%	 }	%>
