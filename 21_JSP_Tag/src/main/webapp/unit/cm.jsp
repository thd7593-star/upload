<%@ page import="com.plum.unit.UnitVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결과</title>
    <style>

        body {
            background: #ffe6f0;
            font-family: "Comic Sans MS", "Malgun Gothic";
            text-align: center;
        }

        /* 결과 카드 */
        .box {
            background: white;
            width: 400px;
            margin: 80px auto;
            padding: 40px;
            border-radius: 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        /* 제목 */
        h1 {
            color: #ff4da6;
            font-size: 32px;
        }

        /* 결과 글씨 */
        h2 {
            font-size: 26px;
            color: #ff66b2;
        }

        /* 버튼 */
        button {
            background: #ff66b2;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
        }

        button:hover {
            background: #ff3385;
        }

        /* 키티 이미지 */
        .kitty {
            width: 300px;
            margin-bottom: 10px;
        }

    </style>

</head>
<body>
<div class="box">

    <img class="kitty"
         src="https://i.pinimg.com/736x/5d/63/22/5d632277ae553724df0c560ca8f60252.jpg">
    <%@ page import="com.plum.unit.UnitVO" %>

        <%
UnitVO unit = (UnitVO)request.getAttribute("unit");
%>

    <h1>반환결과( ˃᷄˶˶̫˶˂᷅ ) 💗</h1>

        <% if(unit != null){ %>

    <div>
        <%=unit.getType()%>
    </div>

    <h2>
        <%=unit.getValue()%> <%=unit.getSt()%>
        <br> ↓ <br>
        <%=unit.getResult2()%> <%=unit.getEd()%>
    </h2>

        <% } else { %>

    <h2>데이터가 없습니다.</h2>

        <% } %>

    <br>

    <div>
        <button onclick="history.back()">돌아가기</button>
    </div>

    <br>
    <div>
        <button onclick="history.back()">돌아가기</button>
    </div>

</body>
</html>