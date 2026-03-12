<%@page
	import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>짱구 스타일 BMI</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Comic+Neue:wght@700&display=swap')
	;

body {
	font-family: 'Comic Neue', cursive;
	text-align: center;
	background-color: #fff8dc; /* 밝은 만화 배경 */
	padding-top: 50px;
	position: relative;
}

/* 귀여운 구름/말풍선 배경 */
body::before {
	content: "💭";
	position: absolute;
	top: 10px;
	left: 10px;
	font-size: 50px;
	opacity: 0.2;
}

h1 {
	color: #ff4500; /* 강렬한 오렌지 */
	font-size: 50px;
	margin-bottom: 30px;
	text-shadow: 2px 2px #ffd700;
}

.result-box {
	display: inline-block;
	background-color: #ffffe0; /* 연한 노랑 */
	padding: 30px 60px;
	border-radius: 30px;
	box-shadow: 5px 5px 0px #ff69b4; /* 만화 스타일 그림자 */
	font-size: 20px;
	line-height: 2;
	border: 3px dashed #ff1493; /* 귀여운 테두리 */
	position: relative;
}

.result-box span {
	font-weight: bold;
	color: #ff1493;
}

button {
	margin-top: 20px;
	padding: 10px 25px;
	background-color: #ff69b4;
	color: white;
	font-size: 18px;
	border: none;
	border-radius: 15px;
	cursor: pointer;
	box-shadow: 3px 3px 0px #ff1493;
	transition: transform 0.1s;
}

button:hover {
	transform: scale(1.1);
}
</style>
</head>
<body>

	<%
	String path = request.getServletContext().getRealPath("uploadFile");
	System.out.print(path);

	//실제 파일 저장 
	MultipartRequest mr = new MultipartRequest(request, path, 1024 * 1024 * 20, // 20mb최대 허용 용량
			"utf-8", new DefaultFileRenamePolicy());

	String name = mr.getParameter("name");
	String height = mr.getParameter("height");
	String weight = mr.getParameter("weight");

	double bmi = 0;
	String result = "";

	// BMI 계산
	double h = Double.parseDouble(mr.getParameter("height")) / 100;
	double w = Double.parseDouble(mr.getParameter("weight"));
	bmi = w / (h * h);

	//서버에 저장된 이름을 가져옴 → 나중에 화면 출력, DB 저장, 혹은 다른 로직에 사용
	String imgF = mr.getFilesystemName("imgFile"); // 서버상 올라간 파일명

	if (bmi < 18.5) {
		result = "저체중";
	} else if (bmi >= 18.5 && bmi <= 22.9) {
		result = "정상";
	} else if (bmi >= 23 && bmi <= 24.9) {
		result = "비만전단계";
	} else if (bmi >= 25 && bmi <= 29.9) {
		result = "1단계 비만";
	} else if (bmi >= 30 && bmi <= 34.9) {
		result = "2단계 비만";
	} else {
		result = "3단계 비만";
	}
	%>

	<h1>❤️ BMI 결과 ❤️</h1>
	<div>
		<img id="img" style="width: 200px" src="uploadFile/<%=imgF%>">
	</div>

	<div class="result-box">
		이름: <span><%=name%></span><br> 키: <span><%=height%></span> cm<br>
		체중: <span><%=weight%></span> kg<br> BMI: <span><%=String.format("%.1f", bmi)%></span><br>
		결과: <span><%=result%></span> <br>
		<form action="bmi.html">
			<button type="submit">다시 측정하기</button>
		</form>
	</div>
</body>
</html>