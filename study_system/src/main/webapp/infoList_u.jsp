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
            background-color: #6a6bff;
        }

        /*为td标签设置样式*/
        td,th{
            /*设置边框*/
            border: 2px solid black;
        }


        /******************************/
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
            background: url("../pic/1_1_header.png") no-repeat center center;
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
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">

<header class="header">
    <!--    <div class="back-bird"></div>-->
    <img  alt="" class="logo-header">
    <!--    <div class="fore-bird"></div>-->
</header>
<section>
    <div class="container">
        <br><br><br><br>
<div id="infoDiv" >
    <div id="infoData" style="display: none">
        <table>

            <thead>
            <tr>
                <th>发布人</th>
                <th>标题</th>
                <th>发布时间</th>
                <th>操作</th>
            </tr>
            </thead>

            <tbody>

            <tr>
                <td style="width: 100px;"><span>#NAME#</span></td>
                <td style="width: 100px"><span>#TITEL#</span></td>
                <td style="width: 300px"><span>#TIME#</span></td>
                <td style="width: 50px"><a href="${pageContext.request.contextPath}/infoCast/info_find?id=#ID3#">查看</a></td>
            </tr>

            </tbody>

        </table>
    </div>
</div>
    </div>
</section>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/infoCast/findInfoAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#infoDiv").append($("#infoData").html()
                            .replace("#ID#",data[i].id)
                            .replace("#ID2#",data[i].id)
                            .replace("#ID3#",data[i].id)
                            .replace("#NAME#", data[i].name)
                            .replace("#INFO#", data[i].info)
                            .replace("#TIME#", data[i].time)
                            .replace("#TITEL#", data[i].title)
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