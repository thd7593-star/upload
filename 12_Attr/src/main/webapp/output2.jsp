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

	<%
	// 값 받기		(Result)는 캐스트, 참조 > 메서드를 참조하는 것 Result.java
	Result r = (Result) request.getAttribute("rr");

	if (r.getPrice() > r.getMoney()) {
		int howmuch = r.getPrice() - r.getMoney();
	%>
	<a href="output3.jsp?howmuch=<%=howmuch%>">
		<button>얼마 모자른데요?</button>
	</a>

	<a href="output3.jsp?howmuch=<%=r.getEx() * -1%>">
		<button>얼마 모자른데요?</button>
	</a>

	<a href="output3.jsp?howmuch=<%=r.getPrice() - r.getMoney()%>"> <!-- 이러면 if문 안에 int howmuch를 안 넣어도 됨 -->
		<button>얼마 모자른데요?</button>
	</a>

	<button
		onclick="location.href='output3.jsp?howmuch=<%=r.getPrice() - r.getMoney()%>'">얼마
		모자른데요?</button>

	<form action="output3.jsp">
		<input hidden name="howmuch" value="<%=r.getPrice() - r.getMoney()%>">
		<button>얼마 모자라요?</button>
	</form>

	<%
	}
	%>

	<h1>계산 결과2222</h1>

	<div>
		<div>
			상품 가격 :
			<%=r.getPrice()%>
		</div>
		<div>
			지불한 돈 :
			<%=r.getMoney()%>
		</div>
		<div>
			잔돈 :
			<%=r.getEx()%>
		</div>
		<div>
			멘트 :
			<%=r.getSay()%>
		</div>
	</div>

	<hr>
	<%=request.getParameter("p")%>
	<br>
	<%=request.getParameter("m")%>

	<hr>

	<form action="ExController">
		<input hidden name="howmuch" value="<%=r.getPrice() - r.getMoney()%>">
		<button>얼마 모자라요?</button>
	</form>

	<form action="ExController" method="post">
		<input name="asd" value="<%=r.getPrice() - r.getMoney()%>">
		<button>얼마요?? (데이터 이미 완성)</button>
	</form>
	
	<form action="ExController" method="post">
		<input name="asd" value="<%=r.getEx()%>">
		<button>얼마요?? (데이터 미완성)</button>
	</form>


</body>
</html>