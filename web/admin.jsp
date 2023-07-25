<%-- 
    Document   : admin
    Created on : Apr 24, 2023, 11:27:29 PM
    Author     : Thành Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12"><h2 style="color: #8B0A50"> Wellcome:</h2></div>
                <div class="col-12"><h1 style="color: #8B0A50">${sessionScope.LOGIN_USER.fullName}</h1></div>
                <div class="col-12">
                    <div id="custom-search-input">
                        <div class="input-group">
                            <form action="MainController">
                                <font style="color: #CD1076">Search</font><input class="search-query form-control" type="text" name="search" value="${param.search}"/>
                                <span class="input-group-btn">  
                                    <input type="submit"  style="color: #CD1076" name="action" value="Search"/>
                                    <input type="submit" style="color: #CD1076" name="action" value="Logout" />
                                </span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div id="custom-table">
                <c:if test="${requestScope.LIST_USER!=null}">
                    <c:if test="${not empty requestScope.LIST_USER}">
                        <table border="1">
                            <thead>
                                <tr>
                                    <th style="color: #CD1076">No</th>
                                    <th style="color: #CD1076">User ID</th>
                                    <th style="color: #CD1076">Full Name</th>
                                    <th style="color: #CD1076">Role ID</th>
                                    <th style="color: #CD1076">Password</th>
                                    <th style="color: #CD1076">Update</th>
                                    <th style="color: #CD1076">Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                                <form action="MainController" method="POST">


                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <a href="MainController?action=Detail&userID=${user.userID}">
                                                <input type="text" name="userID" value="${user.userID}" readonly="">
                                            </a>
                                        </td>
                                        <td><input type="text" name="fullName" value="${user.fullName}" required="" /></td>
                                        <td><input type="text" name="roleID" value="${user.roleID}" required=""/></td>
                                        <td>
                                            ${user.password}
                                        </td>
                                        <td>
                                            <input type="submit" name="action" value="Update"/>
                                            <input type="hidden" name="search" value="${param.search}"/>
                                        </td>
                                        <td>
                                            <c:url var="deleteLink" value="MainController">
                                                <c:param name="action" value="Delete"></c:param>
                                                <c:param name="userID" value="${user.userID}"></c:param>
                                                <c:param name="search" value="${param.search}"></c:param>
                                            </c:url>
                                            <a href="${deleteLink}">Delete</a>
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>

                    </c:if>
                </c:if>
            </div>
        </div>
    </body>
</html>
<style>
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
    .container{
        padding: 10%;
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
