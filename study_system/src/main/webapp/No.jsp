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
<h1>HaHa</h1>
<h1>
    <%
        response.setHeader("Refresh","3;URL=http://localhost:9999/study_system/");
    %>
    失败，稍后跳转
</h1>

</body>
</html>