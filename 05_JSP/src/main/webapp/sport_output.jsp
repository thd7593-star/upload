<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] sport = request.getParameterValues("sport");
	%>

	<h1>당신이 선택한 스포츠는</h1>

	<%
	if (sport != null) {
		for (String s : sport) {
	%>

	<h2><%=s%></h2>
	<%
	}
	}
	%>

	<%
	// 1. 값
	String[] sports = request.getParameterValues("sport");

	String result = "";
	for (String ss : sport) {
		result += ss + " / ";
	}

	String korResult = "";
	for (String ss : sport) {
		switch (ss) {
		case "soccer":
			korResult += "축구 ";
			break;
		case "basketball":
			korResult += "농구 ";
			break;
		case "badminton":
			korResult += "배드민턴 ";
			break;
		}
	}
	for (String sport1 : sport) {
	%>
	<h1>
		<%=sport1%>
	</h1>
	<%
	}
	%>
	<hr>
	<h1>
		<%=result%></h1>
	<h1>
		<%=korResult%></h1>
		


</body>
</html>