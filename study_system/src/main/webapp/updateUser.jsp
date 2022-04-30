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
<body background="../pic/update_u_bg.png" style="background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">
<center>
<div style="background: #fdcefa;height: 650px; width: 700px;border-radius:25px;margin-top: 30px;">
<form action="${pageContext.request.contextPath}/user/updateUser_u" method="post">
    <br><br>
    标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;识: &nbsp;&nbsp;<input type="text" name="id" readonly value="${requestScope.findUser.id}"> <br><br>
    电话号码: &nbsp;&nbsp;<input type="text" name="telNumber" readonly value="${requestScope.findUser.telNumber}" style="height: 25px"> <br><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码: &nbsp;&nbsp;<input type="text" name="passWord" readonly value="${requestScope.findUser.passWord}" style="height: 25px"> <br><br>
    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名: &nbsp;&nbsp;<input type="text" name="name"  value="${requestScope.findUser.name}" style="height: 25px"> <br><br>
    邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱: &nbsp;&nbsp;<input type="text" name="mail"  value="${requestScope.findUser.mail}" style="height: 25px"> <br><br>
    性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别: &nbsp;&nbsp;<input type="text" name="sex"  value="${requestScope.findUser.sex}" style="height: 25px"> <br><br>
    年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄: &nbsp;&nbsp;<input type="text" name="age"  value="${requestScope.findUser.age}" style="height: 25px"> <br><br>
    学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号: &nbsp;&nbsp;<input type="text" name="idCard" readonly value="${requestScope.findUser.idCard}" style="height: 25px"> <br><br>
    政治面貌: &nbsp;&nbsp;<input type="text" name="political" readonly value="${requestScope.findUser.political}" style="height: 25px"> <br><br>
    学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院: &nbsp;&nbsp;<input type="text" name="college" readonly value="${requestScope.findUser.college}" style="height: 25px"> <br><br>
    学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历: &nbsp;&nbsp;<input type="text" name="degree" readonly value="${requestScope.findUser.degree}" style="height: 25px"> <br><br>
    <input type="submit" value="保存" style="background: #fdcefa;border-radius:25px;height: 30px;width: 60px">
</form>
</div>
</center>
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
    });

</script>