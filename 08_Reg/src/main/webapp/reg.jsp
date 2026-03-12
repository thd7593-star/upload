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
	request.setCharacterEncoding("utf-8");
	String n = request.getParameter("name"); //사용자가 서버로 보낸 걸 변수에 담는것 
	String i = request.getParameter("id");
	String p = request.getParameter("pw");
	String g = request.getParameter("gender");
	String a = request.getParameter("addr");
	String[] inter = request.getParameterValues("interest");
	String intro = request.getParameter("introduce");

	String inter2 = "";
	if (inter != null) {
		for (String ss : inter) {
			inter2 += ss + " ";

		}

	}
	%>

	<div class="container">
		<div class="items">
			<div class="item1">Name</div>
			<div class="item2">
				<%=n%>
			</div>
		</div>
		<div class="items">
			<div class="item1">ID</div>
			<div class="item2">
				<%=i%>
			</div>
		</div>
		<div class="items">
			<div class="item1">PW</div>
			<div class="item2">
				<%=n%>
			</div>
		</div>
		<div class="items">
			<div class="item1">Gender</div>
			<div class="item2">
				<%=g%>
			</div>
		</div>
		<div class="items">
			<div class="item1">Addr</div>
			<div class="item2">
				<%=a%>
			</div>
		</div>
		<div class="items inter">
			<div class="item1">Interest</div>
			<div class="item2 interest">
				<%=inter2%>
			</div>
		</div>
		<div class="items text">
			<div class="item1">Introduce</div>
			<div class="item2">
				<%=intro%>
			</div>
		</div>
		<div class="items item3">
			<div class="button">
				<button>sign up</button>
			</div>
		</div>

		<style>
.container {
	font-size: 20pt;
}

.items {
	margin: 0 auto;
	border: 1px solid black;
	display: flex;
	width: 450px;
	height: 85px;
	align-items: center;
}

.item1 {
	text-align: center;
	padding-left: 30px;
	width: 35%;
	/* border: 1px solid red; */
}

.item2 {
	/* border: 1px solid red; */
	text-align: center;
	width: 65%;
}

.item2 .text-input {
	width: 70%;
	height: 25px;
	font-size: 15pt;
	border-radius: 5px;
}

select {
	width: 150px;
	height: 50px;
	font-size: 18pt;
}

.interest {
	flex-wrap: wrap;
	font-size: 18pt;
}

.text {
	height: 120px;
}

.items textarea {
	width: 200px;
	height: 100px;
	resize: none;
}

.items textarea:focus {
	outline-color: green;
}

.button {
	width: 100%;
	text-align: center;
}

.item3 button {
	width: 300px;
	height: 60px;
	font-size: 25pt;
	background-color: pink;
	color: black;
}
</style>
	</div>
</body>
</html>