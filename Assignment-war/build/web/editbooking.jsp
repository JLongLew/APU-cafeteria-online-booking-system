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
        <title>Edit Booking | EPDA Online Booking System</title>
    </head>
    <body>

        <h1>Edit Booking!</h1>
        <form method="POST" action="/Assignment-war/editbooking">
            <input type="hidden" name="bookingid" value="${bookingid}"/>
            <input type="hidden" name="foodcategory" id="foodcategory" value="Western Food"/>

            <table border="0">
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="datebooking" value="${nbooking.datebooking}"></td>
                </tr>
                <tr>
                    <td>Dish</td>
                    <td>
                        <select name="food" id="food" onchange="bla()">
                            <option>Steak</option>
                            <option>Sushi</option>
                            <option>Nasi Lemak</option>
                            <option>Apple Juice</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Price: RM</td>
                    <td>
                        <input type="number" name="pricee" id="pricee" disabled value="188">
                        <input type="hidden" name="price" id="price" value="188">
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <select name="quantity" id="quantity" onchange="bla()">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="left">
                        <input type="submit" value="Edit Booking">
                    </td>
                </tr>
            </table>
        </form>

        <script>
            function bla() {
                var x = document.getElementById("food");
                var y = document.getElementById("quantity");
                food = x.options[x.selectedIndex].text;
                quantity = parseInt(y.options[y.selectedIndex].text);


                if (food == 'Apple Juice') {
                    document.getElementById("price").value = 15 * quantity;
                    document.getElementById("pricee").value = 15 * quantity;
                    document.getElementById("foodcategory").value = "Drinks";
                } else if (food == 'Nasi Lemak') {
                    document.getElementById("price").value = 25 * quantity;
                    document.getElementById("pricee").value = 25 * quantity;
                    document.getElementById("foodcategory").value = "Local Food";
                } else if (food == 'Sushi') {
                    document.getElementById("price").value = 65 * quantity;
                    document.getElementById("pricee").value = 65 * quantity;
                    document.getElementById("foodcategory").value = "Japan Food";
                } else if (food == 'Steak') {
                    document.getElementById("price").value = 188 * quantity;
                    document.getElementById("pricee").value = 188 * quantity;
                    document.getElementById("foodcategory").value = "Western Food";
                }

            }
        </script>
        <a href="/Assignment-war/listbooking">
            <button>
                Back
            </button>
        </a>
    </body>
</html>
