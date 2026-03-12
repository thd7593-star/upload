<%@page import="com.mz.attr.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>계산 결과3333</h1>
	
	
	
	<hr>
	p:<%= request.getAttribute("p")%>
	m:<%= request.getAttribute("m")%>
	rr:<%= request.getAttribute("rr")%>
	
	
	
	<div><%= request.getParameter("howmuch") %>원이 모자라요</div>
	<hr>
	
	<%= request.getParameter("asd") %> 원이 모자~ 
	<hr>
	
	<%= request.getAttribute("asdasd")%>

</body>
</html>