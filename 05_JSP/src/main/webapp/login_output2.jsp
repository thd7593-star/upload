<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2{ color : red}
</style>
</head>
<body>
	<!--입력값 받기  -->
	request.setcharacterEncoding("utf-8");
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String result = null;
	if (id.equals("mz")) {
		if (pw.equals("1004")) {
			result = "로그인성공";
		} else {
			result = "비번오류";
		}
	} else {
		result = "존재하지않는회원";
	}
	%>


	<h1>
		ID :
		<%=id%></h1>
	<h1>
		PW :
		<%=pw%></h1>
		
		<h2><%=result %></h2>



</body>
</html>