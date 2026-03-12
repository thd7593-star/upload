<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<style>

body{
    background:#ffe6f0;
    font-family: "Comic Sans MS", "Malgun Gothic";
    text-align:center;
}

/* 결과 카드 */
.box{
    background:white;
    width:400px;
    margin:80px auto;
    padding:40px;
    border-radius:30px;
    box-shadow:0 8px 20px rgba(0,0,0,0.15);
}

/* 제목 */
h1{
    color:#ff4da6;
    font-size:32px;
}

/* 결과 글씨 */
h2{
    font-size:26px;
    color:#ff66b2;
}

/* 버튼 */
button{
    background:#ff66b2;
    color:white;
    border:none;
    padding:12px 25px;
    font-size:18px;
    border-radius:20px;
    cursor:pointer;
}

button:hover{
    background:#ff3385;
}

/* 키티 이미지 */
.kitty{
    width:300px;
    margin-bottom:10px;
}

</style>

</head>
<body>
<div class="box">

<img class="kitty"
src="https://i.pinimg.com/736x/5d/63/22/5d632277ae553724df0c560ca8f60252.jpg">

	<%
	double value = Double.parseDouble(request.getParameter("value"));
	String type = request.getParameter("type");
	String ed = "";
	String st = "";

	double result = 0;

	if (type.equals("cm")) {
		result = value / 2.54;
		st += "cm";
		ed += "inch";
	} else if (type.equals("m2")) {
		result = value * 0.3025;
		st += "m2";
		ed += "평";
	} else if (type.equals("temp")) {
		result = (value * 9 / 5) + 32;
		st += "℃";
		ed += "℉";
	} else if (type.equals("speed")) {
		 result = value / 1.609344; 
		st += "km/h";
		ed += "mi/h";
	}
	%>

	<h1>반환결과( ˃᷄˶˶̫˶˂᷅ ) 💗</h1>

	<h2>
		<%=value%> <%=st%>
		<br> ↓<br>
		<%=String.format("%.1f", result)%> <%=ed%>
	</h2>

	<br>
	<button onclick="location.href='change1.html'">돌아가기</button>

</body>
</html>