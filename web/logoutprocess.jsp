<%-- 
    Document   : logoutprocess
    Created on : 10-Jan-2017, 21:21:39
    Author     : AbuIlyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRS</title>
    </head>
    <body>
        
        
        <%
            session.invalidate();
        %>
        <h1>You are sucessfully logged out...</h1>
        <a href="index.jsp">Go back to home page</a>
    </body>
</html>
        
        
        
    </body>
</html>
