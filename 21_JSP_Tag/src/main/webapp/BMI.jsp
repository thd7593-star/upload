<%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 26. 3. 13.
  Time: 오전 10:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <style>

        body{
            margin:0;
            height:100vh;
            background: radial-gradient(circle at bottom, #550000, #000000 70%);
            color:white;
            font-family: Arial Black, sans-serif;
            text-align:center;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            overflow:hidden;
        }

        /* 🔥 불꽃 효과 */
        body::before{
            content:"";
            position:fixed;
            left:0;
            bottom:0;
            width:100%;
            height:300px;
            z-index:-1;
            background: repeating-radial-gradient(
                    circle at 50% 100%,
                    rgba(255,120,0,0.9) 0px,
                    rgba(255,0,0,0.8) 50px,
                    rgba(255,200,0,0.7) 100px,
                    transparent 150px
            );
            animation: fireMove 2s infinite linear;
            opacity:0.8;
        }

        @keyframes fireMove{
            0%{transform:translateY(0) scaleX(1);}
            50%{transform:translateY(-30px) scaleX(1.1);}
            100%{transform:translateY(0) scaleX(1);}
        }

        /* 제목 */
        h1{
            font-size:80px;
            margin-bottom:60px;
            text-shadow:
                    0 0 10px red,
                    0 0 20px red,
                    0 0 40px orange,
                    0 0 80px yellow;
        }

        /* 결과 텍스트 */
        body{
            font-size:50px;
            line-height:1.8;
            text-shadow:
                    0 0 10px red,
                    0 0 20px orange;
        }

    </style>

</head>

<body>
이름 : ${bmi.name} <br>
키 : ${bmi.height} <br>
몸무게 : ${bmi.weight} <br>
BMI : ${bmi.bmi} <br>
결과 : ${bmi.result}

</body>
</html>