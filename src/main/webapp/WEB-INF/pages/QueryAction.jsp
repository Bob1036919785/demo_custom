<%--
  Created by IntelliJ IDEA.
  User: 10369
  Date: 2019/6/2
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>客户信息</title>
</head>
<body>
<div style="width:600px;margin:20px auto;text-align:center">
    <h1>客户信息</h1>
    <table border="1" width="600" id="custom">
      <%--  <tr>
            <th>客户ID</th>
            <th>客户名</th>
            <th>客户电话</th>
            <th>客户邮箱</th>
            <th>是否删除</th>
            <th>是否修改</th>
        </tr>--%>
       <%-- <tr >
           <c:forEach items="${datas}" var="data">
               <td>${data.id}</td>
               <td>${data.name}</td>
               <td>${data.mobile}</td>
               <td>${data.email}</td>
               <td><a href="#1">删除</a></td>
               <td><a href="update.html">更新</a></td>
           </c:forEach>
        </tr>--%>
    </table>
    <a href="${pageContext.request.contextPath}/add.htm" style="line-height:100px">添加客户</a>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>

<script>


    $(function () {
        //alert("helo")
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/doQueryAction.do",
            success:function (data) {

                  //alert(data) ;
                  var content = "" ;
                  content+=' <tr>\n' +
                      '            <th>客户ID</th>\n' +
                      '            <th>客户名</th>\n' +
                      '            <th>客户电话</th>\n' +
                      '            <th>客户邮箱</th>\n' +
                      '            <th>是否删除</th>\n' +
                      '            <th>是否修改</th>\n' +
                      '        </tr>'
                  $.each(data,function (i,n) {
                      content+='<tr>' ;
                      content+=' <td>'+n.id+'</td> ' ;
                      content+=' <td>'+n.name+'</td> ' ;
                      content+=' <td>'+n.mobile+'</td> ' ;
                      content+=' <td>'+n.email+'</td> ' ;
                      content+=' <td><button  onclick="deleteCustomByID('+n.id+')">删除</button></td> ' ;
                      content+=' <td><button onclick="updateCustom('+n.id+')">更新</button></td> ' ;
                      content+='</tr>' ;
                  });

                  $("#custom").html(content);
              }

        })
    })

    function deleteCustomByID(id) {
        window.location.href = "${pageContext.request.contextPath}/deleteCustomById.do?id="+id;
    }
    function updateCustom(id) {
        window.location.href = "${pageContext.request.contextPath}/updateCustom.do?id="+id;
    }

</script>
</body>
</html>
