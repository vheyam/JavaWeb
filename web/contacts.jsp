<%-- 
    Document   : contacts
    Created on : Jan 19, 2017, 3:15:27 PM
    Author     : Rolandas
--%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>     
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contacts</title>
    </head>
    <body>
        <!-- Including the navigation bar -->   
        <jsp:include page="publicNavigationBar.jsp"/>
            
        <div class="container">
            <div class="row">
                <!-- left side -->
                <div class="col-md-6"> 
                    <!-- Contact Us form -->
                    <div class="form-area">  
                        <form action="ContactsServlet" method="get">
                            <h3 style="margin-bottom: 15px; text-align: center;">Contact Us</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name" autocomplete="off" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email" autocomplete="off" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" autocomplete="off" required>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" autocomplete="off" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" type="textarea" id="message" name="message" placeholder="Message" maxlength="240" rows="4" autocomplete="off"></textarea>
                                <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                            </div>
                            <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit</button>
                        </form>
                    </div>
                </div>
                <!-- Right side -->
                <div class="col-md-6">
                    <!-- Show google map -->
                    <div class="google-maps">
                        <iframe width="100%" height="100%" frameborder="0" src="https://maps.google.com/maps?q=Elmetorpsvägen 15, 291 39 Kristianstad, Sweden, &t=&z=14&ie=UTF8&iwloc=&output=embed"></iframe>
                    </div>
                    <br>
                    <!-- Phone and email -->   
                    <div class="row">
                        <style>
                            .glyphicon {
                                font-size: 30px;
                            }
                        </style>
                        <div class="col-md-6 text-center">
                            <span class="glyphicon glyphicon-earphone"></span>       
                            <p>123-456-6789</p>
                        </div>
                        <div class="col-md-6 text-center">
                            <span class="glyphicon glyphicon-envelope"></span>
                            <p><a href="mailto:email@email.com">email@email.com</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript" src="scripts/contacts.js"></script>
        <link rel="stylesheet" href="css/contacts.css"> 
    </body> 
</html>
    
    
