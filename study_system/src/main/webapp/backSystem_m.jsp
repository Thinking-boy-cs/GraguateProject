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
<script src="js/jquery-3.3.1.js"></script>
<style>
    body {
        background-color: #f9f9f9;
        font-size: 16px;

    }

    .box_top {
        width: 1248px;
        height: 103px;
        background-color: #FFFFFF;
        margin-top: 1px;
        border-bottom: 2px solid #1962F1;
    }

    .box_bar {
        width: 230.25px;
        background-color: #FFFFFF;
        margin-top: 2px;
        margin-left: 2px;
    }

    .bar {
        width: 202.25px;
        height: 65px;
        margin: 0 auto;
        background-color: #5b54d0;

    }

    .box_main {
        width: 997.75px;
        height: 620px;

        margin-top: -520px;
        margin-left: 220px;
    }

    .box_bar, .box_main {
        display: inline-block;
        vertical-align: top;
    }

    .box {
        width: 1248px;
        height: 698px;
        background-color: #FFFFFF;
        margin: 0 auto;
    }
    a{
        text-decoration: none;
        color: #FFFFFF;
        cursor: pointer;
        font-size:14px;
        line-height: 33px;
        margin-left: 10px;
    }


    /*轮播图*/
    #pp2{
        width:9999px;
        height:9999px;
        animation:switch 15s infinite;
    }
    #pp2>img{
        float:left;
    }
    #pp1{
        width:1020px;
        height:550px;
        overflow:hidden;
    }
    @keyframes switch{
        0%{}
    20%{transform:translateX(0px);}
    40%{transform:translateX(-1020px);}
    60%{transform:translateX(-2040px);}
    80%{transform:translateX(-3060px);}
    /*100%{transform:translateX(-4080px);}*/
    }

</style>
<body>


<div class="box">
    <div class="box_top">
        <img src="../pic/topBar.png">
    </div>
    <div class="box_bar">
        <div class="bar">
            <a href="#"> 首页</a>
        </div>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/showDataItem"> 年级列表</a>--%>
<%--        </div>--%>
        <div class="bar">
            <a href="#"> 本人信息</a>
        </div>
        <div class="bar">
            <a href="#"> 查看用户</a>
        </div>

        <div class="bar">
            <a href="#"> 管理用户</a>
        </div>
        <div class="bar">
            <a href="#"> 可视化</a>
        </div>
        <div class="bar">
            <a href="http://localhost:9999/study_system/view/infoFind"> 发布公告</a>
        </div>
        <div class="bar">
            <a href="#"> 警告异常</a>
        </div>

        <div class="bar">
            <a href="http://localhost:9999/study_system/about.html"> 关于</a>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 新增课程</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 考试信息</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 考试信息统计</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 新增考试</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 学生成绩</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 成绩统计</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 学生通讯录</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 管理员信息</a>--%>
<%--        </div>--%>
        <div class="bar">
            <a href="#"> 退出系统</a>
        </div>
    </div>

<%--        <div class="box_main">--%>
<%--            <img src="../pic/betbg.png">--%>
<%--        </div>--%>
<div class="box_main">
    <div id="pp1">
        <div id="pp2">
            <img src="../pic/1.jpg"/>
            <img src="../pic/2.jpg"/>
            <img src="../pic/3.jpg"/>
            <img src="../pic/4.jpg"/>
            <img src="../pic/5.jpg"/>
        </div>
    </div>
</div>



</body>
<script>
    $(function () {
        $(".bar").hover(
            function () {
                $(this).css("background-color", "#24A260")
            }, function () {
                $(this).css("background-color", "#26ab65")
            }
        )
    });
</script>
</html>
