<%-- 
    Document   : showEmployees
    Created on : Jan 19, 2017, 3:15:41 PM
    Author     : Rolandas
--%>

<%@page import="objects.Person"%>
<%@page import="beans.PersonBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Show Employees</title>
    </head>
    <body>
        <!-- Including the navigation bar -->   
        <jsp:include page="adminNavigationBar.jsp"/>
        <div class="container">
            <h3 class="text-center">Employees</h3>      
            <!-- Table is responsive, on smaller screens it will look alright.-->
            <div class="table-responsive">
                <table id="sortTable" class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Phone number</th>
                            <th>Email</th>   
                            <th>Privilege</th> 
                            <th>Remove</th>
                        </tr> 
                    </thead>
                    <tbody>
                        <%
                            PersonBean pb = new PersonBean();
                            for (Object obj : pb.getPersonList()) {
                                Person p = (Person) obj;
                        %>
                        <tr>
                            <td><%= p.getId() %> </td>
                            <td><%= p.getFirstname() %></td>
                            <td><%= p.getLastname() %></td>
                            <td><%= p.getPhone() %></td>
                            <td><%= p.getEmail() %></td>
                            <td><%= p.getPrivilege() %></td>
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
                                                <form action="ShowEmployeesServlet" method="get"> 
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="submit" name="button" class="btn btn-primary" value=<%= p.getId() %>>Yes</button>
                                                </form> 
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </td>
                        </tr>
                        <% } %>
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
