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


<%--    /*?????????*/--%>
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
<%--            ???????????????${thisUser.name}--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> ??????</a>--%>
<%--        </div>--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="http://localhost:9999/study_system/view/showDataItem"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/user/thisUser_u"> ????????????</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/infoFind_u"> ????????????</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/file/list"> ????????????</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/upload.html"> ????????????</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/signCalendar"> ??????</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/recommendSystem"> ????????????</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/about.html"> ??????</a>--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ??????????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ???????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="#"> ???????????????</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> ????????????</a>--%>
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
        <div class="layui-logo layui-hide-xs layui-bg-gray">YuLin Study System</div>
        <!-- ????????????????????????layui ???????????????????????? -->
        <ul class="layui-nav layui-layout-left">
            <!-- ??????????????? -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="http://localhost:9999/study_system/view/community">??????</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="http://localhost:9999/study_system/view/doc">??????</a></li>
            <li class="layui-nav-item ">
                <a href="javascript:;">????????????</a>
                <dl class="layui-nav-child">
                    <dd><a href="">Version_1.0</a></dd>
                    <dd><a href="">Version_2.0</a></dd>
                    <dd><a href="">Version_3.0</a></dd>
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
                    <dd><a href="http://localhost:9999/study_system/user/thisUser_u">????????????</a></dd>
                    <dd><a href="http://localhost:9999/study_system/user/exitUser">??????</a></dd>
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
            <!-- ??????????????????????????????layui???????????????????????? -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="layui-bg-blue" href="javascript:;">????????????</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/infoFind_u">????????????</a></dd>
                        <dd><a href="http://localhost:9999/study_system/file/list">????????????</a></dd>
                        <dd><a href="http://localhost:9999/study_system/upload.html">????????????</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/signCalendar">????????????</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/showCalendar">????????????</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="layui-bg-blue" href="javascript:;">????????????</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/recommendSystem">????????????</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/selfPic">????????????</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-bg-blue"><a href="http://localhost:9999/study_system/about.html">????????????</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- ?????????????????? -->
<%--        <div style="padding: 15px;">????????????????????????????????? layui.css ??? js ?????????</div>--%>
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
        <!-- ?????????????????? -->
        <center>
            <font color='gray' size='2'>
                ????????????&copy???????????? | ????????????????????????????????????160??? | ?????????402460 | ???????????????huafugongcheng@163.com
            </font>
        </center>
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

        //????????????
        util.event('lay-header-event', {
            //??????????????????
            menuLeft: function(othis){
                layer.msg('???????????????????????????', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">???????????????????????????</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //?????????
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });

    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //????????????
        carousel.render({
            elem: '#lunbo'
            ,width: '100%' //??????????????????
            ,height:'100%'
            ,arrow: 'always' //??????????????????
            //,anim: 'updown' //??????????????????
        });
    });
</script>

</html>

