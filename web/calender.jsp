<%-- 
    Document   : Calender
    Created on : 17-Jan-2017, 13:58:42
    Author     : AbIlyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calender</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
    </head>
    <script language="JavaScript" src="scripts/timestamp_picker.js"></script>
    <body>
        <form name="frmProcess">
			Date:<input type="text" name="txtDate" readonly>
			<a href="javascript:show_calendar('document.frmProcess.txtDate', document.frmProcess.txtDate.value);">
				<img src="images/cal.gif" width="18" height="18" border="0" />
			</a>
		</form>
    </body>
</html>
