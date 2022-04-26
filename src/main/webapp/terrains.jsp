<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20/04/2022
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%@page import="com.javawebapp.utility.DataUtility"%>--%>
<%--<%@page import="com.javawebapp.beans.UserBeans"%>--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page import="dao.TerrainDao" %>
<%@ page import="dao.impl.TerrainDaoImpl" %>
<%@ page import="models.Terrain" %>
<%--<%@page import="com.javawebapp.utility.ServletUtility"%>--%>
<%--<%@ include file="header.jsp"%>--%>
<br>
<h2>Terrains List</h2>
<br>
<style>
    td,th
    {
        border:1px;
    }
    table
    {
        border-collapse: collapse;
    }

</style>
<%--<h4 style="color: red;"><%=ServletUtility.getErrorMessage(request)%></h4>--%>
<%--<h4 style="color: green;"><%=ServletUtility.getSuccessMessage(request)%></h4>--%>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Login</th>
        <th scope="col">MobileNo</th>
        <th scope="col">Date of Birth</th>
    </tr>
    </thead>
    <tbody>
    <%
        int index=1;
        TerrainDao tdi = new TerrainDaoImpl();
        List list=tdi.getTerrains();
        Iterator it=list.iterator();
        while(it.hasNext()){
            Terrain ter=(Terrain)it.next();
    %>
    <tr>
        <th scope="row"><%=index++%></th>
        <td><%=ter.getLatitude()+" "+ter.getLongitude()%></td>
        <td><%=ter.getRegion()%></td>
        <td><%=ter.getVille()%></td>
    </tr>
    <%} %>
    </tbody>
</table>
<%--<%@ include file="footer.jsp"%>--%>
</body>
</html>
