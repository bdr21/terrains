<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20/04/2022
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addUser.jsp" method="POST">
    <input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>
    <input type="text" name="uemail"  value="Email ID..." onclick="this.value=''"/><br/>
    <input type="password" name="upass"  value="Password..." onclick="this.value=''"/><br/>
    <input type="submit" value="register"/>
</form>
</body>
</html>
