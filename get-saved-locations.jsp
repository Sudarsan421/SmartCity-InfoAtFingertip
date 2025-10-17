<%@ include file="dbcon.jsp"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%
//https://code.google.com/archive/p/json-simple/downloads
//https://code.google.com/archive/p/json-simple/wikis/EncodingExamples.wiki
//http://stackoverflow.com/questions/9046331/creating-a-json-object-in-jsp-and-using-it-with-jquery

String type = request.getParameter("type");
String sql="select a .* from organisation a,login b where a.oid=b.id and b.status='y'";
if(type!=null && !"".equals(type))
sql="select a .* from organisation a,login b where a.oid=b.id and b.status='y' and a.type='"+type+"'";

	JSONArray arr  =  new JSONArray();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		String name = rs.getString("name");
		String lati = rs.getString("lati");
		String longi = rs.getString("longi");

		if(!"".equals(lati) && !"".equals(longi))
		{
			JSONObject json = new JSONObject();
			json.put("lng",longi);
		    json.put("lat",lati);		    
		    json.put("name",name);		    
		    arr.add(json);

		}
	}   
    out.print(arr);
    out.flush();
%>