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
<body>



<%--<div id="a_sex" style="width: 600px;height: 600px;"></div>--%>
<div id="a_college" style="width: 600px;height: 600px;"></div>
<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script crossorigin="anonymous" integrity="sha512-avZBaO59S3QHZ7OtZ6pWKQHrBLZ1rax/eUQq03uLqQ85tu8ZjEM0Y37RsiF1Me3EWjYUlaHHtnAYBJM/9PUK7w==" src="https://lib.baomitu.com/echarts/5.1.2/echarts.common.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    <%--$.ajax({--%>
    <%--    type:'get',--%>
    <%--    url:'${pageContext.request.contextPath}/user/findUserAll',--%>
    <%--    data:'',--%>
    <%--    dataType:'json',--%>
    <%--    success: function(data) {--%>
    <%--        console.log("成功===",data);--%>
    <%--        if(data.length>0){--%>
    <%--            for(var i = 0,l=data.length;i<l;i++){--%>
    <%--                $("#userDiv").append($("#userData").html()--%>
    <%--                    .replace("#ID#",data[i].id)--%>
    <%--                    .replace("#NAME#", data[i].name)--%>
    <%--                    .replace("#AGE#", data[i].age)--%>
    <%--                    .replace("#SALARY#", data[i].salary)--%>
    <%--                    .replace("#ID#", data[i].id)--%>
    <%--                    .replace("#ID#", data[i].id)--%>
    <%--                )--%>
    <%--            }--%>
    <%--        }--%>
    <%--    },--%>
    <%--    error: function(data){--%>
    <%--        console.log("请求失败！！！");--%>
    <%--    }--%>
    <%--})--%>

    //2.Artificial show
//    var myChart = echarts.init(document.getElementById("main"));
//    var option = {
//        title:{
//            text:'echarts入门示例'
//        },
//        tooltip:{
//
//        },
//        legend:{
//            data:['销量']
//        },
//        xAxis:{
//            data:["裤子","鞋子","衣服","帽子"]
//        },
//        yAxis:{
//
//        },
//        series:[
//            {
//                name:'销量',
//                type:'bar',
//                data:[123,232,342,454]
//            },
//        ]
//    };
//    myChart.setOption(option);


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

    //myChart.setOption(option);

</script>

</body>
</html>