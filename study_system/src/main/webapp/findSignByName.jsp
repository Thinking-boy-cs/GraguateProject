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

<%--<form id="signForm" action="http://localhost:9999/study_system/sign/showSignByTelNumber" method="post">--%>
<%--    电话号码：<input type="text" name="telNumber" id="telNumber"/> <br>--%>
<%--    <input type="button" value="查询" id="btn">--%>
<%--</form>--%>

<%--<form id="signForm"  method="post">--%>
<%--    电话号码：<input type="text" name="telNumber" id="telNumber"/> <br>--%>
<%--    <input type="button" value="查询" id="btn">--%>
<%--</form>--%>

<%--<a href="${pageContext.request.contextPath}/view/findSignItemByTelNumber">查询（按电话）</a>--%>
<%--<a href="${pageContext.request.contextPath}/view/insert">查询（按时间）</a>--%>
<div id="signDiv" >
    <div id="signData" style="display: none">
        <span>#ID#</span> <span>#TELNUMBER#</span><span>#TEMPERATURE#</span><span>#LOCATION#</span><span>#TIME#</span>
        <br>
    </div>
</div>
<br>
</form>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $("#btn").click(function () {
        <%--//json对象(失败)--%>
        <%--$.post("${pageContext.request.contextPath}/user/insert",--%>
        <%--    {"name":$("#userName"),"age":$("#userAge"),"salary":$("#userSalary")},function (data) {--%>
        <%--        --%>
        <%--})--%>

        //form序列化(成功)
        <%--$.post("${pageContext.request.contextPath}/sign/showSignByName",--%>
        <%--    $("#signForm").serialize(),--%>
        <%--    function (data) {--%>
        <%--        console.log("This data is :"+data.toString())--%>
        <%--        if(data){--%>
        <%--            console.info("The data is it.");--%>
        <%--        }--%>
        <%--    }--%>
        <%--)--%>

        var nameSign = $("#nameSign");
        console.info(nameSign);

        $("#signForm").submit();

    })

</script>

<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/sign/showSignByName',
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

</body>
</html>