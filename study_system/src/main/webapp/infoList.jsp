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

<%--&lt;%&ndash;精确作用域查找&ndash;%&gt;--%>
<%--<c:forEach items="${requestScope.userList}" var="user">--%>
<%--    ID: ${user.id} Name: ${user.name} Age: ${user.age} Salary: ${user.salary}--%>
<%--    <a href="${pageContext.request.contextPath}/user/findById?id=${user.id}">修改</a>--%>
<%--    <a href="${pageContext.request.contextPath}/user/delete?id=${user.id}">删除</a>--%>
<%--    <br>--%>
<%--</c:forEach>--%>
<%--<a href="${pageContext.request.contextPath}/insertUser.jsp">添加</a>--%>


<div id="infoDiv" >
    <div id="infoData" style="display: none">
        <span>#ID#</span> <span>#NAME#</span><span>#INFO#</span><span>#TIME#</span><span>#TITEL#</span>
        <a href="${pageContext.request.contextPath}/infoCast/delete?id=#ID3#">删除</a>
        <br>
    </div>
</div>
<a href="${pageContext.request.contextPath}/view/infoAdd">添加</a>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/infoCast/findInfoAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#infoDiv").append($("#infoData").html()
                            .replace("#ID#",data[i].id)
                            .replace("#ID2#",data[i].id)
                            .replace("#ID3#",data[i].id)
                            .replace("#NAME#", data[i].name)
                            .replace("#INFO#", data[i].info)
                            .replace("#TIME#", data[i].time)
                            .replace("#TITEL#", data[i].title)
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