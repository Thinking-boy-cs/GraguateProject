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
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        body{
            height: 2000px;
            font-family: sans-serif;
        }

        .header{
            position: relative;
            height: 100vh;
            background: url("../pic/1.jpg") no-repeat center center;
            background-size: cover;
            background-attachment: fixed;
            overflow: hidden;
        }

        header .logo-header{
            position: absolute;
            top:29%;
            left: 0;
            right: 0;
            display: block;
            width: 100%;
            height: auto;
            margin-top: -50px;
        }

        header .fore-bird{
            position: absolute;
            top: 469px;
            left: 55%;
            width: 960px;
            height: 733px;
            margin-left: -480px;
            background-image: url("../pic/2.jpg");
            background-repeat: no-repeat;
            background-position: right bottom;
            z-index: 1;
        }


        header .back-bird{
            position: absolute;
            top: 0;
            left: 50%;
            width: 960px;
            height: 298px;
            margin-left: -480px;
            background-image: url("../pic/3.jpg");
            background-repeat: no-repeat;
            background-position: top left;
        }

        .content{
            max-width: 1140px;
            margin: 0 auto;
        }
    </style>
</head>
<body>


</body>
<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script src="/study_system/js/echarts.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

    //总数
    $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/totalCount",    //请求发送到TestServlet处
        totalCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(totalCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This count is :"+totalCount);

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    <%--//男生数量--%>
    <%--$.ajax({--%>
    <%--    type : "post",--%>
    <%--    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）--%>
    <%--    url : "${pageContext.request.contextPath}/recommend/manCount",    //请求发送到TestServlet处--%>
    <%--    manCount : {},--%>
    <%--    dataType : "json",        //返回数据形式为json--%>
    <%--    success : function(manCount) {--%>
    <%--        //请求成功时执行该函数内容，result即为服务器返回的json对象--%>
    <%--        console.log("This count is :"+manCount);--%>

    <%--    },--%>
    <%--    error : function(errorMsg) {--%>
    <%--        //请求失败时执行该函数--%>
    <%--        alert("图表请求数据失败!");--%>
    <%--    }--%>
    <%--})--%>


    var logo = document.querySelector('.logo-header'),
        blurredBird = document.querySelector('.back-bird'),
        foreBird = document.querySelector('.fore-bird');

    window.addEventListener('scroll',function () {
        var scrolled  = window.scrollY;
        logo.style.transform = "translate(0px,"+scrolled/2+"%)";
        blurredBird.style.transform = "translate(0px,"+scrolled/5+"%)";
        foreBird.style.transform = "translate(0px,-"+scrolled/80+"%)";
    });

    var forEach = function (array,callback) {
        for (var i = 0; i < array.length;i++){
            callback.call(null,i,array[i]);
        }
    }


    //myChart.setOption(option);

</script>

</body>
</html>