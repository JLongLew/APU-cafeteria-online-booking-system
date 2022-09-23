<%-- 
    Document   : listbooking
    Created on : Aug 5, 2022, 1:16:36 PM
    Author     : sunny
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Booking | EPDA Online Booking System</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            td {
                padding: 20px
            }
        </style>
    </head>
    <body>
        <h1>Bookings!</h1>
        <a href="/Assignment-war/"><button>Home</button></a>
        <c:if test="${userrole eq 'customer'}">
            <a href="/Assignment-war/createbooking"><button>Add Booking</button></a>
        </c:if>
        <br><br>
        <a href="?status=new"><button>Current Booking</button></a>
        <a href="?status=done"><button>History Booking</button></a>
        <br><br>

        <input class="form-control mr-sm-2 tbsearch" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" onclick="searchbooking()">Search</button>

        <br><br>
        <table>
            <tr>
                <td>ID</td>
                <td>Date</td>
                <td>Customer</td>
                <td>Staff</td>
                <td>Rating</td>
                <td>Comment</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Category</td>
                <td>Name</td>
                <td>Status</td>
                <td>Function</td>
            </tr>
            <c:forEach items="${listbooking}" var="post">
                <c:if test="${(viewstatus == 'new' and (post.status == 'New' or post.status == 'On Going')) or (viewstatus == 'done' and post.status == 'Done')}">
                    <tr>
                        <td>${post.id}</td>
                        <td>${post.datebooking} </td>
                        <td>${post.customername}</td>
                        <td>${post.staffname}</td>
                        <td>${post.rating}</td>
                        <td>${post.comment}</td>
                        <td>${post.price}</td>
                        <td>${post.quantity}</td>
                        <td>${post.foodcategory}</td>
                        <td>${post.foodname}</td>
                        <td>${post.status}</td>
                        <td>
                            <c:if test="${post.status != 'Done'}">
                                <a href="/Assignment-war/deletebooking?id=<c:out value='${post.id}' />"><button>Delete</button></a>
                            </c:if>
                            <c:if test="${post.status == 'New'}">
                                <a href="/Assignment-war/editbooking?id=<c:out value='${post.id}' />"><button>Edit</button></a>
                            </c:if>
                            <c:if test="${userrole eq 'customer'}">
                                <c:if test="${post.status eq 'Done'}">
                                    <a href="/Assignment-war/ratebooking?id=<c:out value='${post.id}' />"><button>Rate</button></a>
                                </c:if>
                            </c:if>
                            <c:if test="${userrole eq 'staff'}">
                                <a href="/Assignment-war/updatebookingstatus?id=<c:out value='${post.id}' />"><button>Update Status</button></a>
                            </c:if>
                            <c:if test="${userrole eq 'manager'}">
                                <c:if test="${post.status != 'Done'}">
                                    <a href="/Assignment-war/assignbooking?id=<c:out value='${post.id}' />"><button>Assign Booking</button></a>
                                </c:if>
                                <a href="/Assignment-war/generaterecipt?id=<c:out value='${post.id}' />"><button>Generate Receipt</button></a>
                            </c:if>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function searchbooking() {
                console.log('search booking')
                search = $('.tbsearch').val()
                console.log(search)

                window.location.replace("/Assignment-war/listbooking?search=" + search);

            }
        </script>
    </body>
</html>
