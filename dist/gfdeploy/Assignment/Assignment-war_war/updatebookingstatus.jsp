<%-- 
    Document   : createbooking
    Created on : Aug 5, 2022, 8:22:01 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Status | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Update Booking Status!</h1>
        <form method="POST" action="/Assignment-war/updatebookingstatus">
            <input type="hidden" name="bookingid" value="${bookingid}"/>
            <table border="0">
                <tr>
                    <td>Status</td>
                    <td>
                        <select name="status">
                            <option>New</option>
                            <option>On Going</option>
                            <option>Done</option>
                        </select>
                    </td>
                </tr>

                <tr><td colspan="2" align="left">
                        <input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
