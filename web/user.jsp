<%-- 
    Document   : user
    Created on : Apr 24, 2023, 11:27:44 PM
    Author     : Thành Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sneaker Store</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <h1>Welcome Sneaker Store</h1>

        <div class="box-container">
            <img id="myImage" src="img/Air Jordan 1 Mid SE .jpg">

        </div>
        <form action="MainController" method="POST">
            <div class="col-md-6"  style="background-color:#e88d8d;
                 background-image: linear-gradient(160deg, #e88d8d 0%, #e88d8d 100%);
                 ">


                <select name="cmbProduct" >
                    <option  value="S01-Air Jordan 1 Mid SE-Nike-3959000-41">Air Jordan 1 Mid SE - 3959000$</option>
                    <option  value="S02-Air Jordan 1 Mid SE Craft-Nike-3959000-40">Air Jordan 1 Mid SE Craft - 3959000$</option>
                    <option  value="S03-Air Jordan 1 Mid-Nike-3669000-43">Air Jordan 1 Mid- 3669000$</option>
                    <option  value="S04-ULTRABOOST-Adidas-4500000-43">ULTRABOOST - 4500000$</option>
                    <option  value="S05-SUPERSTAR-Adidas-2600000-43">SUPERSTAR - 2600000$</option>
                    <option  value="S06-STAN SMITH-Adidas-2600000-44">STAN SMITH - 2600000$</option>
                    <option  value="S07-VANS ERA CLASSIC BLACK-VANS-1450000-42">VANS ERA CLASSIC BLACK - 1450000$</option>
                    <option  value="S08-Converse Chuck 70 Black-Converse-2000000-41">Converse Chuck 70 Black - 2000000$</option>
                </select>

                <select name="cmbQuantity">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3 </option>
                    <option value="5">5</option>
                    <option value="10">10</option>
                    <option value="100">100</option>
                </select>
            </div>
            <div class="col-md-6" style="background-color: #e88d8d;
                 background-image: linear-gradient(160deg, #e88d8d 0%, #e88d8d 100%);
                 ">
                <input type="submit" name="action" value="Logout">
                <input type="submit" name="action" value="Add"/>
                <input type="submit" name="action" value="View"/></br>
               ${requestScope.MESSAGE}
            </div>
        </form>


       
    </body>
</html>
<style>

    
    
    
    body{
        background-image: #f4cccc;
        background: #f4cccc;

    }
    h1{
        color: burlywood;
        font-family: fantasy;
        text-align: center;
        justify-content: center;
        align-items: center;
        padding: 50px 0;
        margin: 0 180px;
        font-size: 40px;
    }
    h5{
        overflow-x: hidden;
        font-family: fantasy;
        text-align: center;
        justify-content: center;
        align-items: center;
        padding: 26.5px;
        margin: 0 88px;
        font-size: 30px;
    }
    .row{
        margin-top: 20px; 
        justify-content: center;
        font-family: cursive;
        font-size: 25px;
    }
    .col-md-6{

        margin-top: 20px;
        text-align: center;
        box-shadow: 0px 0px 10px black;            
        border-radius: 5px;
        justify-content: center;
        align-items: center;
        padding: 20px 0;
        background-color: ghostwhite;
        width: 35%;
        margin-left: 100px;
    }
    .col-md-6 input{
        width: 25%;
    }
    #myImage{

        border-radius: 5px;
        width: 600px;
        height: 413px;
        top: 0;
        bottom: 0; 
        text-align: center;
        align-content: center;
        justify-content: center;
        align-items: center;
    }
    .footer{
        height: 100px;
        overflow-x: hidden;
    }
    .box-container{
        text-align: center;
    }
</style>