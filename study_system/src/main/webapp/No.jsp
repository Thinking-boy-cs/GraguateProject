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
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 43%, #eb13d1 88%);
background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<center>
<h1 style="margin-top: 300px;color: #1847d2">
    <%
        response.setHeader("Refresh","3;URL=http://localhost:9999/study_system/");
    %>
    账号或密码错误！登录失败，稍后跳转~~
</h1>
</center>
</body>
</html>