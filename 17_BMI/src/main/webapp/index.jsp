<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>BMI 검사</title>

    <style>

        body{
            background: radial-gradient(circle at bottom, #330000, #000000 70%);
            color:white;
            font-family: Arial Black, sans-serif;
            text-align:center;
            margin-top:50px;
            overflow-x:hidden;
            position:relative;
        }

        /* 🔥 불꽃 효과 */
        body::before{
            content:"";
            position:fixed;
            left:0;
            bottom:0;
            width:100%;
            height:200px;
            z-index:-1;
            background: repeating-radial-gradient(
                    circle at 50% 100%,
                    rgba(255,120,0,0.8) 0px,
                    rgba(255,0,0,0.6) 40px,
                    rgba(255,200,0,0.5) 80px,
                    transparent 120px
            );
            animation: fireMove 3s infinite linear;
            opacity:0.7;
        }

        @keyframes fireMove{
            0%{transform:translateY(0) scaleX(1);}
            50%{transform:translateY(-20px) scaleX(1.05);}
            100%{transform:translateY(0) scaleX(1);}
        }

        /* 제목 */
        h1{
            font-size:40px;
            letter-spacing:3px;
            margin-bottom:30px;
            text-shadow:0 0 10px red;
        }

        /* 테이블 */
        table{
            margin:auto;
            background:#1a1a1a;
            border-collapse:collapse;
            width:400px;
            box-shadow:0 0 25px red;
        }

        /* 셀 */
        td{
            padding:15px;
            border:1px solid #444;
            font-size:18px;
        }

        /* 입력창 */
        input{
            width:90%;
            padding:10px;
            background:#000;
            border:2px solid #ff3300;
            color:white;
            font-weight:bold;
        }

        /* 버튼 */
        button{
            width:100%;
            padding:15px;
            background:linear-gradient(45deg,#ff0000,#ff8800);
            border:none;
            color:white;
            font-size:18px;
            font-weight:bold;
            cursor:pointer;
            transition:0.2s;
        }

        /* 버튼 hover */
        button:hover{
            transform:scale(1.1);
            box-shadow:0 0 15px orange;
        }

    </style>

</head>

<body>

<h1>•‧:❤️:‧• BMI 검사 •‧:❤️:‧•</h1>

<form action="hello-servlet" method="post">

    <table border="1">

        <tr>
            <td>이름</td>
            <td>
                <input type="text" name="name" placeholder="필수, 2글자이상">
            </td>
        </tr>

        <tr>
            <td>키(cm)</td>
            <td>
                <input type="text" name="height" placeholder="3자리이상 / 숫자만">
            </td>
        </tr>

        <tr>
            <td>체중(kg)</td>
            <td>
                <input type="text" name="weight" placeholder="숫자만">
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <button type="submit">BMI 계산</button>
            </td>
        </tr>

    </table>

</form>

</body>
</html>