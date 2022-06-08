<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20/04/2022
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${empty currentUser}">
    <c:redirect url="authentification.jsp"></c:redirect>
</c:if>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action = "addTerrain.jsp" method = "POST">
        First Name: <input type = "text" name = "first_name">
        <br />
        Last Name: <input type = "text" name = "last_name" />
        <input type = "submit" value = "Submit" />
    </form>
</body>
</html>
