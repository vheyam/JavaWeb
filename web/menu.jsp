<%-- 
    Document   : menu
    Created on : Jan 9, 2017, 11:40:08 PM
    Author     : Rolandas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        
        <form action="MenuServlet" method="get">
            <input type="submit" name="button" value="New patient"><br><br>
            <input type="submit" name="button" value="Show patients"><br><br>
        </form>
    </body>
</html>
