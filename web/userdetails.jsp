<%-- 
    Document   : userdetails
    Created on : Apr 25, 2023, 12:25:08 PM
    Author     : My PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER DETAIL Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12"><h2 style="color: #8B0A50"> Wellcome:</h2></div>
                <div class="col-12"><h1 style="color: #8B0A50">${requestScope.object.userID}</h1></div>
                <div class="col-12">
                    <div id="custom-search-input">
                        <div class="input-group">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div id="custom-table">
                <table border="1" class="col-12">
                    <thead>
                    <c:if test="${requestScope.oject.userID==null}">

                        <tr>
                            <th style="color: #CD1076">Order ID</th>
                            <th style="color: #CD1076">User ID</th>
                            <th style="color: #CD1076">Sneaker ID</th>
                            <th style="color: #CD1076">Sneaker Name</th>
                            <th style="color: #CD1076">Sneaker Size</th>
                            <th style="color: #CD1076">Quantity</th>
                            <th style="color: #CD1076">Price Total</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${requestScope.object.orderID}</td>
                                <td>${requestScope.object.userID}</td>
                                <td>${requestScope.object.sneakerID}</td>
                                <td>${requestScope.object.sneakerName}</td>
                                <td>${requestScope.object.size}</td>
                                <td>${requestScope.object.quantity}</td>
                                <td>${requestScope.object.priceTotal}</td>
                            </tr>
                        </tbody>
                    </c:if>

                </table>
            </div>
        </div>
    </body>
</html>
<style>
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
    .container{
        padding: 25%;
        text-align: center;
        display: initial;
    }
    #custom-search-input {
        margin:0;
        margin-top: 10px;
        padding: 0;
        align-items: center;
        display: inline-table;
    }

    #custom-table {
         margin:0;
        margin-top: 10px;
        padding: 0;
        align-items: center;
        display: inline-table;
    }

    #custom-search-input .search-query {
        width:100%;
        padding-right: 3px;
        padding-left: 15px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 0;
    }

    #custom-search-input button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: absolute;
        right:0;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        color:#D9230F;
        cursor: unset;
        z-index: 2;
    }

    .search-query:focus{
        z-index: 0;   
    }

</style>
