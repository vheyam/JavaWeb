<%-- 
    Document   : showPatients
    Created on : Jan 9, 2017, 11:41:12 PM
    Author     : Rolandas
--%>

<%@page import="objects.Patient"%>
<%@page import="beans.PatientBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Show Patients</title>
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
            <h3 class="text-center">Patients</h3>      
            <!-- Table is responsive, on smaller screens it will look alright.-->
            <div class="table-responsive">
                <table id="sortTable" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th>First name</th>
                            <th>Last name</th>
                            <th>Birth date</th>   
                            <th>Phone number</th> 
                            <th>Email</th> 
                            <th>Symptoms</th>
                            <th>Bloodgroup</th>
                            <th>Weight</th>
                            <th>Height</th>
                            <th>Matter</th> 
                            <th>Remove</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <%
                            PatientBean pb = new PatientBean();
                            for (Object obj : pb.getPatientList()) {
                                Patient p = (Patient) obj;
                        %>
                        <tr>
                            <td><%= p.getFirstname() %></td>
                            <td><%= p.getLastname() %></td>
                            <td><%= p.getBirthdate() %></td>
                            <td><%= p.getPhone() %></td>
                            <td><%= p.getEmail() %></td>
                            <td><%= p.getSymptoms() %></td>
                            <td><%= p.getBloodgroup() %></td>
                            <td><%= p.getWeight() %></td>
                            <td><%= p.getHeight() %></td>
                            <td><%= p.getMatter() %></td>
                            <td> 
                                <!-- Trigger the modal with a button -->
                                <button type="submit" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </button>      
                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">Remove patient</h4>
                                            </div>
                                            <div class="modal-body">
                                                Are you sure you want to remove this patient ?
                                            </div>
                                            <div class="modal-footer">
                                                <!-- Call servlet -->
                                                <form action="ShowPatientsServlet" method="get"> 
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="submit" name="button" class="btn btn-primary" value=<%= p.getId() %>>Yes</button>
                                                </form> 
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </td>
                        </tr>
                        <%  } %>
                    </tbody>
                </table>
            </div>                    
            <!-- Pops alert if delete went wrong-->
            <%
            if (request.getAttribute("errorDelete") != null) {
                %>
                <div class="alert alert-warning alert-dismissable fade in">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Warning!</strong> Error while deleting patient.
                </div>
                <%
            }
            %>               
        </div>
        <link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="scripts/sortingTable.js"></script>
    </body>
</html>
