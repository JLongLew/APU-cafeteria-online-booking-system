<%-- 
    Document   : receipt
    Created on : 11 Aug, 2022, 2:52:05 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receipt | EPDA Online Booking System</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <div class="h-screen flex flex-col items-center justify-center space-y-4">
            <h1 class="font-medium leading-tight text-3xl text-blue-600 text-center">
                Receipt #000<%=request.getAttribute("receiptid")%>
            </h1>
            <table>
                <tr>
                    <td>Date:</td>
                    <td><%=request.getAttribute("receiptdate")%></td>
                </tr>
                <tr>
                    <td>Chef Name:</td>
                    <td><%=request.getAttribute("receiptstaffname")%></td>
                </tr>
                <tr>
                    <td>Customer Rating:</td>
                    <td><%=request.getAttribute("receiptrating")%></td>
                </tr>
                <tr>
                    <td>Customer Comment:</td>
                    <td><%=request.getAttribute("receiptcomment")%></td>
                </tr>
                <tr><td><hr></td><td><hr></hr></tr>
                <tr>
                    <td>Dish Category:</td>
                    <td><%=request.getAttribute("receiptfoodcategory")%></td>
                </tr>
                <tr>
                    <td>Dish Name:</td>
                    <td><%=request.getAttribute("receiptfoodname")%></td>
                </tr>
                <tr>
                    <td>Quantity:</td>
                    <td><%=request.getAttribute("receiptquantity")%></td>
                </tr>
                <tr>
                    <td>Total Price</td>
                    <td><%=request.getAttribute("receiptprice")%></td>
                </tr>
            </table>
            <a
                class="px-7 py-3 text-white font-medium uppercase rounded hover:shadow-lg active:shadow-lg transition w-90 justify-center "
                style="background-color: #3b5998"
                href="javascript: history.go(-1)"
                role="button"
                >
                Back
            </a>
        </div>
    </body>
</html>