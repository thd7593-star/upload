<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>





</head>
<body>

<div class="container">
    <form action="bmi" method="post" entype="multipart/form-data">
        <div class="title">BMI 검사</div>
        <div>이름<input name="name"></div>
        <div>키(CM)<input name="height"></div>
        <div>체중(KG)<input name="weight"></div>
        <div>사진<input type="file" name="imgFile"></div>

        <div>
            <button>확인</button>
        </div>
    </form>
</div>


</body>
</html>