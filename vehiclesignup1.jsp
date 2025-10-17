<%@ include file="dbcon.jsp" %>
<%try
{
String s0=request.getParameter("t0");
String s1=request.getParameter("t1");
ResultSet rs=st.executeQuery("select * from vehicle where vno='"+s1+"' " );
	if(rs.next()){
	%>
	<jsp:forward page = "vehiclesignup.jsp">
	<jsp:param name="o" value ="<%=s0%>"/>
	<jsp:param name="a2" value ="error"/>
	</jsp:forward>
	<%}
	else{%>
	<jsp:forward page = "vehiclesignup2.jsp">
	<jsp:param name="a1" value ="<%=s0%>"/>
	<jsp:param name="a2" value ="<%=s1%>"/>	
	</jsp:forward>
	<%
}
con.close();
}catch(Exception e){
}
%>