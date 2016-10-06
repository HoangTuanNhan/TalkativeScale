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
		<img src="<%=request.getContextPath() %>/image/storm.png">
		<h2>STORM TEAM</h2>
	</div>
	<%
		Float weight=(Float)request.getAttribute("weight");
		session.setAttribute("weight", weight);
	%>
	<div>
		<p><%=weight %></p>
	</div>
</body>
</html>