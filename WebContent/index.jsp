<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Talkative Scale</title>
</head>
<body>
	<div>
		<p style="text-align:center"><img src="<%=request.getContextPath() %>/image/storm.png " style="width: 300px;height: 200px" ></p>
		<h2 style="text-align:center;font-size: 40px" >STORM TEAM</h2>
	</div>
	<%
		Float weight=(Float)request.getAttribute("weight");
		
	%>
	<div>
		<p style="text-align:center;font-size: 60px;"><b><%=weight %></b> gram</p>
		
		
	</div>
</body>
</html>