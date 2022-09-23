<%-- 
    Document   : register
    Created on : Aug 5, 2022, 7:01:07 PM
    Author     : sunny
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Booking | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Assign Booking!</h1>
        <form method="POST" action="/Assignment-war/assignbooking">
            <table border="0">
                <input type="hidden" name="bookingid" value="${bookingid}"/>
                <tr>
                    <td>Staff</td>
                    <td>
                        <select name="staffid">
                            <c:forEach items="${liststaff}" var="staff">
                                <option value="${staff.id}">${staff.username} - ${staff.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td colspan="2" align="center">
                        <input type="submit" value="Assign"></td>
                </tr>
            </table>
        </form>
        <a href="/Assignment-war/listbooking" >
            <button>
                Back
            </button>
        </a>
    </body>
</html>
