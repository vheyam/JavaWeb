<%-- 
    Document   : newPatient
    Created on : 17-Jan-2017, 14:25:21
    Author     : AbIlyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/timestamp_picker.js"></script>
<script type="text/javascript" src="scripts/general.js"></script>
<script type="text/javascript" src="scripts/adi.js"></script>
<script type="text/javascript" src="scripts/form_validation.js"></script>
<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="scripts/sortingTable.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            accesskey=""   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->

</script>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>New Patient</title>

</head>
    <body> 
        <!-- Including the navigation bar -->   
        <jsp:include page="nurseNavigationBar.jsp"/>

        
        
        
                   <div class="container">
                   <h3 class="text-center">Patient Registration</h3> 
                  
                    
                      <form action="NewPatientServlet" method="get" name="register">
                        
                        <table border="0" align="center">
                          <% if(request.getParameter("status")!=null)
{
out.println(request.getParameter("status"));
}
%>
                          <tr>
                            <td><span class="style11 style6"><strong>First Name</strong></span></td>
                <td><input type="text" name="firstname" class="textfield"/>    </td>
              </tr>
                          <tr>
                            <td><span class="style11 style6"><strong>Last Name</strong></span></td>
                <td><input type="text" name="lastname" class="textfield"/>    </td>
              </tr>
              
                          <tr>
                            <td class="style11"><span class="style6"><strong>Street</strong></span></td>
                <td><input type="text" name="street" class="textfield"/></td>
              </tr>
                          
                          <tr>
                            <td  class="style11"><span class="style6"><strong>Post Code</strong></span></td>
                <td><input type="text" name="postcode" class="textfield"/></td>
              </tr>  
              
                          <tr>
                            <td class="style11"><span class="style6"><strong>Ort</strong></span></td>
                <td><input type="text" name="ort" class="textfield"/></td>
              </tr> 
                          
                          <tr>
                            <td><span class="style11 style6"><strong>Phone</strong></span></td>
                <td><input type="text" name="phone" class="textfield"/></td>
              </tr>  
              
                          <tr>
                            <td class="style11"><span class="style6"><strong>Email</strong></span></td>
                <td><input type="text" name="email" class="textfield"/></td>
              </tr> 
              
                          <tr>
                            <td><span class="style11 style6"><strong>Birthdate</strong></span></td>
                <td><input type="text" name="birthdate" readonly/>
                  <a href="javascript:show_calendar('document.register.birthdate', document.register.birthdate.value);"> <span class="glyphicon glyphicon-calendar"></span></a> </td>
              </tr>
                          
                                      
                           
              
                          <tr>
                            <td class="style11"><span class="style6"><strong>Bloodgroup</strong></span></td>
                <td><input type="text" name="bloodgroup" class="textfield"/></td>
              </tr>
              
                          <tr>
                            <td class="style11"><span class="style6"><strong>Weight</strong></span></td>
                <td><input type="text" name="weight" class="textfield"/></td>
              </tr>
              
                         <tr>
                            <td class="style11"><span class="style6"><strong>Height</strong></span></td>
                <td><input type="text" name="height" class="textfield"/></td>
                           </tr>
                           <tr>
                            
                            <td><span class="style11 style6"><strong>Symptoms</strong></span></td>
                <td><div class ="col-xl-3"><select multiple class="form-control" name="symptoms">
                <option>select</option>
                  <option>Kristianstad</option>
                  <option>Ahus</option>
                  <option>Norra Asum</option>
                  <option>Önnestad</option>
                  </select>   </div> </td>
              </tr>
                        <br>
                          <tr>
                              <td colspan="2"><div align="center" class="style11 style6"><strong><p></p>
                              <input name="Input" type="submit" class="btn btn-primary" value="Register" onclick="pinno" />
                            </strong></div></td>
                        </tr>
                        </table>
                      </form>  
         <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("register");
  
 
  frmvalidator.addValidation("firstname","req","Please enter your First Name");
  frmvalidator.addValidation("firstname","maxlen=20",	"Max length for FirstName is 20");
  frmvalidator.addValidation("firstname","alpha"," First Name Alphabetic chars only");
  
  frmvalidator.addValidation("lastname","req","Please enter your Last Name");
  frmvalidator.addValidation("lastname","maxlen=20","Max length is 20");
  frmvalidator.addValidation("lastname","alpha"," Last Name Alphabetic chars only");
  
  frmvalidator.addValidation("birthdate","req","Please enter your DOB"); 
  frmvalidator.addValidation("postcode");
  frmvalidator.addValidation("ort","dontselect=0");
  frmvalidator.addValidation("phone","req");
  
  frmvalidator.addValidation("phone","maxlen=50");
  frmvalidator.addValidation("phone","numeric");
  frmvalidator.addValidation("phone","Phone");
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
 
   
     
 </script>
                      
                    
              
    
      
      
      
    
  </tbody>

          
        
      </tbody>
       
</div>
</body>
</html>
