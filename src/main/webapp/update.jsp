<%--
  Created by IntelliJ IDEA.
  User: southwind
  Date: 2019-09-10
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/update" method="post">
        编号：<input type="text" name="id" value="${user.id}" readonly/><br/>
        用户名：<input type="text" name="username" value="${user.username}"/><br/>
        密码：<input type="password" name="password" value="${user.password}"/><br/>
        年龄：<input type="text" name="age" value="${user.age}"/><br/>
        <input type="submit" value="修改"/>
    </form>
</body>
</html>
