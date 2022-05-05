<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../js/layui/css/layui.css"  media="all">
    <title>Default Page</title>
    <style>
        .layui-anim{animation-duration: 1.2s; -webkit-animation-duration: 1.2s;}
    </style>
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 43%, #eb13d1 88%);
background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<br><br>
<center>
<div>
    <div class="layui-anim layui-anim-up" ">
        <h1>YuLin 社区</h1>
    </div><br><br>

<%--    <h3 style="margin:30px;">This is my graduate project.</h3>--%>
    <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">
        <a href="${pageContext.request.contextPath}/login.html">发布问题</a>
    </button>

</div>
</center>


<br><br>
<div id="communityDiv" >
    <div id="communityData" style="display: none">
        <table>

            <thead>
            <tr>
                <th>发布人名称</th>
                <th>讨论问题</th>
                <th>发布时间</th>
            </tr>
            </thead>

            <tbody>

            <tr>
                <td style="width: 100px;"><span>#NAME#</span></td>
                <td style="width: 100px"><span>#QUESTIONINFO#</span></td>
                <td style="width: 300px"><span>#TIME#</span></td>
                <td style="width: 50px"><a href="${pageContext.request.contextPath}/community/find?id=#ID3#">查看评论</a></td>
            </tr>

            </tbody>

        </table>
    </div>
</div>
</div>
</section>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/layui/layui.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/community/findAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#communityDiv").append($("#communityData").html()
                        .replace("#ID#",data[i].id)
                        .replace("#ID2#",data[i].id)
                        .replace("#ID3#",data[i].id)
                        .replace("#TELNUMBER#", data[i].telNumber)
                        .replace("#QUESTIONINFO#", data[i].questionInfo)
                        .replace("#TIME#", data[i].time)
                        .replace("#NAME#", data[i].name)
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