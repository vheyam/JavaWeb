<%-- 
    Document   : newPatient
    Created on : Jan 9, 2017, 11:40:37 PM
    Author     : Rolandas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            accesskey=""   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Patient</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                
                <!-- Logo -->
                <div class="navbar-header">
                    <!-- Toggle button if screen size gets to small -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                    <a href="#" class="navbar-brand">PRS</a>
                </div>
                
                <!-- Menu items -->
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="newPatient.jsp">New Patient</a></li>
                        <li><a href="showPatients.jsp">Show Patients</a></li>  
                    </ul>
                    
                    <!-- Right items -->
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <h1>new patient</h1>
            
            <form action="NewPatientServlet" method="get">
                <input type="submit" name="button" value="Back"><br><br>
            </form>
        </div>

    </body>
</html>
