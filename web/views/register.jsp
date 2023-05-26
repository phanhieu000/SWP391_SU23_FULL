<%-- 
    Document   : login
    Created on : 22-05-2023, 20:37:35
    Author     : phanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Register</title>

        <!-- Css Files -->
        <link href="views/css/bootstrap.css" rel="stylesheet">
        <link href="views/css/font-awesome.css" rel="stylesheet">
        <link href="views/css/flaticon.css" rel="stylesheet">
        <link href="views/css/slick-slider.css" rel="stylesheet">
        <link href="views/css/fancybox.css" rel="stylesheet">
        <link href="views/style.css" rel="stylesheet">
        <link href="views/css/color.css" rel="stylesheet">
        <link href="views/css/responsive.css" rel="stylesheet">


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <style>
            .d-flex {
                display: flex!important;
            }

            .justify-content-center {
                justify-content: center
            }

            .sportsmagazine-login-form form ul li input[type="email"],
            .sportsmagazine-login-form form ul li input[type="password"],
            .sportsmagazine-login-form form ul li input[type="text"] {
                margin: 0px;
                color: #999999;
                font-size: 12px;
                height: 40px;
                background-color: #eeeeee;
                padding-left: 21px;
                font-style: italic;
            }
            .sportsmagazine-login-form form ul li input[type="email"],
            .sportsmagazine-login-form form ul li input[type="password"],
            .sportsmagazine-login-form form ul li input[type="text"] {
                float: left;
                width: 100%;
            }
        </style>
    </head>
    <body>

        <!--// Main Wrapper \\-->
        <div class="sportsmagazine-main-wrapper">
            <!--// Header \\-->
            <jsp:include page="common/header/header.jsp" />
            <!--// Header \\-->

            <!--// Main Content \\-->
            <div class="sportsmagazine-main-content">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section sportsmagazine-login-form-full">
                    <div class="container">
                        <div class="row d-flex justify-content-center ">


                            <div class="col-md-6">
                                <div class="sportsmagazine-login-form sportsmagazine-register-form">
                                    <h4>Register Your Account Now</h4>
                                    <form action="" method="POST">
                                        <ul>
                                            <li>
                                                <label class="form-label">Your UserName</label>
                                                <input type="text" placeholder="Enter An UserName" name="userName" >
                                            </li>
                                            <li>
                                                <label class="form-label">Your Email</label>
                                                <input type="email" placeholder="Enter Your Email To Verify !" name="email">
                                            </li>
                                            <li>
                                                <label class="form-label">Password</label>
                                                <input type="password" placeholder="Enter Password" name="password">
                                            </li>
                                            <li>
                                                <label class="form-label">Confirm Password</label>
                                                <input type="password" placeholder="Enter Comfirm Password">
                                            </li>

                                            <li class="d-flex justify-content-center">
                                                <label class="submit-border">
                                                    <input type="submit" value="Register">
                                                    <span></span>
                                                </label>
                                            </li>
                                        </ul>
                                    </form>
                                    <span style="float: right">Not A Member Yet ?<a href="register"> Sign - Up Now !</a></span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--// Main Section \\-->

            </div>
            <!--// Main Content \\-->


            <jsp:include page="common/footer/footer.jsp" />
            <div class="clearfix"></div>
        </div>
        <!--// Main Wrapper \\-->

        <!-- SearchModal -->
        <div class="searchmodal modal fade" id="searchModal" tabindex="-1" role="dialog">
            <a href="#" data-dismiss="modal" class="sportsmagazine-modal-close"><i class="icon-uniF106"></i></a>
            <div class="modal-dialog" role="document">
                <div class="container">
                    <div class="row">
                        <form class="sportsmagazine-search-box">
                            <input type="text" value="Search Your Keyword" onblur="if (this.value == '') {
                                        this.value = 'Search Your Keyword';
                                    }" onfocus="if (this.value == 'Search Your Keyword') {
                                                this.value = '';
                                            }">
                            <input type="submit" value="">
                            <i class="fa fa-search"></i>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- LoginModal -->
        <div class="loginmodal modal fade" id="loginModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="sportsmagazine-login-box">
                    <a href="#" data-dismiss="modal" class="sportsmagazine-login-close sportsmagazine-color"><i class="icon-uniF106"></i></a>
                    <h4>Login To Your Account</h4>
                    <form>
                        <input type="text" value="Enter username*" onblur="if (this.value == '') {
                                    this.value = 'Enter username*';
                                }" onfocus="if (this.value == 'Enter username*') {
                                            this.value = '';
                                        }">
                        <input type="password" value="Password*" onblur="if (this.value == '') {
                                    this.value = 'Password*';
                                }" onfocus="if (this.value == 'Password*') {
                                            this.value = '';
                                        }">
                        <a href="#" class="sportsmagazine-colorhover">Forget Password?</a>
                        <div class="clearfix"></div>
                        <label><input type="submit" value="Sign In" class="sportsmagazine-bordercolor sportsmagazine-color"></label>
                    </form>
                    <h4>Try Our Socials Also</h4>
                    <ul class="login-network">
                        <li><a href="#"><i class="fa fa-facebook-square"></i> Facebook</a></li>
                        <li class="sportsmagazine-twitter"><a href="#"><i class="fa fa-twitter-square"></i> Twitter</a></li>
                        <li class="sportsmagazine-google-plus"><a href="#"><i class="fa fa-google-plus-square"></i> Google+</a></li>
                    </ul>
                    <p>Not A Member Yet ? <a href="#" class="sportsmagazine-color">Sign - Up Now !</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <!-- SignupModal -->
        <div class="loginmodal modal fade" id="signupModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="sportsmagazine-login-box">
                    <a href="#" data-dismiss="modal" class="sportsmagazine-login-close sportsmagazine-color"><i class="icon-uniF106"></i></a>
                    <h4>Sign Up Now</h4>
                    <form>
                        <input type="text" value="Enter username*" onblur="if (this.value == '') {
                                    this.value = 'Enter username*';
                                }" onfocus="if (this.value == 'Enter username*') {
                                            this.value = '';
                                        }">
                        <input type="text" value="Type your password*" onblur="if (this.value == '') {
                                    this.value = 'Type your password*';
                                }" onfocus="if (this.value == 'Type your password*') {
                                            this.value = '';
                                        }">
                        <input type="text" value="Confirm your password*" onblur="if (this.value == '') {
                                    this.value = 'Confirm your password*';
                                }" onfocus="if (this.value == 'Confirm your password*') {
                                            this.value = '';
                                        }">
                        <a href="#" class="sportsmagazine-colorhover">Forget Password?</a>
                        <div class="clearfix"></div>
                        <label><input type="submit" value="Sign Up" class="sportsmagazine-bordercolor sportsmagazine-color"></label>
                    </form>
                    <h4>Try Our Socials Also</h4>
                    <ul class="login-network">
                        <li><a href="#"><i class="fa fa-facebook-square"></i> Facebook</a></li>
                        <li class="sportsmagazine-twitter"><a href="#"><i class="fa fa-twitter-square"></i> Twitter</a></li>
                        <li class="sportsmagazine-google-plus"><a href="#"><i class="fa fa-google-plus-square"></i> Google+</a></li>
                    </ul>
                    <p>Not A Member Yet ? <a href="#" class="sportsmagazine-color">Login - Now !</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>


        <!-- jQuery (necessary for JavaScript plugins) -->
        <script type="text/javascript" src="views/script/jquery.js"></script>
        <script type="text/javascript" src="views/script/bootstrap.min.js"></script>
        <script type="text/javascript" src="views/script/slick.slider.min.js"></script>
        <script type="text/javascript" src="views/script/jquery.countdown.min.js"></script>
        <script type="text/javascript" src="views/script/fancybox.pack.js"></script>
        <script type="text/javascript" src="views/script/isotope.min.js"></script>
        <script type="text/javascript" src="views/script/progressbar.js"></script>
        <script type="text/javascript" src="views/script/counter.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
        <script type="text/javascript" src="views/script/functions.js"></script>

    </body>

</html>
