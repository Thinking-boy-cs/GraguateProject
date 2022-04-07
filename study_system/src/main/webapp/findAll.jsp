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


<div id="userDiv" >
    <div id="userData" style="display: none">
        <span>#ID#</span> <span>#TELNUMBER#</span><span>#MAIL#</span><span>#ID#</span>
        <a href="${pageContext.request.contextPath}/user/findById?id=#ID#">修改</a>
        <a href="${pageContext.request.contextPath}/user/delete?id=#ID#">删除</a>
        <br>
    </div>
</div>
<a href="${pageContext.request.contextPath}/view/insert">添加</a>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/user/findUserAll',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#userDiv").append($("#userData").html()
                            .replace("#ID#",data[i].id)
                            .replace("#TELNUMBER#", data[i].telNumber)
                            .replace("#MAIL#", data[i].mail)
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