<%-- 
    Document   : comfirmMail
    Created on : 26-05-2023, 12:44:31
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
        <title>Comfirm Mail</title>

        <!-- Css Files -->
        <link href="views/css/bootstrap.css" rel="stylesheet">
        <link href="views/css/font-awesome.css" rel="stylesheet">
        <link href="views/css/flaticon.css" rel="stylesheet">
        <link href="views/css/slick-slider.css" rel="stylesheet">
        <link href="views/css/fancybox.css" rel="stylesheet">
        <link href="views/style.css" rel="stylesheet">
        <link href="views/css/color.css" rel="stylesheet">
        <link href="views/css/responsive.css" rel="stylesheet">



    </head>
    <body>

        <!--// Main Wrapper \\-->
        <div class="sportsmagazine-main-wrapper">

            <!--// Header \\-->
            <jsp:include page="common/header/header.jsp" />
            <!--// Header \\-->

            <jsp:useBean class="DAL.CommonForJSP" id="common"/>


            <!--// Main Content \\-->
            <div class="sportsmagazine-main-content">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section sportsmagazine-contactus-full">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12">
                                <div class="sportsmagazine-fancy-title-two"><h2>Confirm Mail <span></span></h2></div>
                            </div>
                            <div class="col-md-9">
                                <div class="sportsmagazine-contact-form">
                                    <form action="" method="POST">
                                        <ul>

                                            <li>
                                                <label>Email:</label>
                                                <p>
                                                    <input placeholder="Enter Your Email" name="email" id="emailConfirm" type="text" required>
                                                    <span><i class="fa fa-envelope"></i></span>
                                                </p>
                                            </li>
                                            <li>
                                                <label>Code: </label>
                                                <p>
                                                    <input placeholder="Enter Code on Your Email" name="code"  type="text" required>
                                                    <span><i class="fa fa-keyboard-o"></i></span>
                                                </p>
                                            </li>

                                            <c:if test="${message != null}" >
                                                <span>${message}</span>

                                            </c:if> 

                                            <li class="d-flex ">
                                                <p><label><input value="Confirm" type="submit"></label></p>
                                                <!--<input value="Send Code Again !" type="button" onclick="sendMail()">-->


                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <ul class="sportsmagazine-contact-us-text">
                                    <li>
                                        <h4>Send Us Message !!!</h4>
                                        <p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Ut ac malesuada antes urabitur lacinia</p>
                                    </li>
                                    <li>
                                        <h4>Open Practices</h4>
                                        <p>Lorem ipsum dolor sit amet, consectet adipiscing elit. Ut ac malesuada antes urabitur lacinia</p>
                                        <time datetime="2008-02-14 20:00">Timings: <span>9:00am to 12:00pm</span></time>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <!--// Main Section \\-->



            </div>
            <!--// Main Content \\-->

            <!--// Footer \\-->
            <jsp:include page="common/footer/footer.jsp" />
            <!--// Footer \\-->

            <div class="clearfix"></div>
        </div>
        <!--// Main Wrapper \\-->

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
