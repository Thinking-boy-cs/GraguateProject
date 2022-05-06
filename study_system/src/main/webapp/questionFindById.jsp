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
</head>
<body style="background: #f0f0f0">
<center>
<div style="background: #ffffff;height: 300px; width: 500px;">
        发布人：<h1>${theQuestion.name}</h1>
        内容：<h3>${theQuestion.questionInfo}</h3>
        发布时间：<h1>${theQuestion.time}</h1>


</div>
</center>
<section>
    <div class="container">
        <center>
            <br><br>

            <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" style="background: #eb13d1">
                <a href="${pageContext.request.contextPath}/view/infoAdd">添加评论</a>
            </button>

            <button type="button" class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal" style="background: #eb13d1">
                <a href="${pageContext.request.contextPath}/backSystem/backSystem_m">返回系统</a>
            </button>



        </center>
        <br><br>
        <div id="commentDiv" >
            <div id="commentData" style="display: none">
                <table>

                    <thead>
                    <tr>
                        <th>评论人</th>
                        <th>评论内容</th>
                        <th>发布时间</th>
<%--                        <th>操作</th>--%>
                    </tr>
                    </thead>

                    <tbody>

                    <tr>
                        <td style="width: 100px;"><span>#NAME#</span></td>
                        <td style="width: 100px"><span>#COMMENTINFO#</span></td>
                        <td style="width: 300px"><span>#TIME#</span></td>
<%--                        <td style="width: 50px"><a href="${pageContext.request.contextPath}/infoCast/delete?id=#ID3#">删除</a></td>--%>
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
        url:'${pageContext.request.contextPath}/community/commentFindById',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#commentDiv").append($("#commentData").html()
                        .replace("#ID#",data[i].id)
                        .replace("#ID2#",data[i].id)
                        .replace("#ID3#",data[i].id)
                        .replace("#NAME#", data[i].name)
                        .replace("#COMMENTINFO#", data[i].commentInfo)
                        .replace("#QUESTIONINFO#", data[i].questionInfo)
                        .replace("#TIME#", data[i].time)
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