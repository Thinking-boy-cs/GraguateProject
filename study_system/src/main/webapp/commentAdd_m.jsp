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
<br><br><br><br>
<center>
    <div style="background: #f568ec;height: 300px; width: 500px;border-radius:25px;margin-top: 30px;">

<br><br><br><br>

<form id="communityForm">
    评论：<input type="text" name="commentInfo" id="commentInfo"/> <br><br>
    <input type="button" value="提交" id="btn" style="background: #f349f0;border-radius:25px;height: 30px;width: 60px">
</form>
    </div>
</center>
<%--引入公共页面，js--%>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
    $("#btn").click(function () {

        //form序列化(成功)
        $.post("${pageContext.request.contextPath}/community/commentAdd_m",
            $("#communityForm").serialize(),
            function (data) {
                if(data){
                    window.location.href = "${pageContext.request.contextPath}/view/community_m";
                }
            }
        )
    })

</script>
</body>
</html>