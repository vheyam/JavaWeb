<%-- 
    Document   : menu
    Created on : Jan 9, 2017, 11:40:08 PM
    Author     : Rolandas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        
        <!-- Including the navigation bar -->   
        <jsp:include page="nurseNavigationBar.jsp"/>
        
        <div class="container">
            <h1>This is menu / home</h1>
        </div>
        
        
    </body>
</html>
