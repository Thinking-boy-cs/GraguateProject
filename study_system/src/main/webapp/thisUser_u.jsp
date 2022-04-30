<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Default Page</title>
    <link rel="stylesheet" href="../js/layui/css/layui.css"  media="all">
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<center>
    <div style="background: #b8d5fd;height: 500px; width: 700px;border-radius:25px;margin-top: 30px;">
        <br><br>
        <h1>姓名：${thisUser.name}</h1>
        <br>
        <h1>电话：${thisUser.telNumber}</h1>
        <br>
        <h1>邮箱：${thisUser.mail}</h1>
        <br>
        <h1>性别：${thisUser.sex}</h1>
        <br>
        <h1>年龄：${thisUser.age}</h1>
        <br><br>
        <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">
            <a href="${pageContext.request.contextPath}/user/findById_u?id=${thisUser.id}">修改</a>
        </button>

    </div>
</center>



</body>
</html>