<%-- 
    Document   : logoutprocess
    Created on : 10-Jan-2017, 21:21:39
    Author     : AbuIlyas
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
        <title>Logout</title>
    </head>
    <body>
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
                        <li><a href="newPatient.jsp">New Patient</a></li>
                        <li><a href="showPatients.jsp">Show Patients</a></li>  
                    </ul>
                    
                    <!-- Right items -->
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.jsp">Login</a></li>
                        <li class="active"><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <%
                session.invalidate();
            %>
            <h1>You are sucessfully logged out...</h1>
            <a href="index.jsp">Go back to home page</a>
        </div>

    </body>
</html>
