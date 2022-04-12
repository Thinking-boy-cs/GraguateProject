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
        border-bottom: 2px solid #00ad5f;
    }

    .box_bar {
        width: 230.25px;
        background-color: #FFFFFF;
        margin-top: 2px;
        margin-left: 2px;
    }

    .bar {
        width: 202.25px;
        height: 33px;
        margin: 0 auto;
        background-color: #26ab65;

    }

    .box_main {
        width: 997.75px;
        height: 620px;
        background-color: #FFFFFF;
        margin-top: 2px;
        margin-left: 2px;
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
</style>
<body>


<div class="box">
    <div class="box_top">

    </div>
    <div class="box_bar">
        <div class="bar">
            <a href="#"> 首页</a>
        </div>
        <div class="bar">
            <a href="#"> 年级列表</a>
        </div>
        <div class="bar">
            <a href="#"> 班级列表</a>
        </div>
        <div class="bar">
            <a href="#"> 学生基本信息</a>
        </div>

        <div class="bar">
            <a href="#"> 学生信息统计</a>
        </div>
        <div class="bar">
            <a href="#"> 新增学生信息</a>
        </div>
        <div class="bar">
            <a href="#"> 修改学生信息</a>
        </div>
        <div class="bar">
            <a href="#"> 删除学生信息</a>
        </div>

        <div class="bar">
            <a href="#"> 课程列表</a>
        </div>
        <div class="bar">
            <a href="#"> 新增课程</a>
        </div>
        <div class="bar">
            <a href="#"> 考试信息</a>
        </div>
        <div class="bar">
            <a href="#"> 考试信息统计</a>
        </div>
        <div class="bar">
            <a href="#"> 新增考试</a>
        </div>
        <div class="bar">
            <a href="#"> 学生成绩</a>
        </div>
        <div class="bar">
            <a href="#"> 成绩统计</a>
        </div>
        <div class="bar">
            <a href="#"> 学生通讯录</a>
        </div>
        <div class="bar">
            <a href="#"> 管理员信息</a>
        </div>
        <div class="bar">
            <a href="#"> 退出系统</a>
        </div>
    </div>
    <div class="box_main">


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
