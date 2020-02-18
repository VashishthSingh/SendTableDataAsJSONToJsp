<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.json.JSONObject,org.json.JSONObject,org.json.JSONArray"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		table{border:2px solid gray;text-align:center;}
		tr{border:1px solid silver;padding:3px;}
		th{border:1px solid silver;padding:3px;}
		td{border:1px solid silver;padding:3px;}
	</style>
</head>
<body>
	  <table>
	   <tr>
	    <th>readDateTime</th>
	    <th>ramUsed</th>
	    <th>diskUsed</th>
	    <th>cpuUsed</th>
	   </tr>
	  <%
	  try{
			JSONObject jsonobject=(JSONObject)request.getAttribute("jsonData");
	  		int len=jsonobject.length();
	  		JSONObject obj;
	  		float ram,disk;
	  		double cpu;
	  		String dateTime;
	  		for(int i=0;i<len;i++){
	  			obj=(JSONObject)jsonobject.get(i+"");
	            ram=(float)obj.getDouble("ramUsed");
	            disk=(float)obj.getDouble("diskUsed");
	            cpu=obj.getDouble("cpuUsed");
	            dateTime=obj.getString("readDateTime");
	   %>
	            <tr>
	             <td><%=dateTime%></td>
	             <td><%=disk%></td>
	             <td><%=cpu%></td>
	             <td><%=ram%></td>
	            </tr>
	   <%
	  		}
	  }catch(Exception e){
		  out.println(e);
	  }
	  %>
     </table> 
	
	
</body>
</html>