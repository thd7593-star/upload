<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BMI 검사</title>

    <style>

        body {
            background: linear-gradient(135deg, #0f766e, #34d399);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }

        .box {
            background: white;
            padding: 35px;
            border-radius: 15px;
            width: 300px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            color: #047857;
            margin-bottom: 20px;
        }

        .inputBox {
            margin: 12px 0;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #a7f3d0;
            border-radius: 8px;
        }

        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #10b981, #34d399);
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background: linear-gradient(135deg, #059669, #10b981);
        }

        .result {
            margin-top: 15px;
            font-size: 18px;
            font-weight: bold;
        }

        .info {
            margin-top: 10px;
            font-size: 16px;
        }

    </style>

</head>

<body>

<div class="box">

    <%


        String name = request.getParameter("name");
        String h = request.getParameter("height");
        String w = request.getParameter("weight");

        if (name == null) {
    %>

    <!-- 입력폼 -->

    <div class="title">BMI 검사</div>

    <form>

        <div class="inputBox">
            이름
            <input name="name">
        </div>

        <div class="inputBox">
            키(CM)
            <input name="height">
        </div>

        <div class="inputBox">
            체중(KG)
            <input name="weight">
        </div>

        <button>확인</button>

    </form>

    이름 : ${b.name}
    키 : ${b.height}
    체중 : ${b.weight}

    BMI : ${b.bmi}

    결과 : ${b.result}

    <!-- 사진 첨부 -->

    <div style="margin-top:20px;">
        <form method="post" enctype="multipart/form-data">

            <div>
                사진 첨부
                <input type="file" name="photo">
            </div>

            <button type="submit">사진 업로드</button>

        </form>
    </div>

    <form action="/Bmi">
        <button>다시하기</button>
    </form>

    <%
        }
    %>

</div>

</body>
</html>