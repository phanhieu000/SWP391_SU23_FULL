<%-- 
    Document   : contact
    Created on : 27-05-2023, 18:49:33
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
        <title>Contact</title>

        <!-- Css Files -->
        <link href="views/css/bootstrap.css" rel="stylesheet">
        <link href="views/css/font-awesome.css" rel="stylesheet">
        <link href="views/css/flaticon.css" rel="stylesheet">
        <link href="views/css/slick-slider.css" rel="stylesheet">
        <link href="views/css/fancybox.css" rel="stylesheet">
        <link href="views/style.css" rel="stylesheet">
        <link href="views/css/color.css" rel="stylesheet">
        <link href="views/css/responsive.css" rel="stylesheet">


        <style>
            span {
                color: #999999;
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
                <div class="sportsmagazine-main-section sportsmagazine-player-listfull">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12">
                                <div class="sportsmagazine-player sportsmagazine-player-list">
                                    <ul class="row">
                                        <c:forEach items="${data}" var="item">
                                            <li class="col-md-6">
                                                <figure><a href="#!"><img style="max-height: 286px; min-height: 286px" src="${item.images}" alt=""><i class="fa fa-link"></i></a></figure>
                                                <div class="sportsmagazine-player-list-text">

                                                    <h5><a href="#!">${item.storeName}</a></h5>
                                                    <span>Địa Chỉ: ${item.storeAddress}</span><br/>
                                                    <span>Điện Thoại: ${item.storePhone}</span><br/>
                                                    <span>Time: ${item.startWorking} - ${item.endWorking}</span>

                                                    <ul class="sportsmagazine-player-social">
                                                        <li><a href="https://www.facebook.com/phanhieu000" target="_blank" class="icon-facebook2"></a></li>
                                                        <li><a href="https://plus.google.com/" class="icon-google-plus2"></a></li>
                                                        <li><a href="#!" class=" icon-linkedin"></a></li>
                                                        <li><a href="#!" class="icon-social62"></a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </c:forEach>


                                    </ul>
                                </div>

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
