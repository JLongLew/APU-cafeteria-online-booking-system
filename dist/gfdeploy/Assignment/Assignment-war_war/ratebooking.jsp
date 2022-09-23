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
        <title>Rating | EPDA Online Booking System</title>
    </head>
    <body>
        <h1>Review Booking!</h1>
        <form method="POST" action="/Assignment-war/ratebooking">
            <input type="hidden" name="bookingid" value="${bookingid}"/>
            <table border="0">
                <tr>
                    <td>Rating</td>
                    <td>
                        <select name="rate">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                        </select>
                    </td>
                </tr>
                <td>Comment</td>
                <td><textarea rows="3" cols="50" name="comment"></textarea></td>
                </tr>

                <tr><td colspan="2" align="center">
                        <input type="submit" value="Add Review"></td>
                </tr>
            </table>
        </form>
        <a href="/Assignment-war/listbooking">
            <button>
                Back
            </button>
        </a>
    </body>
</html>
