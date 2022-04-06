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

<form action="${pageContext.request.contextPath}/user/updateUser" method="post">
    Id: <input type="text" name="id" readonly value="${requestScope.findUser.id}"> <br>
    name: <input type="text" name="name" value="${requestScope.findUser.name}"> <br>
    age: <input type="text" name="age" value="${requestScope.findUser.age}"> <br>
    salary: <input type="text" name="salary" value="${requestScope.findUser.salary}"> <br>
    <input type="submit" value="保存">
</form>


</body>
</html>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    // request获取参数
    <%String id = request.getParameter("id");%>
    var id = '<%=id%>';
    <%--$.get("${pageContext.request.contextPath}/user/findById?id=" + id, function(data) {--%>
    <%--    console.log(data);--%>
    <%--});--%>
    // jstl获取参数
    $.get("${pageContext.request.contextPath}/user/findById2?id=${param.id}", function(data) {
        console.log("here"+data);
        //赋值
        $("input[name='id']").val(data.id);
        $("input[name='name']").val(data.name);
        $("input[name='age']").val(data.age);
        $("input[name='salary']").val(data.salary);
    });

</script>