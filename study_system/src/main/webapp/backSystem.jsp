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
    <link type="text/css" rel="stylesheet" href="../js/layui/css/layui.css">
</head>
<%--<style>--%>
<%--    body {--%>
<%--        background-color: #f9f9f9;--%>
<%--        font-size: 16px;--%>

<%--    }--%>

<%--    .box_top {--%>
<%--        width: 1248px;--%>
<%--        height: 103px;--%>
<%--        background-color: #FFFFFF;--%>
<%--        border-bottom: 2px solid #1962F1;--%>
<%--    }--%>

<%--    .box_bar {--%>
<%--        width: 230.25px;--%>
<%--        background-color: #FFFFFF;--%>
<%--        margin-top: 2px;--%>
<%--    }--%>

<%--    .bar {--%>
<%--        /*width: 235.25px;*/--%>
<%--        width: 235.25px;--%>
<%--        height: 65px;--%>
<%--        margin: 0 auto;--%>
<%--        background-color: #5b54d0;--%>

<%--    }--%>

<%--    .icon_bg{--%>
<%--        width: 100px;--%>
<%--        height: 40px;--%>
<%--        border-radius: 20%;--%>
<%--        background-color: #5b54d0;--%>
<%--    }--%>

<%--    .icon_text{--%>
<%--        width: 80px;--%>
<%--        height: 40px;--%>
<%--        margin-top: 30px;--%>
<%--        margin-left: 20px;--%>
<%--    }--%>

<%--    .box_main {--%>
<%--        width: 997.75px;--%>
<%--        height: 625px;--%>

<%--        margin-top: -520px;--%>
<%--        margin-left: 220px;--%>
<%--    }--%>

<%--    .box_bar{--%>
<%--        width: 235.25px;--%>
<%--        height: 553px;--%>
<%--        display: inline-block;--%>
<%--        vertical-align: top;--%>

<%--    }--%>

<%--    .box_main {--%>
<%--        display: inline-block;--%>
<%--        vertical-align: top;--%>
<%--    }--%>

<%--    .box {--%>
<%--        width: 1238px;--%>
<%--        height: 658px;--%>
<%--        background-color: #FFFFFF;--%>
<%--        margin: 0 auto;--%>
<%--    }--%>
<%--    a{--%>
<%--        text-decoration: none;--%>
<%--        color: #FFFFFF;--%>
<%--        cursor: pointer;--%>
<%--        font-size:14px;--%>
<%--        line-height: 33px;--%>
<%--        margin-left: 10px;--%>
<%--    }--%>


<%--    /*轮播图*/--%>
<%--    #pp2{--%>
<%--        width:9999px;--%>
<%--        height:9999px;--%>
<%--        animation:switch 15s infinite;--%>
<%--    }--%>
<%--    #pp2>img{--%>
<%--        float:left;--%>
<%--    }--%>
<%--    #pp1{--%>
<%--        width:1020px;--%>
<%--        height:550px;--%>
<%--        overflow:hidden;--%>
<%--    }--%>
<%--    @keyframes switch{--%>
<%--        0%{}--%>
<%--    20%{transform:translateX(0px);}--%>
<%--    40%{transform:translateX(-1020px);}--%>
<%--    60%{transform:translateX(-2040px);}--%>
<%--    80%{transform:translateX(-3060px);}--%>
<%--    /*100%{transform:translateX(-4080px);}*/--%>
<%--    }--%>

<%--</style>--%>
<%--<body style="background-color: #0093E9;--%>
<%--background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;--%>
<%--    background-attachment: fixed;">--%>
<%--<div class="box">--%>
<%--    <div class="box_top">--%>
<%--        <img src="../pic/topBar.png">--%>
<%--    </div>--%>
<%--    <div class="box_bar">--%>
<%--        <div class="bar">--%>
<%--            欢迎用户：${thisUser.name}--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 首页</a>--%>
<%--        </div>--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="http://localhost:9999/study_system/view/showDataItem"> 年级列表</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/user/thisUser_u"> 本人信息</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/infoFind_u"> 通知公告</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/file/list"> 查看资料</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/upload.html"> 上传资料</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/signCalendar"> 打卡</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/recommendSystem"> 推荐系统</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/about.html"> 关于</a>--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 新增课程</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 考试信息</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 考试信息统计</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 新增考试</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 学生成绩</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 成绩统计</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 学生通讯录</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> 管理员信息</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 退出系统</a>--%>
<%--        </div>--%>

<%--    </div>--%>

<%--&lt;%&ndash;        <div class="box_main">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <img src="../pic/betbg.png">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--<div class="box_main">--%>
<%--    <div id="pp1">--%>
<%--        <div id="pp2">--%>
<%--            <img src="../pic/1.jpg"/>--%>
<%--            <img src="../pic/2.jpg"/>--%>
<%--            <img src="../pic/3.jpg"/>--%>
<%--            <img src="../pic/4.jpg"/>--%>
<%--            <img src="../pic/5.jpg"/>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



<%--</body>--%>

<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-gray">Mr.Yu's System</div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="">社区</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">文档</a></li>
            <li class="layui-nav-item ">
                <a href="javascript:;">产品版本</a>
                <dl class="layui-nav-child">
                    <dd><a href="">menu 11</a></dd>
                    <dd><a href="">menu 22</a></dd>
                    <dd><a href="">menu 33</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="../pic/icon.png" class="layui-nav-img">
                     ${thisUser.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="http://localhost:9999/study_system/user/thisUser_u">个人信息</a></dd>
                    <dd><a href="http://localhost:9999/study_system/user/exitUser">退出</a></dd>
                </dl>
            </li>
            <!--            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>-->
            <!--                <a href="javascript:;">-->
            <!--                    <i class="layui-icon layui-icon-more-vertical"></i>-->
            <!--                </a>-->
            <!--            </li>-->
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="layui-bg-blue" href="javascript:;">基础功能</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/infoFind_u">通知公告</a></dd>
                        <dd><a href="http://localhost:9999/study_system/file/list">查看资料</a></dd>
                        <dd><a href="http://localhost:9999/study_system/upload.html">上传资料</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/signCalendar">打卡日历</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="layui-bg-blue" href="javascript:;">核心功能</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/recommendSystem">推荐系统</a></dd>
                        <dd><a href="javascript:;">个人画像</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-bg-blue"><a href="http://localhost:9999/study_system/about.html">关于我们</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
<%--        <div style="padding: 15px;">内容主体区域。记得修改 layui.css 和 js 的路径</div>--%>
        <div class="layui-carousel" id="lunbo">
            <div carousel-item>
                <div><img src="../pic/1.jpg"/></div>
                <div><img src="../pic/2.jpg"/></div>
                <div><img src="../pic/3.jpg"/></div>
                <div><img src="../pic/4.jpg"/></div>
                <div><img src="../pic/5.jpg"/></div>
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>
</body>


<%--<script>--%>
<%--    // $(function () {--%>
<%--    //     $(".bar").hover(--%>
<%--    //         function () {--%>
<%--    //             $(this).css("background-color", "#24A260")--%>
<%--    //         }, function () {--%>
<%--    //             $(this).css("background-color", "#26ab65")--%>
<%--    //         }--%>
<%--    //     )--%>
<%--    // });--%>

<%--</script>--%>

<script src="../js/layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });

    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#lunbo'
            ,width: '100%' //设置容器宽度
            ,height:'100%'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

</html>

