<%--
  Created by IntelliJ IDEA.
  User: 10369
  Date: 2019/6/2
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户注册</title>
</head>
<body>
<div style="width:300px;height:300px;margin:100px auto">
    <h1>客户注册</h1>
    <form action="" method="post">
        <label name="name">姓名：</label><input type="text" id="fname" name="name"/> <br/>
        <label name="password">密码：</label><input type="password" id="fpassword" name="password"/> <br/>
        <button id="register">注册</button><a href="${pageContext.request.contextPath}/login.htm">返回</a>
    </form>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script>
    $(function () {
        $("#register").click(function () {
            var name = $("#fname");
            var password = $("#fpassword")
            alert(name.val());

            $.ajax({
                type:"POST",
                data:{
                    "name":name.val(),
                    "password":password.val()
                },
                url:"${pageContext.request.contextPath}/doRegister.do",
                success:function (data) {
                    alert(data.successful)
                    window.location.href= " ${pageContext.request.contextPath}/login.htm "

                },
                error:function () {
                    alert("注册失败!")
                },
                dataType:"json"

            })

        });
    })


</script>

</html>
