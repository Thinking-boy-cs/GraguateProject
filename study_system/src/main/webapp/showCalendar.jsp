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
<body>
<div class="calendar">
    <p id="monthName"></p>
    <p id="dayName"></p>
    <p id="dayNumber"></p>
    <p id="year"></p>
</div>

<div class="calendar_2">
    <p id="monthName_2"><h1>每日一句</h1></p>
    <p>There are many apple trees in a garden. They’re good friends. One day an old tree is ill. There
        are many pests in the tree. Leaves of the tree turn yellow. The old tree feels very sad and unwell.
        Another tree sends for a doctor for him. At first, they send for a pigeon, but she has no idea about it.
        Then they send for an oriole, and she can’t treat the old tree well. Then they send for a woodpecker.
        She is a good doctor. She pecks a hole in the tree and eats lots of pests. At last the old tree becomes
        better and better. Leaves turn green and green.
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