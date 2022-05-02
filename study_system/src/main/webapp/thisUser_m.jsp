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
<body style="background-color: #8EC5FC;
      background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 50%, #f344ed 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">

<center>
    <div style="background: #e873e5;height: 500px; width: 700px;border-radius:25px;margin-top: 30px;">
        <br><br><br><br><br>
        <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" style="background: #eb13d1">
        <h1>管理员</h1>
        </button>
        <br><br>
        <h1>姓名：${thisManager.name}</h1>
        <br>
        <h1>电话；${thisManager.telNumber}</h1>
        <br>
        <h1>邮箱：${thisManager.mail}</h1>
        <br><br>
    </div>
</center>



</body>
</html>