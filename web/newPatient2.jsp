<%-- 
    Document   : newPatient2
    Created on : 17-Jan-2017, 14:25:21
    Author     : AbIlyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/timestamp_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">


</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>


<title>New Patient</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//--><meta name="keywords" content="PRMS, Patient Registry Management System">

</script>
<meta name="description" content="Patient Registry Management System is your Patient Registry Management System resource. Visit the PRMS Discussion Forum, FAQs, Jobs, Grant Opportunities, etc." telemed.css="" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {font-weight: bold; line-height: 35px; color: #FFFFFF; font-style: normal; font-size: 12px;}
-->
</style>
<link href="images/telemed.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
body {
	background-color: white;
}
.style6 {color: #000000}
-->
</style>
</head>
    <body leftmargin="0" topmargin="0"> 
        <!-- Including the navigation bar -->   
        <jsp:include page="nurseNavigationBar.jsp"/>
<table align="left" border="0" cellpadding="3" cellspacing="0" width="952">
  <tbody><tr>
    <td valign="top" width="58"><p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>      
      <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p></td>
    
      <tbody>
        <tr>
          <td width="903" height="78">
            <table border="0" cellpadding="0" cellspacing="0" height="12" width="530">
              <tbody>
                <tr>
                  <td align="middle" bgcolor="white" height="107" valign="top" width="724">
                    <table id="AutoNumber8" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" height="112" width="100%">
                      <tbody><tr>
                        <td height="110"><div align="center"></div></td>
                      </tr>
                  </tbody></table></td>
                </tr>
               
              </tbody>
          </table></td>
        </tr>
        
        <tr>
          <td height="435" valign="top">
            <noscript>
            </noscript>            <p><align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
                  <div align="center"><strong>New Patient Registration</strong>                               </div>
                  <ol>
                    
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
                            <td><span class="style11 style6"><strong>Ort</strong></span></td>
                <td><select name="ort">
                <option>select</option>
                  <option>Kristianstad</option>
                  <option>Ahus</option>
                  <option>Norra Asum</option>
                  <option>Önnestad</option>
                  </select>    </td>
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
                  <a href="javascript:show_calendar('document.register.birthdate', document.register.birthdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
              </tr>
                          
                                      
                          <tr>
                            <td class="style11"><span class="style6"><strong>Symptoms</strong></span></td>
                <td><input type="text" name="symptoms" class="textfield"/></td>
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
                            <td colspan="2"><div align="center" class="style11 style6"><strong>
                              <input name="Input" type="submit" value="Register" onclick="pinno" />
                            </strong></div></td>
              </tr>
                        </table>
                      </form>  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("register");
  
 
  frmvalidator.addValidation("firstname","req","Please enter your First Name");
  frmvalidator.addValidation("firstname","maxlen=20",	"Max length for FirstName is 20");
  frmvalidator.addValidation("firstname","alpha"," First Name Alphabetic chars only");
  
  frmvalidator.addValidation("lastname","req","Please enter your Last Name");
  frmvalidator.addValidation("lastname","maxlen=20","Max length is 20");
  frmvalidator.addValidation("lastname","alpha"," Last Name Alphabetic chars only");
  
  frmvalidator.addValidation("birthdate","req","Please enter your DOB"); 
  
   frmvalidator.addValidation("ort","dontselect=0");
   
  
   
   frmvalidator.addValidation("pin","req","Please enter your pin Number");
    frmvalidator.addValidation("fax","age");
     frmvalidator.addValidation("phone","req");
  
  frmvalidator.addValidation("phone","maxlen=50");
  frmvalidator.addValidation("phone","numeric");
 frmvalidator.addValidation("phone","Phone");
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
 
   frmvalidator.addValidation("loginname","req","Please enter Login Name");
   
   frmvalidator.addValidation("password","req","Please enter Password");
     frmvalidator.addValidation("secrete","req","Please enter your Answer");
   frmvalidator.addValidation("squest","dontselect=0");
     
 </script>
                      
                    </li>
              </ol></td>
      <td bgcolor="#ffffff" valign="top" width="1"></td>
      
      
      
    </tr>
  </tbody>
</table>
          
        
      </tbody>
       

</body>
</html>
