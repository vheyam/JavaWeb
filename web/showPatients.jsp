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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            accesskey=""   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Patients</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
    <!-- Including the navigation bar -->    
    <jsp:include page="navBar.jsp"/>
                   
        <div class="container">
            <h3 class="text-center">Patients</h3>      
            
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
            <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css" rel="stylesheet"/>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
            <!-- Table is responsive, on smaller screens it will look alright.-->
            <div class="table-responsive">
                <table class="table table-hover" data-toggle="table">
                    <thead>
                        <tr>
                            <th data-sortable="true">Id</th>
                            <th data-sortable="true">First name</th>
                            <th data-sortable="true">Last name</th>
                            <th data-sortable="true">Birth date</th>   
                            <th data-sortable="true">Phone number</th> 
                            <th data-sortable="true">Email</th> 
                            <th data-sortable="true">Symptoms</th> 
                            <th data-sortable="true">Matter</th> 
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
                            <td><%= p.getId() %> </td>
                            <td><%= p.getFirstname() %></td>
                            <td><%= p.getLastname() %></td>
                            <td><%= p.getBirthdate() %></td>
                            <td><%= p.getPhone() %></td>
                            <td><%= p.getEmail() %></td>
                            <td><%= p.getSymptoms() %></td>
                            <td><%= p.getMatter() %></td>
                            <td>
                                <form action="ShowPatientsServlet" method="get">
                                    <button type="submit" name="button" class="btn btn-danger" value=<%= p.getId() %> ></button>
                                </form>
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
    </body>
</html>
