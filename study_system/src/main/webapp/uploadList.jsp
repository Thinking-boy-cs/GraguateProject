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



<div id="infoDiv" >
    <div id="infoData" style="display: none">
        <span>#ID#</span> <span>#NAME#</span><span>#USERNAME#</span><span>#TYPE#</span><span>#TIME#</span>
        <a href="${pageContext.request.contextPath}/file/#NAME2#">下载</a>
        <br>
    </div>
</div>
<a href="${pageContext.request.contextPath}/upload.html">添加</a>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/file/findUploadAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#infoDiv").append($("#infoData").html()
                            .replace("#ID#",data[i].id)
                            .replace("#ID2#",data[i].id)
                            .replace("#NAME#", data[i].name)
                            .replace("#NAME2#", data[i].name)
                            .replace("#TIME#", data[i].time)
                            .replace("#USERNAME#", data[i].userName)
                            .replace("#TYPE#", data[i].type)
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