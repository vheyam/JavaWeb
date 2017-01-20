<%-- 
    Document   : logoutprocess
    Created on : 10-Jan-2017, 21:21:39
    Author     : AbuIlyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="refresh" content="2;index.jsp" />   
        <title>Logout</title>   
    </head>
    <body>
        <!-- Including the navigation bar -->   
        <jsp:include page="nurseNavigationBar.jsp"/>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        
        <div class="container">
            <%
                session.invalidate();
            %>
            <h1>You are sucessfully logged out...</h1>
            <h3>Redirected in 2 seconds</h3>
        </div>

    </body>
</html>
