<%@ page import="dao.ClientDao" %>
<%@ page import="dao.impl.ClientDaoImpl" %>
<%@ page import="models.Client" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 22/04/2022
  Time: 00:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:include page="header.jsp"/>

    <%! String name = "Kim" ;
        String oname = "Jong-Un";
        int age = 22;
        String getName() {
          return name;
        };
        int getAge() {
            return age;
        }%>
    <h1><%= getName()%></h1>
    <h2><%= getAge()%></h2>
    <h3></h3>
    <jsp:useBean id="cl1" class="brouillon.Client" />
    <jsp:setProperty name="cl1" property="nom" value="Washington" />
    <jsp:setProperty name="cl1" property="prenom" value="Benjamin" />
    <jsp:setProperty name="cl1" property="email" value="uncle@sam.us" />

    <jsp:useBean id="cl2" class="brouillon.Client" />
    <jsp:setProperty name="cl2" property="nom" value="Americana" />
    <jsp:setProperty name="cl2" property="prenom" value="Johnny" />
    <jsp:setProperty name="cl2" property="email" value="john@sam.us" />

    <jsp:useBean id="cl3" class="brouillon.Client" />
    <jsp:setProperty name="cl3" property="nom" value="Brodie" />
    <jsp:setProperty name="cl3" property="prenom" value="Bully" />
    <jsp:setProperty name="cl3" property="email" value="crazyman@sam.us" />
    <table class="tftable" border="1">
        <tr>
            <th>Name</th>
            <th>Prenom</th>
            <th>Email</th>
        </tr>
<%--        <c:forEach var="i" begin="1" end="3">--%>
<%--            <tr>--%>
<%--                <td><jsp:getProperty name="${'cl'+i}" property="nom"/></td>--%>
<%--                <td><jsp:getProperty name="${'cl'+i}" property="prenom"/></td>--%>
<%--                <td><jsp:getProperty name="${'cl'+i}" property="email"/></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
        <c:forEach var="cl" items="${listdescl}">
        <tr>
            <td><c:out value="${cl.getPrenom()}"/></td>
            <td><c:out value="${cl.getNom()}"/></td>
            <td>cd</td>
        </tr>
        </c:forEach>
    </table>
    <%@include file="footer.jsp"%>
</body>
</html>
