<%--
  Created by IntelliJ IDEA.
  User: 10369
  Date: 2019/6/2
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加客户</title>
</head>
<body>
<div style="width:500px;height:400px;margin:20px auto">
    <h1>欢迎添加</h1>
    <form action="" method="post">
        <label>姓名：</label><input type="text" id="fname" name="name"/> <br/>
        <label>密码：</label><input type="password" id="fpassword" name="password"/>  <br/>
        <label>电话：</label><input type="text" id="fphone" name="phone"/>  <br/>
        <label>邮箱：</label><input type="text" id="femail" name="email"/> <br/>
        <button id="addBtn">添加</button> <a href="${pageContext.request.contextPath}/queryAction.htm">返回</a>
    </form>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script>

    //alert(name.val());

    $("#addBtn").click(function () {
        var name = $("#fname");
        var password = $("#fpassword");
        var mobile = $("#fphone");
        var email = $("#femail");
        alert(name.val());
        $.ajax({
            type:"POST",
            data:{
                "name":name.val(),
                "password":password.val(),
                "mobile":mobile.val(),
                "email":email.val()
            },
            url:"${pageContext.request.contextPath}/doAdd.do",
            success:function (data) {
                    alert(data.successful);
                    window.location.href="${pageContext.request.contextPath}/queryAction" ;

            },
            error:function () {
                alert("添加失败!")
            },
            dataType:"json"
        });
    });
    



</script>
<script>
  $("#back").click(function () {
      window.location.href="${pageContext.request.contextPath}/queryAction.htm"
  })

</script>

</body>
</html>
