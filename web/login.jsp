<%-- 
    Document   : login
    Created on : Apr 26, 2023, 12:31:28 AM
    Author     : Thành Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
         <div class="wrapper fadeInDown">
            <div id="formContent">
        
                 <div class="fadeIn first">
                    <img src="data:image/png;base64,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" id="icon" alt="User Icon" />
                </div>
                
        <form action="MainController" method="POST" id="form">
            User ID: <input placeholder="User ID" placeholder="UserID" class="fadeIn second" type="text" name="userID" required="">
            Password:<input placeholder="Password" class="fadeIn third" placeholder="Password"  type="password" name="password" required="">
            <div class="g-recaptcha" data-sitekey="6LcsCv8kAAAAAFrbQiRvDDFPgq7OQCc-y9-QuFTL"></div>
            <div id="error"></div>
            <input value="Login" name="action" hidden=""/>
            <input type="submit" name="action" value="Login">
            <input type="reset" value="Reset">
        </form>
                 <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
			window.onload = function (){
				let isValid = false;
				const form = document.getElementById("form");
				const error = document.getElementById("error");
				
				form.addEventListener("submit", function (event){
					event.preventDefault();
					const response = grecaptcha.getResponse();
					if (response){
						form.submit();
					} else {
						error.innerHTML = "Please check";
					}
				});
			};
		</script>
                
         <div id="formFooter">       
        <a class="underlineHover" href="createUser.html">Sign Up</a>
     </div>
                <font style="color: red">${requestScope.ERROR}</font>
        
    </body>
</html>
<style>


    /* BASIC */

    html {
        background-color: #56baed;
    }

    body {
        font-family: "Poppins", sans-serif;
        height: 100vh;
    }

    a {
        color: #92badd;
        display:inline-block;
        text-decoration: none;
        font-weight: 400;
    }

    h2 {
        text-align: center;
        font-size: 16px;
        font-weight: 600;
        text-transform: uppercase;
        display:inline-block;
        margin: 40px 8px 10px 8px; 
        color: #cccccc;
    }



    /* STRUCTURE */

    .wrapper {
        display: flex;
        align-items: center;
        flex-direction: column; 
        justify-content: center;
        width: 100%;
        min-height: 100%;
        padding: 20px;
    }

    #formContent {
        -webkit-border-radius: 10px 10px 10px 10px;
        border-radius: 10px 10px 10px 10px;
        background: #fff;
        padding: 30px;
        width: 90%;
        max-width: 450px;
        position: relative;
        padding: 0px;
        -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        text-align: center;
    }

    #formFooter {
        background-color: #f6f6f6;
        border-top: 1px solid #dce8f1;
        padding: 25px;
        text-align: center;
        -webkit-border-radius: 0 0 10px 10px;
        border-radius: 0 0 10px 10px;
    }



    /* TABS */

    h2.inactive {
        color: #cccccc;
    }

    h2.active {
        color: #0d0d0d;
        border-bottom: 2px solid #5fbae9;
    }



    /* FORM TYPOGRAPHY*/

    input[type=button], input[type=submit], input[type=reset]  {
        background-color: #56baed;
        border: none;
        color: white;
        padding: 15px 80px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        text-transform: uppercase;
        font-size: 13px;
        -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
        box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
        -webkit-border-radius: 5px 5px 5px 5px;
        border-radius: 5px 5px 5px 5px;
        -webkit-transition: all 0.3s ease-in-out;
        -moz-transition: all 0.3s ease-in-out;
        -ms-transition: all 0.3s ease-in-out;
        -o-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

    input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
        background-color: #39ace7;
    }

    input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
        -moz-transform: scale(0.95);
        -webkit-transform: scale(0.95);
        -o-transform: scale(0.95);
        -ms-transform: scale(0.95);
        transform: scale(0.95);
    }

    input[type=text] {
        background-color: #f6f6f6;
        border: none;
        color: #0d0d0d;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 5px;
        width: 85%;
        border: 2px solid #f6f6f6;
        -webkit-transition: all 0.5s ease-in-out;
        -moz-transition: all 0.5s ease-in-out;
        -ms-transition: all 0.5s ease-in-out;
        -o-transition: all 0.5s ease-in-out;
        transition: all 0.5s ease-in-out;
        -webkit-border-radius: 5px 5px 5px 5px;
        border-radius: 5px 5px 5px 5px;
    }
    input[type=password] {
        background-color: #f6f6f6;
        border: none;
        color: #0d0d0d;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 5px;
        width: 85%;
        border: 2px solid #f6f6f6;
        -webkit-transition: all 0.5s ease-in-out;
        -moz-transition: all 0.5s ease-in-out;
        -ms-transition: all 0.5s ease-in-out;
        -o-transition: all 0.5s ease-in-out;
        transition: all 0.5s ease-in-out;
        -webkit-border-radius: 5px 5px 5px 5px;
        border-radius: 5px 5px 5px 5px;
    }
    input[type=text]:focus {
        background-color: #fff;
        border-bottom: 2px solid #5fbae9;
    }

    input[type=text]:placeholder {
        color: #cccccc;
    }

    input[type=password]:focus {
        background-color: #fff;
        border-bottom: 2px solid #5fbae9;
    }

    input[type=password]:placeholder {
        color: #cccccc;
    }



    /* ANIMATIONS */

    /* Simple CSS3 Fade-in-down Animation */
    .fadeInDown {
        -webkit-animation-name: fadeInDown;
        animation-name: fadeInDown;
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
    }

    @-webkit-keyframes fadeInDown {
        0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
        }
        100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
        }
    }

    @keyframes fadeInDown {
        0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
        }
        100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
        }
    }

    /* Simple CSS3 Fade-in Animation */
    @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
    @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

    .fadeIn {
        opacity:0;
        -webkit-animation:fadeIn ease-in 1;
        -moz-animation:fadeIn ease-in 1;
        animation:fadeIn ease-in 1;

        -webkit-animation-fill-mode:forwards;
        -moz-animation-fill-mode:forwards;
        animation-fill-mode:forwards;

        -webkit-animation-duration:1s;
        -moz-animation-duration:1s;
        animation-duration:1s;
    }

    .fadeIn.first {
        -webkit-animation-delay: 0.4s;
        -moz-animation-delay: 0.4s;
        animation-delay: 0.4s;
    }

    .fadeIn.second {
        -webkit-animation-delay: 0.6s;
        -moz-animation-delay: 0.6s;
        animation-delay: 0.6s;
    }

    .fadeIn.third {
        -webkit-animation-delay: 0.8s;
        -moz-animation-delay: 0.8s;
        animation-delay: 0.8s;
    }

    .fadeIn.fourth {
        -webkit-animation-delay: 1s;
        -moz-animation-delay: 1s;
        animation-delay: 1s;
    }

    /* Simple CSS3 Fade-in Animation */
    .underlineHover:after {
        display: block;
        left: 0;
        bottom: -10px;
        width: 0;
        height: 2px;
        background-color: #56baed;
        content: "";
        transition: width 0.2s;
    }

    .underlineHover:hover {
        color: #0d0d0d;
    }

    .underlineHover:hover:after{
        width: 100%;
    }



    /* OTHERS */

    *:focus {
        outline: none;
    } 

    #icon {
        width:60%;
    }
    .g-recaptcha {
        display: inline-block;
    }

</style>