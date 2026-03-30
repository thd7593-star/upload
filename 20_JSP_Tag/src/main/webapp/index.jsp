<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%--
-jsp 자바 쓰는경우

-값 읽으려고 : EL로 해결

-----------------------
-조건문, 반복문쓰는경우
-출력형식.. (스트링포멧)
-이동시키거나 포함시킬때


#주의할점
.JSP에서만 동작한다



1. JSP 표준 액션 태그
: 정품느낌
: .JSP에서 기본적으로 사용 가능

2. jstl (사제품같은 느낌)
: .jsp기본에 없다

--%>

<jsp:include page="index2.jsp"></jsp:include>
<h1> index page 1~~ </h1>
<%--<jsp:forward page="index2.jsp"></jsp:forward>--%>


</body>
</html>