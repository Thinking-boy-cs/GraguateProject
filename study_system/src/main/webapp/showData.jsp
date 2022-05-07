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
            background: url("../pic/2_4_header.png") no-repeat center center;
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
<body style="background-color: #80D0C7;
background-image: linear-gradient(160deg, #80D0C7 43%, #eb13d1 93%);
background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">

<header class="header">
    <!--    <div class="back-bird"></div>-->
    <img src="download.png" alt="" class="logo-header">
    <!--    <div class="fore-bird"></div>-->
</header>

<section>
    <div class="container">
        <br><br><br><br>
<center>
<div id="a_sex" style="width: 600px;height: 600px;"></div>
<div id="a_college" style="width: 600px;height: 600px;"></div>
<div id="a_degree" style="width: 600px;height: 600px;"></div>
<div id="a_sign_months" style="width: 600px;height: 600px;"></div>年份：<input type="text" id="listen" ><br>
<div id="a_sign_years" style="width: 600px;height: 600px;"></div>
<div id="a_sign_days" style="width: 600px;height: 600px;"></div>年份：<input type="text" id="listen_1" ><br>月份：<input type="text" id="listen_2" ><br>
</center>

<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script src="/study_system/js/echarts.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    /**
     * 统计各个学院的注册情况
     */
    var myChart = echarts.init(document.getElementById("a_college"));
    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画

    var names=[];    //类别数组（实际用来盛放X轴坐标值）
    var values=[];    //销量数组（实际用来盛放Y坐标值）
    var items = [];

    $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/data/showCollege",    //请求发送到TestServlet处
        data : {},
        dataType : "json",        //返回数据形式为json
        success : function(data) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var mylength = data.length;
            if (data) {
                for(var i=0;i<mylength;i++){
                    var obj=new Object();
                    obj.name=data[i].countName;
                    obj.value=data[i].countValue;
                    items[i]=obj;
                    names[i]=obj.name;
                    // names.push(data[i].countName);
                    // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                    // items.push({countName:data[i].countName,countValue:data[i].countValue});
                    // console.log(items[i].countName+","+items[i].countValue);
                }
                myChart.hideLoading();    //隐藏加载动画
                myChart.setOption({        //加载数据图表

                    title: {
                        text: '各个学院的平台注册情况',
                        subtext: 'Real-time data',
                        left: 'center'
                    },

                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data:names
                    },

                    // xAxis: {
                    //     data: names
                    // },
                    // yAxis: {
                    //     type:"value"
                    // },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>{b} : {c}人'
                    },
                    series: [
                        {
                        // 根据名字对应到相应的系列
                        name: "人数",
                        type: 'pie',
                        radius: '50%',
                        data: items
                        }
                    ],

                    emphasis: {
                        itemStyle: {
                            shadowBlur: 20,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                });

            }

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })

    /**
     * 统计男女注册情况
     */
    var myChart_1 = echarts.init(document.getElementById("a_sex"));
    myChart_1.showLoading();    //数据加载完之前先显示一段简单的loading动画

    var names_1=[];    //类别数组（实际用来盛放X轴坐标值）
    var values_1=[];    //销量数组（实际用来盛放Y坐标值）
    var items_1 = [];

    $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/data/showSex",    //请求发送到TestServlet处
        data : {},
        dataType : "json",        //返回数据形式为json
        success : function(data_1) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var mylength = data_1.length;
            if (data_1) {
                for(var i=0;i<mylength;i++){
                    var obj=new Object();
                    obj.name=data_1[i].countName;
                    obj.value=data_1[i].countValue;
                    items_1[i]=obj;
                    names_1[i]=obj.name;
                    values_1[i]=obj.value;
                    // names.push(data[i].countName);
                    // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                    // items.push({countName:data[i].countName,countValue:data[i].countValue});
                    // console.log(items[i].countName+","+items[i].countValue);
                }
                myChart_1.hideLoading();    //隐藏加载动画
                myChart_1.setOption({        //加载数据图表

                    title: {
                        text: '男生&女生的平台注册情况',
                        subtext: 'Real-time data',
                        left: 'center'
                    },

                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data:names_1
                    },

                    xAxis: {
                        data: names_1
                    },
                    yAxis: {
                        type:"value"
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>{b} : {c}人'
                    },
                    series: [
                        {
                            // 根据名字对应到相应的系列
                            name: "人数",
                            type: 'bar',
                            itemStyle: {
                                normal: {
                                    color: function (params) {

                                        var colorList = [
                                            '#C1232B', '#2b51af', '#FCCE10', '#E87C25', '#27727B',
                                            '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                            '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                        ];
                                        return colorList[params.dataIndex]
                                    }
                                },
                            },
                                radius: '50%',
                                data: values_1
                            }
                    ],

                    emphasis: {
                        itemStyle: {
                            shadowBlur: 20,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                });

            }

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })


    /**
     * 统计不同学历的注册情况
     */
    var myChart_2 = echarts.init(document.getElementById("a_degree"));
    myChart_2.showLoading();    //数据加载完之前先显示一段简单的loading动画

    var names_2=[];    //类别数组（实际用来盛放X轴坐标值）
    var values_2=[];    //销量数组（实际用来盛放Y坐标值）
    var items_2 = [];

    $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/data/showDegree",    //请求发送到TestServlet处
        data : {},
        dataType : "json",        //返回数据形式为json
        success : function(data_2) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var mylength = data_2.length;
            if (data_2) {
                for(var i=0;i<mylength;i++){
                    var obj=new Object();
                    obj.name=data_2[i].countName;
                    obj.value=data_2[i].countValue;
                    items_2[i]=obj;
                    names_2[i]=obj.name;
                    values_2[i]=obj.value;
                    // names.push(data[i].countName);
                    // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                    // items.push({countName:data[i].countName,countValue:data[i].countValue});
                    // console.log(items[i].countName+","+items[i].countValue);
                }
                myChart_2.hideLoading();    //隐藏加载动画
                myChart_2.setOption({        //加载数据图表

                    title: {
                        text: '不同学历的平台注册情况',
                        subtext: 'Real-time data',
                        left: 'center'
                    },

                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data:names_2
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>{b} : {c}人'
                    },
                    series: [
                        {
                            // 根据名字对应到相应的系列
                            name: "人数",
                            type: 'funnel',
                            sort: 'ascending',
                            itemStyle: {
                                normal: {
                                    color: function (params) {

                                        var colorList = [
                                            '#C1232B', '#2b51af', '#FCCE10', '#E87C25', '#27727B',
                                            '#FE8463', '#9BCA63', '#FAD860', '#F3A43B', '#60C0DD',
                                            '#D7504B', '#C6E579', '#F4E001', '#F0805A', '#26C0C0'
                                        ];
                                        return colorList[params.dataIndex]
                                    }
                                },
                            },
                            radius: '50%',
                            data: items_2
                        }
                    ],

                    emphasis: {
                        itemStyle: {
                            shadowBlur: 20,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                });

            }

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })


    /**
     * 统计某年各个月份的打卡情况
     */
    // var year = $("#listen").val();
    // console.info(year);
    var myChart_3 = echarts.init(document.getElementById("a_sign_months"));
    myChart_3.showLoading();    //数据加载完之前先显示一段简单的loading动画
    document.getElementById('listen').addEventListener("change", function (event) {
        console.log('监听数据' + this.value);
        var year = this.value;
        var names_3=[];    //类别数组（实际用来盛放X轴坐标值）
        var values_3=[];    //销量数组（实际用来盛放Y坐标值）
        var items_3 = [];
        console.info("输入的年份信息："+year);

        $.ajax({
            type : "post",
            async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
            url : "${pageContext.request.contextPath}/data/showSignMonths?year="+year,    //请求发送到TestServlet处
            data : {},
            dataType : "json",        //返回数据形式为json
            success : function(data_3) {
                //请求成功时执行该函数内容，result即为服务器返回的json对象
                var mylength = data_3.length;
                if (data_3) {
                    for(var i=0;i<mylength;i++){
                        var obj=new Object();
                        obj.name=data_3[i].countName;
                        obj.value=data_3[i].countValue;
                        items_3[i]=obj;
                        names_3[i]=obj.name;
                        values_3[i]=obj.value;
                        // names.push(data[i].countName);
                        // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                        // items.push({countName:data[i].countName,countValue:data[i].countValue});
                        console.log(names_3[i]+","+values_3[i]);
                    }
                    myChart_3.hideLoading();    //隐藏加载动画
                    myChart_3.setOption({        //加载数据图表

                        title: {
                            text: year+'年打卡情况',
                            subtext: 'Real-time data',
                            left: 'center'
                        },

                        legend: {
                            orient: 'vertical',
                            left: 'left',
                            data:names_3
                        },

                        xAxis: {
                            data: names_3
                        },
                        yAxis: {
                            type:"value"
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: '{a} <br/>{b} : {c}人'
                        },
                        series: [
                            {
                                // 根据名字对应到相应的系列
                                name: "人数",
                                type: 'line',
                                radius: '50%',
                                data: values_3,
                                smooth: true
                            }
                        ],

                        emphasis: {
                            itemStyle: {
                                shadowBlur: 20,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    });

                }

            },
            error : function(errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart.hideLoading();
            }
        })

    })


    /**
     * 统计所有年份的打卡情况
     */
    var myChart_4 = echarts.init(document.getElementById("a_sign_years"));
    myChart_4.showLoading();    //数据加载完之前先显示一段简单的loading动画

    var names_4=[];    //类别数组（实际用来盛放X轴坐标值）
    var values_4=[];    //销量数组（实际用来盛放Y坐标值）
    var items_4 = [];

    $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "${pageContext.request.contextPath}/data/showSignYears",    //请求发送到TestServlet处
        data : {},
        dataType : "json",        //返回数据形式为json
        success : function(data_4) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var mylength = data_4.length;
            if (data_4) {
                for(var i=0;i<mylength;i++){
                    var obj=new Object();
                    obj.name=data_4[i].countName;
                    obj.value=data_4[i].countValue;
                    items_4[i]=obj;
                    names_4[i]=obj.name;
                    values_4[i]=obj.value;
                    // names.push(data[i].countName);
                    // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                    // items.push({countName:data[i].countName,countValue:data[i].countValue});
                    // console.log(items[i].countName+","+items[i].countValue);
                }
                myChart_4.hideLoading();    //隐藏加载动画
                myChart_4.setOption({        //加载数据图表

                    title: {
                        text: '各年打卡情况',
                        subtext: 'Real-time data',
                        left: 'center'
                    },

                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data:names_4
                    },

                    xAxis: {
                        data: names_4
                    },
                    yAxis: {
                        type:"value"
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>20{b}年 : {c}人'
                    },
                    series: [
                        {
                            // 根据名字对应到相应的系列
                            name: "人数",
                            type: 'line',
                            radius: '50%',
                            itemStyle : {
                                normal : {
                                    color:'rgba(226,174,56,0.84)',
                                    lineStyle:{
                                        color:'#c46d21'
                                    }
                                }
                            },
                            data: values_4,
                            smooth: true
                        }
                    ],

                    emphasis: {
                        itemStyle: {
                            shadowBlur: 20,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                });

            }

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })


    /**
     * 统计某年某个月的打卡情况
     */
    var myChart_5 = echarts.init(document.getElementById("a_sign_days"));
    myChart_5.showLoading();    //数据加载完之前先显示一段简单的loading动画
    document.getElementById('listen_1').addEventListener("change", function (event1) {
        console.log('监听数据' + this.value);
        var year_s = this.value;
        document.getElementById('listen_2').addEventListener("change", function (event2) {
        console.log('监听数据' + this.value);
        var month_s = this.value;
        var names_5=[];    //类别数组（实际用来盛放X轴坐标值）
        var values_5=[];    //销量数组（实际用来盛放Y坐标值）
        var items_5 = [];
        console.info("输入的年份信息："+year_s);
        console.info("输入的月份信息："+month_s);

        $.ajax({
            type : "post",
            async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
            url : "${pageContext.request.contextPath}/data/showSignDays?year="+year_s+"&month="+month_s,    //请求发送到TestServlet处
            data : {},
            dataType : "json",        //返回数据形式为json
            success : function(data_5) {
                //请求成功时执行该函数内容，result即为服务器返回的json对象
                var mylength = data_5.length;
                if (data_5) {
                    for(var i=0;i<mylength;i++){
                        var obj=new Object();
                        obj.name=data_5[i].countName;
                        obj.value=data_5[i].countValue;
                        items_5[i]=obj;
                        names_5[i]=obj.name;
                        values_5[i]=obj.value;
                        // names.push(data[i].countName);
                        // values.push(data[i].countValue);    //挨个取出类别并填入类别数组
                        // items.push({countName:data[i].countName,countValue:data[i].countValue});
                        console.log(names_5[i]+","+values_5[i]);
                    }
                    myChart_5.hideLoading();    //隐藏加载动画
                    myChart_5.setOption({        //加载数据图表

                        title: {
                            text: year_s+'年'+month_s+'月打卡情况',
                            subtext: 'Real-time data',
                            left: 'center'
                        },

                        legend: {
                            orient: 'vertical',
                            left: 'left',
                            data:names_5
                        },

                        xAxis: {
                            data: names_5
                        },
                        yAxis: {
                            type:"value"
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: '{a} <br/>{b} : {c}人'
                        },
                        series: [
                            {
                                // 根据名字对应到相应的系列
                                name: "人数",
                                type: 'line',
                                radius: '50%',
                                itemStyle : {
                                    normal : {
                                        color:'rgba(157,42,163,0.84)',
                                        lineStyle:{
                                            color:'#6f27a3'
                                        }
                                    }
                                },
                                data: values_5,
                                smooth: true
                            }
                        ],

                        emphasis: {
                            itemStyle: {
                                shadowBlur: 20,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    });

                }

            },
            error : function(errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart.hideLoading();
            }
        })

    })
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


    //myChart.setOption(option);

</script>

</body>
</html>