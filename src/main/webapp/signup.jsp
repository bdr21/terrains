<%@ page import="DAO.ClientDao" %>
<%@ page import="DaoImpl.ClientDaoImpl" %>
<%@ page import="models.Client" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 20/04/2022
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ClientDao cdi = new ClientDaoImpl();
    Client c = new Client(request.getParameter("lname"),request.getParameter("fname"),
            request.getParameter("uaddress"),request.getParameter("uemail"),
            request.getParameter("upass"));
    boolean status= cdi.addClient(c);
    if(status)
        System.out.println("You are successfully registered");

%>
<form action="signup.jsp" method="POST">
    <input type="text" name="lname" placeholder="Lasttt Name..." /><br/>
    <input type="text" name="fname" value="First Name..." onclick="this.value=''"/><br/>
    <input type="text" name="uemail"  value="Email ID..." onclick="this.value=''"/><br/>
    <input type="text" name="uaddress"  value="Ur Address..." onclick="this.value=''"/><br/>
    <input type="password" name="upass"  value="Password..." onclick="this.value=''"/><br/>
    <input type="submit" value="register"/>
</form>
</body>
</html>
