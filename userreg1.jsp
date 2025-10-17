 <%@ include file="dbcon.jsp" %>

<%! String s1=""; %>
<%
try{
s1=request.getParameter("t1");
ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
if(rs.next()){
s1="error";
}
con.close();
}catch(Exception e) { out.print(e);}
//out.print(s1);
if(s1.equals("error")){ 
%>
<jsp:forward page="userreg.jsp" >
	<jsp:param name="a1" value="<%= s1 %>" />
</jsp:forward>
<% }
else{%>
<jsp:forward page="userreg2.jsp" >
	<jsp:param name="a1" value="<%= s1 %>" />
</jsp:forward>
<%}%>

 