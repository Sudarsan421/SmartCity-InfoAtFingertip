<%@ include file="dbcon.jsp" %>
<%
String s1=request.getParameter("t1");
try{
 	ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
	if(rs.next()){
%>
		<jsp:forward page="userreg.jsp" >
			<jsp:param name="z1" value="error" />
		</jsp:forward>
<%	
	}else{
%>
		<jsp:forward page="custreg2.jsp" >
			<jsp:param name="a1" value="<%=s1%>" />
		</jsp:forward>
<%	
	}
	con.close();
}catch(Exception e){  }
%>