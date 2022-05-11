<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../js/layui/css/layui.css">
    <title>用户列表页面</title>
    <style type="text/css">

        table{
            /*设置表格的宽度*/
            width: 800px;
            height: 70px;
            /*设置居中*/
            margin: 0 auto;
            /*设置边框*/
            border: 2px solid black;
            /**
             *     table的td之间默认有一个距离，通过border-spacing属性可以设置这个像素
             */
            /*border-spacing: 0px;*/
            /**
             *     border-collapse可以用来设置表格的边框合并，如果设置了该属性，border-spacing会自动失效
             */
            /*border-collapse: collapse;*/
            background: #8EC5FC;
        }

        /**
         *     伪类nth-child的even参数可以选中偶数行，而odd则可以选中奇数行。
         *
         *     温馨提示:
         *         nth-child属性IE8及以下版本并不支持，若非要达到相同的效果则需要引入JS来搞事情。
         */
        /*tr:nth-child(even){*/
        /*    background-color: yellow;*/
        /*}*/

        /**
         *     当鼠标移入到tr标签后，会改变颜色
         */
        tr:hover{
            background-color: #e765e5;
        }

        /*为td标签设置样式*/
        td,th{
            /*设置边框*/
            border: 2px solid black;
        }

        /********************/
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
            background: url("../pic/2_2_header.png") no-repeat center center;
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
<body style="background-color: #8EC5FC;
background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 50%, #f344ed 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">


<header class="header">
    <!--    <div class="back-bird"></div>-->
    <img alt="" class="logo-header">
    <!--    <div class="fore-bird"></div>-->
</header>
<br><br>
<section>
    <div class="container">
        <center>
            <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal"  style="background: #eb13d1">
                <a href="${pageContext.request.contextPath}/view/insert">添加用户</a>
            </button>

            <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" style="background: #eb13d1">
                <a href="${pageContext.request.contextPath}/backSystem/backSystem_m">返回系统</a>
            </button>
        </center>
        <br><br>
<div id="userDiv" >
    <div id="userData" style="display: none">

        <table>

            <thead>
            <tr>
                <th>电话号码</th>
                <th>姓名</th>
                <th>电子邮箱</th>
                <th>性别</th>
                <th>年龄</th>
                <th>学号</th>
                <th>政治面貌</th>
                <th>学院</th>
                <th>学历</th>
                <th>操作</th>
            </tr>
            </thead>

            <tbody>

            <tr>
                <td style="width: 100px;"><span>#TELNUMBER#</span></td>
                <td style="width: 100px"><span>#NAME#</span></td>
                <td style="width: 300px"><span>#MAIL#</span></td>
                <td style="width: 300px"><span>#SEX#</span></td>
                <td style="width: 300px"><span>#AGE#</span></td>
                <td style="width: 300px"><span>#IDCARD#</span></td>
                <td style="width: 300px"><span>#POLITICAL#</span></td>
                <td style="width: 300px"><span>#COLLEGE#</span></td>
                <td style="width: 300px"><span>#DEGREE#</span></td>
                <td style="width: 400px"><a href="${pageContext.request.contextPath}/user/findById?id=#ID2#">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/user/delete?id=#ID3#">删除</a></td>

            </tr>

            </tbody>

        </table>
        <br>
    </div>
</div>
<%--<a href="${pageContext.request.contextPath}/view/insert">添加</a>--%>
    </div>
</section>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/user/findUserAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#userDiv").append($("#userData").html()
                            .replace("#ID#",data[i].id)
                            .replace("#ID2#",data[i].id)
                            .replace("#ID3#",data[i].id)
                            .replace("#TELNUMBER#", data[i].telNumber)
                            .replace("#MAIL#", data[i].mail)
                            .replace("#NAME#", data[i].name)
                            .replace("#SEX#", data[i].sex)
                            .replace("#AGE#", data[i].age)
                            .replace("#IDCARD#", data[i].idCard)
                            .replace("#POLITICAL#", data[i].political)
                            .replace("#COLLEGE#", data[i].college)
                            .replace("#DEGREE#", data[i].degree)
                    )
                }
            }
        },
        error: function(data){
            console.log("请求失败！！！");
        }
    })


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

</script>

</body>
</html>