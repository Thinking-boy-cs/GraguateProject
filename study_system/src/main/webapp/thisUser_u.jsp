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
<body>


<h1>姓名：${thisUser.name}</h1>
<h1>电话；${thisUser.telNumber}</h1>
<h1>邮箱：${thisUser.mail}</h1>
<h1>性别：${thisUser.sex}</h1>
<h1>年龄：${thisUser.age}</h1>
<a href="${pageContext.request.contextPath}/user/findById_u?id=${thisUser.id}">修改</a>
</body>
</html>