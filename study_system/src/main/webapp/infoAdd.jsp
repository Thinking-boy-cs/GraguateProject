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
<body style="background-color: #8EC5FC;
      background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 50%, #f344ed 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">

<center>
    <div style="background: #f568ec;height: 850px; width: 700px;border-radius:25px;margin-top: 30px;">
<%--<form action="${pageContext.request.contextPath}/user/insert" method="post">--%>
<%--    姓名：<input type="text" name="name" /> <br>--%>
<%--    年龄：<input type="text" name="age" /> <br>--%>
<%--    工资：<input type="text" name="salary" /> <br>--%>
<%--    <input type="submit" value="保存">--%>
<%--</form>--%>

<br><br><br>

<form id="infoForm">
    标题：<input type="text" name="title" id="title"/> <br><br>
    内容：<br><textarea name="info" id="info" style="height: 500px;width: 400px"></textarea> <br><br>
    <input type="button" value="确认" id="btn" style="background: #f349f0;border-radius:25px;height: 30px;width: 60px">
</form>
    </div>
</center>
<%--引入公共页面，js--%>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $("#btn").click(function () {
        <%--//json对象(失败)--%>
        <%--$.post("${pageContext.request.contextPath}/user/insert",--%>
        <%--    {"name":$("#userName"),"age":$("#userAge"),"salary":$("#userSalary")},function (data) {--%>
        <%--        --%>
        <%--})--%>

        //form序列化(成功)
        $.post("${pageContext.request.contextPath}/infoCast/add",
            $("#infoForm").serialize(),
            function (data) {
                if(data){
                    window.location.href = "${pageContext.request.contextPath}/view/infoFind";
                }
            }
        )
    })

</script>
</body>
</html>