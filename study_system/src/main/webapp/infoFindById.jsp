<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户列表页面</title>
</head>
<body style="background: #f0f0f0">
<center>
<div style="background: #ffffff;height: 1000px; width: 700px;">
        发布人：<h1>${theInfo.name}</h1>
        标题：<h1>${theInfo.title}</h1>
        发布时间：<h1>${theInfo.time}</h1>
        内容：<h3>${theInfo.info}</h3>

</div>
</center>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>