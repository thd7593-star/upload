<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>second page ~</h1>
	<%
	//1. 값 받아오기 

	int aa = Integer.parseInt(request.getParameter("a"));
	int bb = Integer.parseInt(request.getParameter("b"));

	int cc = aa + bb;
	request.setAttribute("ccc", cc);

	/*  
	1. 파라미터 parameter 
	-어디에서 만들어졌냐 ? html의 input name="" , select name, url(get요청시 만든 문자열)
	-자료형 : String , String[]-체크박스할때 
	ㄴ 그런값이 request 객체에 실려서 전송 

	2. attribute 
	-어디에서 만들어졌냐? 자바에서 만든값
	-자료형 : object (자바의 최상위 클래스 (객체)-인트 스트링 뭐시기 다 담을 수 있음)
	ㄴ request 객체에 실려서 전송 



	<자동이동 시리즈 3개> - 1에서 2페이지 에서 3페이지로 넘기는것 
	1. redirect - 공사중 / 작업완료 
	2. (forward 주로 쓰는데, first에서 second로 넘어온 정보를 request까지 thrid로 보내줌
	  redirect는 그냥 넘기는거 (문자열로 원하는 값을 명시해서 보내는건 가능)

	  forward는 request에 값이 실려서 넘어오는건데
	  그 request를 같이 넘기니까 third가 그 값을 쓸 수 있음)
	3. include(어떤 jsp속에 jsp)
		관심없음. 

	*/
	/*넘기는 방법 소개  */
	//1. 
	//response.sendRedirect("third.jsp");
	//2.
	RequestDispatcher rd = request.getRequestDispatcher("third.jsp");
	rd.forward(request, response);
	%>

</body>
</html>