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
    <link type="text/css" rel="stylesheet" href="../js/layui/css/layui2.css">
</head>
<script src="js/jquery-3.3.1.js"></script>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-gray">YuLin Study System</div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="">社区</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="http://localhost:9999/study_system/view/doc">文档</a></li>
            <li class="layui-nav-item ">
                <a href="javascript:;">产品版本</a>
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
                    <img src="../pic/icon_2.png" class="layui-nav-img">
                    ${thisManager.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="http://localhost:9999/study_system/user/thisUser_m">个人信息</a></dd>
                    <dd><a href="http://localhost:9999/study_system/user/exitManager">退出</a></dd>
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
                    <a  style="background: #e34ec8" href="javascript:;">基础功能</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/infoFind">管理公告</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/find">管理用户</a></dd>
                        <dd><a href="http://localhost:9999/study_system/view/showSignItem">查看打卡</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a style="background: #e34ec8" href="javascript:;">核心功能</a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://localhost:9999/study_system/view/showDataItem">数据可视化</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item " style="background: #e34ec8"><a href="http://localhost:9999/study_system/about.html">关于我们</a></li>
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
        <center>
            <font color='gray' size='2'>
                版权所有&copy西南大学 | 地址：重庆市荣昌区学院路160号 | 邮编：402460 | 反馈意见：huafugongcheng@163.com
            </font>
        </center>
    </div>
</div>

<%--<div class="box">--%>
<%--    <div class="box_top">--%>
<%--        <img src="../pic/topBar.png">--%>
<%--    </div>--%>
<%--    <div class="box_bar">--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 首页</a>--%>
<%--        </div>--%>
<%--&lt;%&ndash;        <div class="bar">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a href="http://localhost:9999/study_system/view/showDataItem"> 年级列表</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/user/thisUser_m"> 本人信息</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/showSignItem"> 查看打卡</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/find"> 管理用户</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/showDataItem"> 可视化</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/view/infoFind"> 发布公告</a>--%>
<%--        </div>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 警告异常</a>--%>
<%--        </div>--%>

<%--        <div class="bar">--%>
<%--            <a href="http://localhost:9999/study_system/about.html"> 关于</a>--%>
<%--        <div class="bar">--%>
<%--            <a href="#"> 退出系统</a>--%>
<%--        </div>--%>
<%--            <div class="bar">--%>
<%--                <h1>${thisManager.name}</h1>--%>
<%--            </div>--%>
<%--    </div>--%>




</body>
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
