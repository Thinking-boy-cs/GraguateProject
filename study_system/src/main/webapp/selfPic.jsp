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
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">


<center>
    <div style="height: 100px;width: 500px"></div>
<table>

    <tr>
        <th>
            <div id="analysis_degree" style="width: 600px;height: 600px;"></div>
        </th>
        <th>
            <div id="analysis_college" style="width: 600px;height: 600px;"></div>
        </th>
    </tr>
    <tr>
        <th>
            <div id="analysis_political" style="width: 600px;height: 600px;"></div>
        </th>
        <th>
            <div id="analysis_type" style="width: 600px;height: 600px;"></div>
        </th>
    </tr>
</table>
</center>


</body>
<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script src="/study_system/js/echarts.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
var totalCount_p=10;

var manCount_p=10;
var womanCount_p=10;

var partyCount_p=10;
var groupCount_p=10;
var peopleCount_p=10;

var uploadCount_p=10;

var undergraduateCount_p=10;
var postgraduateCount_p=10;
var doctorCount_p=10;

var scCollegeCount_p=10;
var dkCollegeCount_p=10;
var smCollegeCount_p=10;
var dyCollegeCount_p=10;

var artCount_p=10;
var textCount_p=10;
var techCount_p=10;
var hisCount_p=10;
var happyCount_p=10;
    //总数
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/totalCount",    //请求发送到TestServlet处
        totalCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(totalCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This totalCount is :"+totalCount);
            totalCount_p=totalCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //男生数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/manCount",    //请求发送到TestServlet处
        manCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(manCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This manCount is :"+manCount);
            manCount_p=manCount;
            console.log("This is the manCount_p",manCount_p);

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //女生数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/womanCount",    //请求发送到TestServlet处
        womanCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(womanCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This womanCount is :"+womanCount);
            womanCount_p=womanCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //党员数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/partyCount",    //请求发送到TestServlet处
        partyCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(partyCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This partyCount is :"+partyCount);
            partyCount_p=partyCount;
            console.log("This is the partyCount_p",partyCount_p);

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //团员数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/groupCount",    //请求发送到TestServlet处
        groupCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(groupCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This groupCount is :"+groupCount);
            groupCount_p=groupCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //群众数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/peopleCount",    //请求发送到TestServlet处
        peopleCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(peopleCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This peopleCount is :"+peopleCount);
            peopleCount_p=peopleCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //上传数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/uploadCount",    //请求发送到TestServlet处
        uploadCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(uploadCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This uploadCount is :"+uploadCount);
            uploadCount_p=uploadCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //本科数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/undergraduateCount",    //请求发送到TestServlet处
        undergraduateCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(undergraduateCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This undergraduateCount is :"+undergraduateCount);
            undergraduateCount_p=undergraduateCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //硕士数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/postgraduateCount",    //请求发送到TestServlet处
        postgraduateCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(postgraduateCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This postgraduateCount is :"+postgraduateCount);
            postgraduateCount_p=postgraduateCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //博士数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/doctorCount",    //请求发送到TestServlet处
        doctorCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(doctorCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This doctorCount is :"+doctorCount);
            doctorCount_p=doctorCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //水产数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/scCollegeCount",    //请求发送到TestServlet处
        scCollegeCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(scCollegeCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This scCollegeCount is :"+scCollegeCount);
            scCollegeCount_p=scCollegeCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //动科数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/dkCollegeCount",    //请求发送到TestServlet处
        dkCollegeCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(dkCollegeCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This dkCollegeCount is :"+dkCollegeCount);
            dkCollegeCount_p=dkCollegeCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //商贸数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/smCollegeCount",    //请求发送到TestServlet处
        smCollegeCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(smCollegeCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This smCollegeCount is :"+smCollegeCount);
            smCollegeCount_p=smCollegeCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //动医数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/dyCollegeCount",    //请求发送到TestServlet处
        dyCollegeCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(dyCollegeCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This dyCollegeCount is :"+dyCollegeCount);
            dyCollegeCount_p=dyCollegeCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //艺术数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/artCount",    //请求发送到TestServlet处
        artCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(artCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This artCount is :"+artCount);
            artCount_p=artCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })


    //文学数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/textCount",    //请求发送到TestServlet处
        textCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(textCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This textCount is :"+textCount);
            textCount_p=textCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //科技数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/techCount",    //请求发送到TestServlet处
        techCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(techCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This techCount is :"+techCount);
            techCount_p=techCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })


    //历史数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/hisCount",    //请求发送到TestServlet处
        hisCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(hisCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This hisCount is :"+hisCount);
            hisCount_p=hisCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })

    //旅行数量
    $.ajax({
        type : "post",
        async : false,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/recommend/happyCount",    //请求发送到TestServlet处
        happyCount : {},
        dataType : "json",        //返回数据形式为json
        success : function(happyCount) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            console.log("This happyCount is :"+happyCount);
            happyCount_p=happyCount;

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
        }
    })


    var myChart_degree = echarts.init(document.getElementById("analysis_degree"));
    myChart_degree.showLoading();    //数据加载完之前先显示一段简单的loading动画
    myChart_degree.hideLoading();    //隐藏加载动画
    myChart_degree.setOption({        //加载数据图表
            title: {
                text: 'Self Analysis Degree'
            },
            legend: {
                data: ['Degree']
            },
            radar: {
                // shape: 'circle',
                indicator: [
                    { name: '本科', max: totalCount_p,color:"#000" },
                    { name: '硕士', max: totalCount_p ,color:"#000"},
                    { name: '博士', max: totalCount_p,color:"#000" },
                ]
            },
            series: [
                {
                    name: 'Budget vs spending',
                    type: 'radar',
                    data: [
                        {
                            value: [undergraduateCount_p, postgraduateCount_p, doctorCount_p],
                            name: 'Degree'
                        },
                    ]
                }
            ]
    });


    var myChart_political = echarts.init(document.getElementById("analysis_political"));
    console.log("analysis party_p is ",partyCount_p);
    myChart_political.showLoading();    //数据加载完之前先显示一段简单的loading动画
    myChart_political.hideLoading();    //隐藏加载动画
    myChart_political.setOption({        //加载数据图表
        title: {
            text: 'Self Analysis Political'
        },
        legend: {
            data: ['Political']
        },
        radar: {
            // shape: 'circle',
            indicator: [
                { name: '党员', max: totalCount_p ,color:"#000"},
                { name: '共青团员', max: totalCount_p,color:"#000" },
                { name: '群众', max: totalCount_p,color:"#000" }
            ]
        },
        series: [
            {
                name: 'Budget vs spending',
                type: 'radar',
                data: [
                    {
                        value: [partyCount_p,groupCount_p,peopleCount_p],
                        name: 'Political',
                        itemStyle: {
                            normal: {
                                borderWidth: 2,
                                color: '#FFA662'
                            }
                        },
                    },
                ]
            }
        ]
    });



    var myChart_type = echarts.init(document.getElementById("analysis_type"));
    myChart_type.showLoading();    //数据加载完之前先显示一段简单的loading动画
    myChart_type.hideLoading();    //隐藏加载动画
    myChart_type.setOption({        //加载数据图表
        title: {
            text: 'Self Analysis Type'
        },
        legend: {
            data: ['Type']
        },
        radar: {
            // shape: 'circle',
            indicator: [
                { name: '艺术', max: totalCount_p ,color:"#000"},
                { name: '文学', max: totalCount_p,color:"#000" },
                { name: '科技', max: totalCount_p ,color:"#000"},
                { name: '历史', max: totalCount_p ,color:"#000"},
                { name: '旅游', max: totalCount_p ,color:"#000"}
            ]
        },
        series: [
            {
                name: 'Budget vs spending',
                type: 'radar',
                data: [
                    {
                        value: [ artCount_p, textCount_p, techCount_p, hisCount_p, happyCount_p],
                        name: 'Type',
                        itemStyle: {
                            normal: {
                                borderWidth: 2,
                                color: '#b678f3'
                            }
                        },
                    },
                ]
            }
        ]
    });


    var myChart_college = echarts.init(document.getElementById("analysis_college"));
    myChart_college.showLoading();    //数据加载完之前先显示一段简单的loading动画
    myChart_college.hideLoading();    //隐藏加载动画
    myChart_college.setOption({        //加载数据图表
        title: {
            text: 'Self Analysis College'
        },
        legend: {
            data: ['College']
        },
        radar: {
            // shape: 'circle',
            indicator: [
                { name: '水产学院', max: totalCount_p ,color:"#000"},
                { name: '动物科学学院', max: totalCount_p ,color:"#000"},
                { name: '动物医学学院', max: totalCount_p ,color:"#000"},
                { name: '商贸学院', max: totalCount_p ,color:"#000"}
            ]
        },
        series: [
            {
                name: 'Budget vs spending',
                type: 'radar',
                data: [
                    {
                        value: [ scCollegeCount_p,dkCollegeCount_p, dyCollegeCount_p, smCollegeCount_p],
                        name: 'College',
                        itemStyle: {
                            normal: {
                                borderWidth: 2,
                                color: '#ea6dbf'
                            }
                        },
                    },
                ]
            }
        ]
    });


    // var logo = document.querySelector('.logo-header'),
    //     blurredBird = document.querySelector('.back-bird'),
    //     foreBird = document.querySelector('.fore-bird');
    //
    // window.addEventListener('scroll',function () {
    //     var scrolled  = window.scrollY;
    //     logo.style.transform = "translate(0px,"+scrolled/2+"%)";
    //     blurredBird.style.transform = "translate(0px,"+scrolled/5+"%)";
    //     foreBird.style.transform = "translate(0px,-"+scrolled/80+"%)";
    // });
    //
    // var forEach = function (array,callback) {
    //     for (var i = 0; i < array.length;i++){
    //         callback.call(null,i,array[i]);
    //     }
    // }


    //myChart.setOption(option);

</script>

</body>
</html>