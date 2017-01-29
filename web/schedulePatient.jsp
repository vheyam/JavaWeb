<%-- 
    Document   : schedulePatient
    Created on : Jan 16, 2017, 8:11:06 PM
    Author     : Rolandas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="beans.ScheduleBean"%>
<%@page import="objects.Patient"%>
<%@page import="beans.PatientBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
        
        <title>Schedule Patients</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <!-- Including the navigation bar -->   
        <jsp:include page="nurseNavigationBar.jsp"/>
        
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <!-- date picker -->
                    <style>
                        .bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p,
                        .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button,
                        .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}
                    </style>
                    <div class="bootstrap-iso">
                        <div class="container-fluid">
                            <div>
                                <h4 class="text-center">Choose date</h4>
                                <form action="ScheduleNewPatientServlet" method="get">
                                    <div class="form-group ">
                                        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text" autocomplete="off"/>
                                    </div>
                                    <input type="submit" name="button" value="submit" class="btn btn-primary">
                                </form>
                            </div>
                        </div>
                    </div> 
                    <br>
                    <%
                        if (null != request.getAttribute("message")) {            
                    %>
                    <div class="alert alert-info alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Info!</strong> <%= request.getAttribute("message") %>
                    </div>
                    <%  } 
                        if (null != request.getAttribute("errorMessage")) {            
                    %>
                    <div class="alert alert-warning alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Warning!</strong> <%= request.getAttribute("errorMessage") %>
                    </div>
                    <%  } %>
                </div>  
                
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong>Guide</strong></div>
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item">Select the date you wish to schedule a patient.</li>
                                <li class="list-group-item">Patient will be scheduled in available slot if there are any.</li>
                                <li class="list-group-item">If something else happened an alert will pop up notifying about the issue.</li>
                            </ul>                         
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- Include jQuery -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        
        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        
        <script src="scripts/datePicker.js"></script>    
    </body>
</html>
