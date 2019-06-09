<%--
  Created by IntelliJ IDEA.
  User: 10369
  Date: 2019/6/2
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改客户信息</title>
</head>
<body>
<div style="width:600px;margin:20px auto;text-align: center">
    <h1>修改客户信息</h1>
    <form action="" method="post">
        <label>客户ID：</label><input type="text" id="id" name="id" value="${custom.id}"/> <br/>
        <label>客户名：</label><input type="text" id="name" name="name" value="${custom.name}"/> <br/>
        <label>密码：</label><input type="password" id="password" name="password" value="${custom.password}"/>  <br/>
        <label>电话：</label><input type="text" id="mobile" name="mobile" value="${custom.mobile}"/>  <br/>
        <label>邮箱：</label><input type="text" id="email" name="email" value="${custom.email}"/> <br/><br>
        <button id="submitBtn">提交</button>
        <input type="reset" value="重置" onclick="resetBtn()">
        <a href="${pageContext.request.contextPath}/queryAction.htm">返回</a>

    </form>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script>
   /* function resetBtn() {
        var id = document.getElementById(id).value("");
        var id = document.getElementById(id).value("");
        var id = document.getElementById(id).value("");
        var id = document.getElementById(id).value("");
        var id = document.getElementById(id).value("");
    }*/
    $("#submitBtn").click(function () {
        var id = $("#id");
        var name = $("#name");
        var password = $("#password");
        var mobile = $("#mobile");
        var email = $("#email");

        alert(id.val());
        $.ajax({
            type:"POST",
            data:{
                "id":id.val(),
                "name":name.val(),
                "password":password.val(),
                "mobile":mobile.val(),
                "email":email.val(),
            },
            url:"${pageContext.request.contextPath}/doUpdate.do",
            success:function (data) {
                    alert(data.successful)
                    window.location.href="${pageContext.request.contextPath}/queryAction.htm"

            }
        });
    })
</script>

</html>
