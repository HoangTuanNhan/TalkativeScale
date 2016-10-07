<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Talkative Scale</title>
<style>
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
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
	<div><form action="/TalkativeScale/talkative_scale" method="get" style="text-align:center"><input style="font-size: 20px; " type="submit" name="action" value="Reload" class="button"></form></div>
	
</body>
</html>