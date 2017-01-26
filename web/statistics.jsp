<%-- 
    Document   : statistics
    Created on : Jan 19, 2017, 3:15:51 PM
    Author     : Rolandas
--%>

<%@page import="objects.StatisticsCountPatients"%>
<%@page import="beans.StatisticsBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
              integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
        <title>Statistics</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        
        <!-- Including the navigation bar -->   
        <jsp:include page="adminNavigationBar.jsp"/>
        
        <div class="container">
            <h3 class="text-center">New patients each month</h3>
            <!-- Table is responsive, on smaller screens it will look alright.-->
            <div class="table-responsive">
                <table class="table table-hover ">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Year</th>
                            <th>January</th>
                            <th>February</th>
                            <th>March</th>
                            <th>April</th>
                            <th>May</th>
                            <th>June</th>
                            <th>July</th>
                            <th>August</th>
                            <th>September</th>
                            <th>October</th>
                            <th>November</th>
                            <th>December</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            StatisticsBean sb = new StatisticsBean();
                            for(Object obj : sb.getCountPatients()) {
                                StatisticsCountPatients s = (StatisticsCountPatients) obj;
                        %>
                        <tr>
                            <td><%= s.getDate() %></td>
                            <td><%= s.getJanuary() %></td>
                            <td><%= s.getFebruary() %></td>
                            <td><%= s.getMarch() %></td>
                            <td><%= s.getApril() %></td>
                            <td><%= s.getMay() %></td>
                            <td><%= s.getJune() %></td>
                            <td><%= s.getJuly() %></td>
                            <td><%= s.getAugust() %></td>
                            <td><%= s.getSeptember() %></td>
                            <td><%= s.getOctober() %></td>
                            <td><%= s.getNovember() %></td>
                            <td><%= s.getDecember() %></td>
                        </tr>
                        <%  } %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
