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


<%--基于统计的推荐算法--%>
<div id="recommendCountDiv" >
    <div id="recommendCountData" style="display: none">
        <span>#ID#</span> <span>#NAME#</span><span>#USERNAME#</span><span>#TYPE#</span><span>#TIME#</span>
        <a href="${pageContext.request.contextPath}/file/#NAME2#">下载</a>
        <br>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/recommend/findCertainResource',
        data:'',
        dataType:'json',
        success: function(data_1) {
            console.log("成功===",data_1);
            if(data_1.length>0){
                for(var i = 0,l=data_1.length;i<l;i++){
                    $("#recommendCountDiv").append($("#recommendCountData").html()
                        .replace("#ID#",data_1[i].id)
                        .replace("#ID2#",data_1[i].id)
                        .replace("#NAME#", data_1[i].name)
                        .replace("#NAME2#", data_1[i].name)
                        .replace("#TIME#", data_1[i].time)
                        .replace("#USERNAME#", data_1[i].userName)
                        .replace("#TYPE#", data_1[i].type)
                    )
                }
            }
        },
        error: function(data_1){
            console.log("请求失败！！！");
        }
    })
</script>

</body>
</html>