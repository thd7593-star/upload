<%@ page import="com.plum.test.Model" %><%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 26. 3. 12.
  Time: 오후 5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>결과화면</title>
    <style>

        body{
            background: linear-gradient(#a8d8ff,#e8f6ff);
            font-family: '맑은 고딕';
            text-align:center;
            padding-top:100px;
        }

        /* 구름 박스 */
        .cloud{
            background:white;
            width:420px;
            margin:auto;
            padding:40px;
            border-radius:60px;
            box-shadow:0 10px 20px rgba(0,0,0,0.1);
            position:relative;
        }

        /* 구름 동그라미 */
        .cloud:before{
            content:"";
            position:absolute;
            width:120px;
            height:120px;
            background:white;
            border-radius:50%;
            top:-60px;
            left:40px;
        }

        .cloud:after{
            content:"";
            position:absolute;
            width:140px;
            height:140px;
            background:white;
            border-radius:50%;
            top:-70px;
            right:40px;
        }
        h2{
            color:#4a90e2;
        }

        .result{
            font-size:20px;
            margin-top:10px;
        }

    </style>

</head>
<body>
<%
    Model m = (Model)request.getAttribute("model");

    int people = m.getPeople();
    int money = m.getMoney();
    String payer = m.getPayer();

    int result = money / people;
%>

<h2>결과창</h2>

<%=people%>명이서 <%=money%>원이 나왔네요!<br>

한 사람당 <%=result%>원<br>

<%=payer%>에게 카뱅 송금하세요!
</body>
</html>
