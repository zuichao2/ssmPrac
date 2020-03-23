<%--
  Created by IntelliJ IDEA.
  User: southwind
  Date: 2019-09-10
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table width="300">
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>年龄</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.age}</td>
                <td>
                    <a href="/deleteById?id=${user.id}">删除</a>
                    <a href="/findById?id=${user.id}">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
