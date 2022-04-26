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

<form action="${pageContext.request.contextPath}/user/updateUser_m" method="post">
    id: <input type="text" name="id" readonly value="${requestScope.findUser.id}"> <br>
    电话号码: <input type="text" name="telNumber" readonly value="${requestScope.findUser.telNumber}"> <br>
    密码: <input type="text" name="passWord" readonly value="${requestScope.findUser.passWord}"> <br>
    姓名: <input type="text" name="name"  value="${requestScope.findUser.name}"> <br>
    邮箱: <input type="text" name="mail"  value="${requestScope.findUser.mail}"> <br>
    性别: <input type="text" name="sex"  value="${requestScope.findUser.sex}"> <br>
    年龄: <input type="text" name="age"  value="${requestScope.findUser.age}"> <br>
    学号: <input type="text" name="idCard"  value="${requestScope.findUser.idCard}"> <br>
    政治面貌: <input type="text" name="political"  value="${requestScope.findUser.political}"> <br>
    学院: <input type="text" name="college"  value="${requestScope.findUser.college}"> <br>
    学历: <input type="text" name="degree"  value="${requestScope.findUser.degree}"> <br>
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
        $("input[name='telNumber']").val(data.telNumber);
        $("input[name='passWord']").val(data.passWord);
        $("input[name='name']").val(data.name);
        $("input[name='mail']").val(data.mail);
        $("input[name='sex']").val(data.sex);
        $("input[name='age']").val(data.age);
        $("input[name='idCard']").val(data.idCard);
        $("input[name='political']").val(data.political);
        $("input[name='college']").val(data.college);
        $("input[name='degree']").val(data.degree);
    });

</script>