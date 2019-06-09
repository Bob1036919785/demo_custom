<%--
  Created by IntelliJ IDEA.
  User: 10369
  Date: 2019/6/2
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户登录</title>
</head>
<body>
<div style="width:300px;height:300px;margin:100px auto">
    <h1>客户登录</h1>
    <form action="${pageContext.request.contextPath}/doLogin.do" method="post">
        姓名：</label><input type="text"  name="name"/> <br/>
        密码：</label><input type="password"  name="password"/> <br/>
        <input type="submit" value="登录">
        <a href="${pageContext.request.contextPath}/register.htm">如还未注册，请先注册</a>
    </form>
</div>
</body>
</html>
