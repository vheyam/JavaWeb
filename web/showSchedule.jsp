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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            accesskey=""   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
       
            <!-- Including the date picker jsp-->
            <jsp:include page="datePicker.jsp"/>
            
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
    </body>
</html>
