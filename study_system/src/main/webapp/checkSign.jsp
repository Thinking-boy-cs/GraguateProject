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

<form action="/study_system/sign/checkSign" method="post" id="checkSignForm">
    体温：<input type="text" name="temperature_sign" id="temperature_sign" >
    地点：<input type="text" name="location_sign" id="location_sign" >
    <button type="button" id="btn">点击打卡</button>
</form>


</body>
</html>

<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script src="/study_system/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $("#btn").click(function () {

        var temperature_sign = $("#temperature_sign");
        var location_sign = $("#location_sign");
        console.info(temperature_sign);
        console.info(location_sign);

        $("#checkSignForm").submit();

    })

</script>