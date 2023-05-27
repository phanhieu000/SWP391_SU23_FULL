<%-- 
    Document   : shop
    Created on : 24-05-2023, 00:14:41
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
        <title>SportsMagazine Shop Grid WLS</title>

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

        <jsp:useBean class="DAL.CategoryDAO" id="cd"/>

        <!--// Main Wrapper \\-->
        <div class="sportsmagazine-main-wrapper">

            <!--// Header \\-->
            <jsp:include page="common/header/header.jsp" />
            <!--// Header \\-->

            <!--// Main Content \\-->
            <div class="sportsmagazine-main-content">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section sportsmagazine-shop-gridfull">
                    <div class="container">
                        <div class="row">

                            <!--// SideBar \\-->
                            <aside class="col-md-3">



                                <!--// Widget Cetagories \\-->
                                <div class="sportsmagazine-widget-heading"><h2>Cetagories</h2></div>
                                <div class="widget widget_cetagories">
                                    <ul>
                                        <c:forEach items="${cd.all}" var="item">
                                            <li><a href="404.html"><input type="checkbox" name="name" style="margin-right: 1rem">${item.title} </a></li>
                                                </c:forEach>
                                    </ul>
                                </div>
                                <!--// Widget Cetagories \\-->

                                <!--// Widget Popular Post \\-->
                                <div class="sportsmagazine-widget-heading"><h2>Popular Posts</h2></div>
                                <div class="widget widget_popular_post">
                                    <ul>
                                        <c:forEach begin="1" end="3" var="i">
                                            <li>
                                                <div class="sportsmagazine-popular-post">
                                                    <figure><a href="blog-detail.html"><img src="views/extra-images/widget-popular-post1.jpg" alt=""></a></figure>
                                                    <div class="sportsmagazine-popular-post-text">
                                                        <h5><a href="blog-detail.html">Mark Johnson has as acture and is gona ${i}</a></h5>
                                                        <time datetime="2008-02-14 20:00">August 23rd, 2016</time>
                                                    </div>
                                                    <span></span>
                                                </div>
                                            </li>
                                        </c:forEach>

                                        
                                    </ul>
                                </div>
                                <!--// Widget Popular Post \\-->


                            </aside>
                            <!--// SideBar \\-->

                            <div class="col-md-9">
                                <div class="sportsmagazine-shop sportsmagazine-shop-grid">
                                    <ul class="row">
                                        <c:forEach items="${data}" var="item">
                                            <li class="col-md-4">
                                                <figure>
                                                    <a href="shopdetail?id=${item.id}"><img src="views/extra-images/shop-grid-img1.jpg" alt=""><i class="fa fa-shopping-cart"></i></a>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:69%"></span></div>
                                                </figure>
                                                <section>
                                                    <h5><a href="shopdetail?id=${item.id}">${item.name}</a></h5>
                                                    <span class="price-cart"><del>${item.formatPriceFake} VND </del> ${item.formatPrice} VND</span>
                                                    <span></span>
                                                </section>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>
                                <!--// Pagination \\-->
                                <div class="sportsmagazine-pagination">
                                    <ul class="page-numbers">
                                        <li>
                                            <a class="previous page-numbers" href="shop?page=${page > 1 ? page-1 : page}">
                                                <span aria-label="Next"><i class="fa fa-angle-left"></i></span></a>
                                        </li>
                                        <c:forEach begin="1" end="${numberPage}" var="i">
                                            <li><a class="page-numbers ${(page == i) ? 'current' : ''}" href="shop?page=${i}">${i}</a></li>

                                        </c:forEach>

                                        <li>
                                            <a class="next page-numbers" href="shop?page=${page < numberPage ? page+1 : page}">
                                                <span aria-label="Next"><i class="fa fa-angle-right"></i></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!--// Pagination \\-->
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
