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
    <style>
        table{
            /*设置表格的宽度*/
            width: 800px;
            height: 70px;
            /*设置居中*/
            margin: 0 auto;
            /*设置边框*/
            border: 2px solid black;
            /**
             *     table的td之间默认有一个距离，通过border-spacing属性可以设置这个像素
             */
            /*border-spacing: 0px;*/
            /**
             *     border-collapse可以用来设置表格的边框合并，如果设置了该属性，border-spacing会自动失效
             */
            /*border-collapse: collapse;*/
            background: #8EC5FC;
        }

        /**
         *     伪类nth-child的even参数可以选中偶数行，而odd则可以选中奇数行。
         *
         *     温馨提示:
         *         nth-child属性IE8及以下版本并不支持，若非要达到相同的效果则需要引入JS来搞事情。
         */
        /*tr:nth-child(even){*/
        /*    background-color: yellow;*/
        /*}*/

        /**
         *     当鼠标移入到tr标签后，会改变颜色
         */
        tr:hover{
            background-color: #6a6bff;
        }

        /*为td标签设置样式*/
        td,th{
            /*设置边框*/
            border: 2px solid black;
        }

        /********************/
    </style>
</head>
<body style="background-color: #0093E9;
background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 50%, #3587d6 100%);background-repeat:no-repeat;background-size: 100% 100% ;
    background-attachment: fixed;">

<div id="signDiv" >
    <div id="signData" style="display: none">

        <table>

            <thead>
            <tr>
                <th>文件名</th>
                <th>上传者</th>
                <th>类型</th>
                <th>上传时间</th>
                <th>操作</th>

            </tr>
            </thead>

            <tbody>

            <tr>
                <td style="width: 800px;"><span>#NAME#</span></td>
                <td style="width: 800px"><span>#AUTHOR#</span></td>
                <td style="width: 300px"><span>#TYPE#</span></td>
                <td style="width: 300px"><span>#TIME#</span></td>
                <td style="width: 300px"><a href="${pageContext.request.contextPath}/file/#NAME2#">下载</a></td>
            </tr>

            </tbody>

        </table>

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
        url:'${pageContext.request.contextPath}/file/showFileByType',
        data:'',
        dataType:'json',
        success: function(data) {
            console.log("成功===",data);
            if(data.length>0){
                for(var i = 0,l=data.length;i<l;i++){
                    $("#signDiv").append($("#signData").html()
                        .replace("#ID#",data[i].id)
                        .replace("#ID2#",data[i].id)
                        .replace("#NAME#", data[i].name)
                        .replace("#NAME2#", data[i].name)
                        .replace("#TIME#", data[i].time)
                        .replace("#AUTHOR#", data[i].author)
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