<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String age1 = request.getParameter("age");
int age = Integer.parseInt(age1);

String result;

if (age > 20) {
	result = "안녕하세요~~~~~";
} else {
	result = "안녕!";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Age Result</title>

<style>

body{
	background: linear-gradient(135deg,#ffd6f0,#ffe9f7);
	display:flex;
	justify-content:center;
	align-items:center;
	height:100vh;
	font-family:"Segoe UI", sans-serif;
}

.card{
	background:white;
	padding:40px;
	border-radius:25px;
	box-shadow:0 10px 30px rgba(255,105,180,0.3);
	text-align:center;
}

h1{
	color:#ff69b4;
	font-size:40px;
}

</style>

</head>

<body>

<div class="card">

<h1><%=result%> 👑</h1>

</div>

</body>
</html>