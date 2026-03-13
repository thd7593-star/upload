<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>

        body{
            background:#ffe4ef url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="60" height="60"><text x="0" y="25" font-size="25" fill="%23ffcce5">❤</text></svg>') repeat;
            font-family:"Malgun Gothic";
            text-align:center;
        }

        /* 제목 */
        h1{
            color:#ff4fa3;
            margin-top:80px;
        }

        /* 폼 */
        form{
            margin-top:30px;
        }

        /* 입력칸 */
        input[type=text]{
            width:200px;
            padding:7px;
            border-radius:10px;
            border:1px solid #ffb6d9;
            text-align:center;
        }

        /* select */
        select{
            width:210px;
            padding:7px;
            border-radius:10px;
            border:1px solid #ffb6d9;
        }

        /* 버튼 */
        input[type=submit]{
            background:#ff4fa3;
            color:white;
            border:none;
            padding:10px 30px;
            border-radius:20px;
            font-size:16px;
            cursor:pointer;
        }

        input[type=submit]:hover{
            background:#ff2f92;
        }

        /* 아래 사진 */
        .bottom-img{
            margin-top:40px;
            width:150px;
        }

    </style>
</head>

<body>


<h1>•‧:❤️:‧• 단위변환•‧:❤️:‧•</h1>

<form action="hello-servlet">

    변환할 값 <input type="text" name="value"><br><br>

    단위
    <select name="type">
        <option value="cm">cm → inch</option>
        <option value="m2">㎡ → 평</option>
        <option value="temp">℃ → ℉</option>
        <option value="speed">km/h → mi/h</option>
    </select>

    <br><br>

    <input type="submit" value="변환">

</form>
<img class="bottom-img"
     src="https://mblogthumb-phinf.pstatic.net/MjAyMTA1MDNfMTg2/MDAxNjE5OTY3NjcwOTc3.LbQdMWlWI3bMRN0hdTezPZf2Qc5i4PsmNRoSShPLNg4g.1LSpwAwnW37D6NG3WBnPF42bOf3qJ1Fns-_W8HXY3Esg.JPEG.chooddingg/PHOTO_0077.JPG?type=w800">
</body>
</html>