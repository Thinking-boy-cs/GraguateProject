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
    <link  rel='stylesheet' href="../css/calendar_css.css">
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<div class="calendar">
    <p id="monthName"></p>
    <p id="dayName"></p>
    <p id="dayNumber"></p>
    <p id="year"></p>
</div>

<div class="calendar_2">
    <p id="monthName_2"><h1></h1></p>
    <p> <h1 style="background-color: #2D93CA">观书有感</h1><br>
        宋 · 朱熹<br>
    半亩方塘一鉴开，天光云影共徘徊。<br><br>
    问渠那得清如许？为有源头活水来。<br><br>
    </p>
</div>

<script>
    const lang = navigator.language;
    let date = new Date();

    let dayNumber = date.getDate();
    let month = date.getMonth();
    let dayName = date.toLocaleString(lang,{weekday:'long'});
    let monthName = date.toLocaleString(lang,{month:'long'});
    let year = date.getFullYear();

    document.getElementById('monthName').innerHTML = monthName;
    document.getElementById('dayName').innerHTML = dayName;
    document.getElementById('dayNumber').innerHTML = dayNumber;
    document.getElementById('year').innerHTML = year;
</script>

</body>
</html>