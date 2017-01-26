<%-- 
    Document   : schedule
    Created on : Jan 16, 2017, 3:27:02 PM
    Author     : Rolandas
--%>

<%@page import="objects.Schedule"%>
<%@page import="beans.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
        <title>Schedule</title>
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
            <h3 class="text-center">Schedule</h3>
            
            <!-- date picker -->
            <style>
                .bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p,
                .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button,
                .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}
            </style>
            <div class="bootstrap-iso">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <form action="ShowScheduleServlet" method="get">
                                <div class="form-group ">
                                    <label class="control-label " for="date">
                                        Choose Date
                                    </label>
                                    <input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text" autocomplete="off" required/>
                                </div>
                                <input type="submit" name="button" value="submit" class="btn btn-primary">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Schedule / table -->
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>8-9</th>
                            <th>9-10</th>
                            <th>10-11</th>
                            <th>11-12</th>
                            <th>13-14</th>
                            <th>14-15</th>
                        </tr>
                    </thead>
                    <tbody>  
                        <tr>
                            <td><%= request.getAttribute("date") %></td>
                            <td><%= request.getAttribute("eightToNine") %></a></td>
                            <td><%= request.getAttribute("nineToTen") %></a></td>
                            <td><%= request.getAttribute("tenToEleven") %></a></td>
                            <td><%= request.getAttribute("elevenToTwelve") %></a></td>
                            <td><%= request.getAttribute("thirteenToFourteen") %></a></td>
                            <td><%= request.getAttribute("fourteenToFifteen") %></a></td>
                        </tr>
                    </tbody>
                </table>
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
