<%-- 
    Document   : loginResult
    Created on : Feb 23, 2019, 4:19:30 PM
    Author     : praka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        boolean loginStat = (boolean) request.getAttribute("status");
        if(!loginStat) {
        %>
        <div style="color:red">Login Fail!</div>
        <%
        } else {
        %>
        <div style="color:green">Login Success!</div>
        Username: <%= request.getParameter("user") %>
        <br>
        Password: <%= request.getParameter("pass") %>
        <%
        }
        %>
    </body>
</html>
