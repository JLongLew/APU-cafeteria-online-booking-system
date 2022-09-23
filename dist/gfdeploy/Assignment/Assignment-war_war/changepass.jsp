<%-- 
    Document   : changepass
    Created on : Aug 4, 2022, 8:52:57 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Edit Info!</h1>
        ${nuser.name}
        <form method="POST" action="/Assignment-war/changepassword">
            <input type="hidden" name="userid" value="${nuser.id}"/>
            <input type="hidden" name="userrole" value="${nuser.role}"/>

            <table border="0">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="${nuser.name}"></td>
                </tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${nuser.name}"></td>
                </tr> 
                <td>Name</td>
                <td><input type="text" name="name" value="${nuser.name}"></td>
                </tr> 
                <td>Name</td>
                <td><input type="text" name="name" value="${nuser.name}"></td>
                </tr> 
                <td>Name</td>
                <td><input type="text" name="name" value="${nuser.name}"></td>
                </tr> 

                <tr>
                    <td>Current Password</td>
                    <td><input type="password" name="oldpass"></td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td><input type="password" name="pass1"></td>
                </tr>
                <tr>
                    <td>Confirm New Password</td>
                    <td><input type="password" name="pass2"></td>
                </tr>
                <tr><td colspan="2" align="left">
                        <input type="submit" value="Update Info"></td>
                </tr>
            </table>
        </form>

    </body>
</html>
