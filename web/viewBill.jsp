<%-- 
    Document   : viewBill
    Created on : Apr 25, 2023, 10:01:29 PM
    Author     : Thành Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <body>
        
         <h1>Success to pay</h1>
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="History"/>
            <input type="hidden" name="id" value="${sessionScope.LOGIN_USER.userID}"
        </form>        
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Order ID</th>
                    <th>User ID</th>
                    <th>Sneaker ID</th>
                    <th>Sneaker Name</th>
                    <th>Size</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pro" varStatus="counter" items="${sessionScope.Listtemp}">
                <tr>
                    <td>${counter.count}</td>
                    <td>${pro.orderID}</td>
                    <td>${pro.userID}</td>
                    <td>${pro.sneakerID}</td>
                    <td>${pro.sneakerName}</td>
                    <td>${pro.size}</td>
                    <td>${pro.quantity}</td>
                    <td>${pro.priceTotal}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>
