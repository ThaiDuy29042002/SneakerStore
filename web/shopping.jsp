<%-- 
    Document   : shopping
    Created on : Apr 25, 2023, 10:52:55 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

        <title>Sneaker Store</title>
    </head>
        <style>
            body{
                background-image: url(img/store_background.jpg);
                    
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
    <body>
        <div class="container"> 
            <div>
                <h1>Welcome to our store</h1>
            </div>
            
            <div class="box-container">
                <img id="myImage" src="img/S01.png">
            </div>
            <form action="MainController" method="POST">
                <div class="row">
                    

                    <div class="col-md-6"  style="background-color: #0093E9;
                         background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
                         ">

                        <select  name="cmbProduct" onchange="changeImage(this)"> 
                            <option   value="S01-Air Jordan 1 Mid SE-img/Air_Jordan_1_Mid SE.jpg">Air Jordan 1 Mid SE</option>
                            <option   value="S02-Air Jordan 1 Mid SE Craft-img/Air_Jordan_1_Mid_SE_Craft.jpg">Air Jordan 1 Mid SE Craft</option>
                            <option   value="S03-Air Jordan 1 Mid-img/Air_Jordan_1_Mid.jpg ">Air Jordan 1 Mid</option>
                            <option   value="S04-ULTRABOOST-img/Ultraboost.jpg">ULTRABOOST</option>
                            <option   value="S05-SUPERSTAR-img/Superstar.jpg">SUPERSTAR</option>
                            <option   value="S06-STAN SMITH-img/Stan_Smith.jpg">STAN SMITH</option>
                            <option   value="S07-VANS ERA CLASSIC BLACK-img/Era_Classic_Black.jpg">VANS ERA CLASSIC BLACK</option>
                            <option   value="S08-Converse Chuck 70 Blac-img/Chuck_70_Black.jpg">Converse Chuck 70 Black</option>
                        </select>

                        <select name="cmbQuantity">
                            <option value="1">1 đôi</option>
                            <option value="2">2 đôi</option>
                            <option value="3">3 đôi</option>
                            <option value="4">4 đôi</option>
                            <option value="5">5 đôi</option>
                            <option value="6">6 đôi</option>
                            <option value="7">7 đôi</option>
                            <option value="8">8 đôi</option>
                            <option value="9">9 đôi</option>
                            <option value="10">10 đôi</option>
                        </select>
                    </div>


                    <div class="col-md-6" style="background-color: #0093E9;
                         background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
                         ">
                        <!--<input type="submit" name="action" value="Home"/>-->
                        <input type="submit" name="action" value="Add"/>
                        <input type="submit" name="action" value="View"/>
                    </div>
                </div>
            </form>
            <div class="footer">
                <h5>Contact us: ....</h5>
            </div>
        </div>

        <script>
            function changeImage(select) {
                var image = document.getElementById("myImage");
                var selectedOption = select.options[select.selectedIndex];
                const list = selectedOption.value.split("-");
                var imageUrl = list[2];
                image.src = imageUrl;
            }
        </script>
    </body>
</html>

