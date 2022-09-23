<%-- 
    Document   : manager
    Created on : Aug 4, 2022, 8:50:28 PM
    Author     : sunny
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Page | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Manager Page!</h1>
        <a href="/Assignment-war/editprofile?id=${nuser.id}&role=${nuser.role}&editor=manager"><button>Edit Profile</button></a>
        <a href="/Assignment-war/manageuser"><button>Manage Users</button></a>
        <a href="/Assignment-war/listbooking"><button>View Bookings</button></a>
        
        <br><br>
        
        <a href="/Assignment-war/logout"><button>Logout</button></a>
   
        <br><br><h2>Reports</h2><hr>
        <h3>Staff Earnings</h3>
        <c:forEach items="${earning}" var="post">
            ${post} <br>
        </c:forEach>
        <br><hr>
            
        <h3>Staff Average Rating</h3>
        <c:forEach items="${rating}" var="post">
            ${post} <br>
        </c:forEach>
        <br><hr>
        
        <h3>Number of Staff Bookings</h3>
        <c:forEach items="${staffbookingcount}" var="post">
            ${post} <br>
        </c:forEach>
        <br><hr>
        
        <h3>Customer Spent </h3>
        <c:forEach items="${customerspend}" var="post">
            ${post} <br>
        </c:forEach>
        <br><hr>
        
        <h3>Customer Booking Count </h3>
        <c:forEach items="${customerbookcount}" var="post">
            ${post} <br>
        </c:forEach>
        <br><hr>
            
    </body>
</html>
