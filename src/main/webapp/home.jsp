<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/04/2022
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <c:if test="${ empty sessionScope.email}">
       <c:redirect url="/login.jsp"/>
   </c:if>

   <c:choose>
       <c:when test="${empty sessionScope.email}">
           <c:redirect url="/login.jsp"/>
       </c:when>
       <c:otherwise>
           <h1>HOOOOOOOOOOME</h1>
       </c:otherwise>
   </c:choose>


</body>
</html>
