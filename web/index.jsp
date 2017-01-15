<%-- 
    Document   : index
    Created on : Jan 9, 2017, 11:39:35 PM
    Author     : Rolandas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="LoginServlet" method="get">
            <h1>Enter your credentials</h1>
            Username: <input type="text" name="username"><br>
            Password: <input type="password" name="password"><br>
            <input type="submit" name="button" value="login">
        </form>
        <form method="link" action="logoutprocess.jsp"><br><br><br><br>
        <input type="submit" value="Logout" align="right">
        
        <%
           if (null != request.getAttribute("errorMessage")) {
               out.println(request.getAttribute("errorMessage"));
           } 
        %>
    </body>
</html>
