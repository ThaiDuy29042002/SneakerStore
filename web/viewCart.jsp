<%-- 
    Document   : viewCart
    Created on : Apr 25, 2023, 9:01:55 PM
    Author     : Thành Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Your Cart</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body class="container" >

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">
                        <div class="row">
                            <div class="col-xs-6">
                                <h5><span class="glyphicon glyphicon-shopping-cart"></span>Your selected products</h5>
                            </div>
                            <div class="col-xs-6">
                                <a href="user.jsp">
                                    <button type="button" class="btn btn-primary btn-sm btn-block">
                                        <span class="glyphicon glyphicon-share-alt"></span> Continue shopping
                                    </button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <table id="cart" class="table table-hover table-condensed">
                    <c:if test="${sessionScope.CART!=null}">
                        <table id="cart" class="table table-hover table-condensed">
                            <thead>
                                <tr>
                                    <th style="width:50%" >SneakerID</th>
                                    <th style="width:50%" >SneakerName</th>
                                    <th style="width:50%" >Brand</th>
                                    <th style="width:50%" >Size</th>
                                    <th style="width:50%" >Quantity</th>
                                    <th style="width:50%" >Price</th>
                                    <th style="width:50%" >Total</th>
                                    <th style="width:50%" >Edit</th>
                                    <th style="width:50%" >Remove</th>
                                </tr>
                            </thead>
                            <tbody>
 
                                <c:forEach var="product" varStatus="count" items="${sessionScope.CART.cart.values()}">
                                    
                                <form action="MainController" method="POST">
                                    <tr>
                                        <td>
                                            <input class="form-control text-center" type="text" name="sneakerID" value="${product.sneakerID}" readonly=""/>
                                        </td>
                                        <td>
                                            <input class="form-control text-center" type="text" name="sneakerName" value="${product.sneakerName}" readonly=""
                                        </td>
                                        <td>${product.brand}</td>
                                        <td><input class="form-control text-center" type="number" name="size" value="${product.size}" readonly=""</td>
                                        <td>
                                            <input class="form-control text-center" type="nuumber" name="quantity" value="${product.quantity}"  min="1"/>
                                        </td>
                                        <td>
                                            ${product.price}$
                                        </td>
                                        <td>
                                            ${product.price * product.quantity}
                                             <c:set var="total" value="${product.price *product.quantity+ total}"></c:set>
                                        </td>
                                        <td><input style="background: #3887ac" type="submit" name="action" value="Edit"/>
                                        </td>
                                        <td>
                                            <input style="background: #ba3636" type="submit" name="action" value="Remove"/>
                                        </td>

                                    </tr>

                                </form>

                            </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                    <h1>Total ${total}$</h1>


                    </body>
                    <style>
                        .badge-notify{
                            background:red;
                            position:relative;
                            top: -20px;
                            right: 10px;
                        }
                        .my-cart-icon-affix {
                            position: fixed;
                            z-index: 999;
                        }
                        .table>tbody>tr>td, .table>tfoot>tr>td{
                            vertical-align: middle;
                        }
                        body {
                            margin-top: 20px;
                        }
                        @media screen and (max-width: 600px) {
                            table#cart tbody td .form-control{
                                width:20%;
                                display: inline !important;
                            }
                            .actions .btn{
                                width:36%;
                                margin:1.5em 0;
                            }

                            .actions .btn-info{
                                float:left;
                            }
                            .actions .btn-danger{
                                float:right;
                            }

                            table#cart thead { display: none; }
                            table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
                            table#cart tbody tr td:first-child { background: #333; color: #fff; }
                            table#cart tbody td:before {
                                content: attr(data-th); font-weight: bold;
                                display: inline-block; width: 8rem;
                            }



                            table#cart tfoot td{display:block; }
                            table#cart tfoot td .btn{display:block;}

                        }
                    </style>