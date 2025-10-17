<%@ include file="dbcon.jsp" %>
<%
String s1=request.getParameter("t1");
try{
 	ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
	if(rs.next()){
%>
		<jsp:forward page="empreg.jsp" >
			<jsp:param name="a1" value="galat" />
		</jsp:forward>
<%	
	}else{
%>
		<jsp:forward page="empreg2.jsp" >
			<jsp:param name="a1" value="<%=s1%>" />
		</jsp:forward>
<%	
	}
	con.close();
}catch(Exception e){  }
%>