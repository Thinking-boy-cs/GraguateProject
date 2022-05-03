<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../js/layui/css/layui.css"  media="all">
    <title>Default Page</title>
    <style>
        .layui-anim{animation-duration: 1.2s; -webkit-animation-duration: 1.2s;}
    </style>
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 43%, #eb13d1 88%);
background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<div style="margin:300px 500px 15px 500px;">
    <div class="layui-anim layui-anim-up" style="margin:50px;">
        <h1>YuLin Study System</h1>
    </div>

<%--    <h3 style="margin:30px;">This is my graduate project.</h3>--%>
    <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">
        <a href="${pageContext.request.contextPath}/login.html">用户登录</a>
    </button>

    <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" style="background: #eb13d1">
        <a href="${pageContext.request.contextPath}/login2.html">管理员登录</a>
    </button>
</div>

</body>
</html>
<script src="./js/layui/layui.js" charset="utf-8"></script>