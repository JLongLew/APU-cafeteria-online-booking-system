<%-- 
    Document   : staff
    Created on : Aug 5, 2022, 1:13:56 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Page | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Staff page!</h1>

        <a href="/Assignment-war/editprofile?id=${nuser.id}&role=${nuser.role}&editor=staff"><button>Edit Profile</button></a>
        <a href="/Assignment-war/listbooking"><button>Check Bookings</button></a>

        <br><br>

        <a href="/Assignment-war/logout"><button>Logout</button></a>

        <br><hr><br>
        Username: ${nuser.username} <br>
        Name: ${nuser.name} <br>
        Age: ${nuser.age} <br>
        Phone: ${nuser.phone} <br>
        Join Date: ${nuser.datejoined} <br>
        Salary: RM ${nuser.salary} <br>
        Average Rating: ${rating}/10 <br>

    </body>
</html>
