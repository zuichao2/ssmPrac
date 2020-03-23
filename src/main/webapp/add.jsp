<%--
  Created by IntelliJ IDEA.
  User: southwind
  Date: 2019-09-10
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/add" method="post">
        用户名：<input type="text" name="username"/><br/>
        密码：<input type="text" name="password"/><br/>
        年龄：<input type="text" name="age"/><br/>
        <input type="submit" value="注册"/>
    </form>
</body>
</html>
