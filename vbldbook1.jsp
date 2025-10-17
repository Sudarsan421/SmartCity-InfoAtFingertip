<%@ include file="dbcon.jsp" %>
<%
try{
String oid=(String)session.getAttribute("id");
String did=request.getParameter("a1");
String grp="", rhfac="", bldid="";
int unit=1,cnt=0;
ResultSet rs=st.executeQuery("select * from blddonation where did='"+did+"'");
if(rs.next()){
	grp=rs.getString(4);
	rhfac=rs.getString(5);
}

rs=st.executeQuery("select * from blood where oid='"+oid+"' and grp='"+grp+"' and rhfac='"+rhfac+"'");
if(rs.next()){
	bldid=rs.getString(1);
	unit=rs.getInt(5);
	unit++;
	//out.print("if : "+unit);
	st.executeUpdate("update blood set unit="+unit+" where bldid='"+bldid+"'");
}else{
	unit=1;
	//out.print("else : " +unit);
	rs=st.executeQuery("select max(substr(bldid,2)) from blood");
	try {
		if(rs.next()){
			cnt=rs.getInt(1);
		}
	}catch(Exception e){  }
	cnt++;
	if(cnt>0 && cnt<10)
		bldid="BD000"+cnt;
	else if(cnt>9 && cnt<100)
		bldid="BD00"+cnt;
	else if(cnt>99 && cnt<1000)
		bldid="BD0"+cnt;
	else 
		bldid="BD"+cnt;
	
	st.executeUpdate("insert into blood values('"+bldid+"', '"+oid+"', '"+grp+"', '"+rhfac+"',1)");
		
}
	st.executeUpdate("update blddonation set status='Accepted' where did='"+did+"'");
 
	//out.print("<font color=green size=3>Blood is Accepted.</font>");

con.close();
}catch(Exception e){  }
%> 
<jsp:forward page="vbldbook.jsp" />