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
</head>
<body>

<div id="signDiv" >
    <div id="signData" style="display: none">
        <span>#ID#</span> <span>#TELNUMBER#</span><span>#TEMPERATURE#</span><span>#LOCATION#</span><span>#TIME#</span>
        <br>
    </div>
</div>
<a href="${pageContext.request.contextPath}/view/checkSign">今日打卡</a>


</body>
</html>

<script src="/study_system/js/vue.js"></script>
<script src="/study_system/js/axios.min.js"></script>
<script src="/study_system/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/sign/showSelf?telNumber=${thisUser.telNumber}',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#signDiv").append($("#signData").html()
                        .replace("#ID#",data[i].id)
                        .replace("#ID2#",data[i].id)
                        .replace("#ID3#",data[i].id)
                        .replace("#TELNUMBER#", data[i].telNumber)
                        .replace("#TEMPERATURE#", data[i].temperature)
                        .replace("#LOCATION#", data[i].location)
                        .replace("#TIME#", data[i].time)
                    )
                }
            }
        },
        error: function(data){
            console.log("请求失败！！！");
        }
    })
</script>


</script>