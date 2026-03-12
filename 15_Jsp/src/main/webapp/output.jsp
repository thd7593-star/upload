<%@ page import="com.plum.test.Information" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


        <%
            // 이곳에서는 계산 안한다 오로지 값만 받는다!
            //모델에서 이미 계산을 다 하고왔으니!

            Information info = (Information) request.getAttribute("information"); //(information) -- 형변환해야징~
        %>

            <hr>
            <h1> -회원 정보 확인 </h1>
            <h1> -이름 : <%=info.getName()%> </h1>
            <h1> -나이 : <%=info.getAge()%> </h1>
            <h1> -성별 : <%=info.getGender()%></h1>
            <h1> -관심사 : <%=info.getHabit()%></h1>







</body>
</html>
