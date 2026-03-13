<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>점심값 뿜빠이</title>
</head>
<body>

<h2>점심값 뿜빠이 (카드깡)</h2>

<form action="hello-servlet" method="get">

    <div>
        낸 사람 :
        <input type="text" name="payer">
    </div>

    <div>
        같이 먹은 사람 :
        <input type="number" name="people">
    </div>

    <div>
        결제 금액 :
        <input type="number" name="money">
    </div>

    <div>
        <button type="submit">계산</button>
    </div>

</form>

</body>
</html>