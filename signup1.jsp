<%@ include file="dbcon.jsp" %>
<%
String s1=request.getParameter("tt1"); 
try{
 	ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
	
	if(rs.next()){
%>
		<jsp:forward page="signup0.jsp" >
			<jsp:param name="aa1" value="error" />
		</jsp:forward>
<%	}else{  %>
		<jsp:forward page="signup2.jsp" >
			<jsp:param name="aa1" value="<%=s1%>" /> 
		</jsp:forward>
<%		}
	con.close();
}catch(Exception e){  }
%>