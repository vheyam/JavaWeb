<%-- 
    Document   : newEmployee
    Created on : 19-Jan-2017, 23:04:16
    Author     : AbuIlyas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript1.1" src="scripts/pass.js"></script> 
<script type="text/javascript" src="scripts/image.js"> </script>
<script type="text/javascript" src="scripts/general.js"> </script>
<script type="text/javascript" src="scripts/adi.js"> </script>
<script type="text/javascript" src="scripts/form_validation.js"> </script>
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="scripts/sortingTable.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            accesskey=""   integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet">

<title>New Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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


</head>
    <body> 
        <!-- Including the navigation bar -->   
        <jsp:include page="adminNavigationBar.jsp"/>

        
            <div class="container">
                   <h3 class="text-center">Employee Registration</h3> 
          
                      <form action="NewPersonServlet" method="get" name="empregister">
                        
                        <table border="0" align="center">
                          <% if(request.getParameter("status")!=null)
                            {
                            out.println(request.getParameter("status"));
                            }
                          %>
                        <tr>
                            <td class="style11"><span class="style6"><strong>Email</strong></span></td>
                <td><input type="text" name="email" class="textfield"/></td>
              </tr>

                          <tr>
                            <td><span class="style11 style6"><strong>First Name</strong></span></td>
                <td><input type="text" name="firstname" class="textfield"/>    </td>
              </tr>
                          <tr>
                            <td><span class="style11 style6"><strong>Last Name</strong></span></td>
                <td><input type="text" name="lastname" class="textfield"/>    </td>
              </tr>
              
                          <tr>
                            <td><span class="style11 style6"><strong>Phone</strong></span></td>
                <td><input type="text" name="phone" class="textfield"/></td>
              </tr>                
                          
                            <tr>
                            <td><span class="style11 style6"><strong>Privilege</strong></span></td>
                <td><input type="text" name="privilege" class="textfield"/></td>
              </tr>
              
                         <tr>
                            <td><span class="style11 style6"><strong>User Name</strong></span></td>
                <td><input type="text" name="username" />    </td>
              </tr>
                          <tr>
                            <td><span class="style11 style6"><strong>Password</strong></span></td>
                <td><input name="password" type="password" id="password" onkeyup="testPassword(document.forms.empregister.password.value);" />    </td>
              </tr><tr><td></td><td>
          <a id="Words">Strength:</a></td>
      <td><table cellpadding=0 cellspacing=0><tr><td height=15  bgcolor=#dddddd></td></tr></table></td>

 
</tr>                    <br
                         <tr>
                              <td colspan="2"><div align="center" class="style11 style6"><strong><p></p>
                              <input name="Input" type="submit" class="btn btn-primary" value="Register" onclick="pinno" />
                            </strong></div></td>
                        </tr>
                        </table>
                      </form>  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("empregister");
  
 
  frmvalidator.addValidation("firstname","req","Please enter your First Name");
  frmvalidator.addValidation("firstname","maxlen=20",	"Max length for FirstName is 20");
  frmvalidator.addValidation("firstname","alpha"," First Name Alphabetic chars only");
  
  frmvalidator.addValidation("lastname","req","Please enter your Last Name");
  frmvalidator.addValidation("lastname","maxlen=20","Max length is 20");
  frmvalidator.addValidation("lastname","alpha"," Last Name Alphabetic chars only");
  frmvalidator.addValidation("phone","req");
  
  frmvalidator.addValidation("phone","maxlen=50");
  frmvalidator.addValidation("phone","numeric");
  frmvalidator.addValidation("phone","Phone");
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
 
  frmvalidator.addValidation("username","req","Please enter User Name");
   
  frmvalidator.addValidation("password","req","Please enter Password");
    
     
 </script>
                      
                    
              
      
      
      
    </tr>
  </tbody>
</table>
          
        
      </tbody>
       
</div>
</body>
</html>

