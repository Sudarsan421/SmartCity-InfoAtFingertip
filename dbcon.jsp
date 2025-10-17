<%@ page import="java.sql.*" %>
<%!
   Connection con=null;
   Statement st=null; 
%>

<%
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/smartcity","root","");
st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
}catch(Exception e){  out.println("Error in DB"); } 
%>