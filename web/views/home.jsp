<%-- 
    Document   : home
    Created on : 22-05-2023, 21:52:18
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
        <title>Home</title>

        <!-- Css Files -->
        <link href="views/css/bootstrap.css" rel="stylesheet">
        <link href="views/css/font-awesome.css" rel="stylesheet">
        <link href="views/css/flaticon.css" rel="stylesheet">
        <link href="views/css/slick-slider.css" rel="stylesheet">
        <link href="views/css/fancybox.css" rel="stylesheet">
        <link href="views/style.css" rel="stylesheet">
        <link href="views/css/color.css" rel="stylesheet">
        <link href="views/css/responsive.css" rel="stylesheet">
        <!--/!--[if lte IE 9]--> <link rel="stylesheet" href="../../views/css/chosen.html"> <!--[endif]--//-->

        <style>
            .hidden-content {
                overflow: hidden;
                text-overflow: ellipsis;
                line-height: 25px;
                -webkit-line-clamp: 3;
                height: 75px;
                display: -webkit-box;
                -webkit-box-orient: vertical;
            }
        </style>

    </head>
    <body>

        <jsp:useBean class="DAL.PostDAO" id="postDAO" />
        <jsp:useBean class="DAL.CommonForJSP" id="common"/>
        <jsp:useBean class="DAL.AccountDAO" id="ad" />

        <!--// Main Wrapper \\-->
        <div class="sportsmagazine-main-wrapper">

            <!--// Header \\-->
            <jsp:include page="common/header/header.jsp"/>
            <!--// Header \\-->

            <!--// Main Banner \\-->
            <div class="sportsmagazine-banner">

                <!--// Slider \\-->
                <div class="sportsmagazine-banner-one">
                    <div class="sportsmagazine-banner-one-layer">
                        <img src="views/extra-images/banner-1.jpg" alt="">
                        <span class="sportsmagazine-banner-pattren"></span>
                        <div class="sportsmagazine-banner-caption">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="sportsmagazine-banner-wrap">
                                            <h1><span>We Are</span> Developing The <strong class="sportsmagazine-color">Game</strong> <span>Be Our Partner</span></h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante Curabitur lacinia diam tempus tempor consectetur. Sed vitae dignissim purueget aliquam libero.</p>
                                            <a href="404.html" class="sportsmagazine-banner-btn">Read More <span></span></a>
                                        </div>
                                        <div class="sportsmagazine-banner-thumb"> <img src="views/extra-images/banner-thumb-1.png" alt=""> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sportsmagazine-banner-one-layer">
                        <img src="views/extra-images/banner-2.jpg" alt="">
                        <span class="sportsmagazine-banner-pattren"></span>
                        <div class="sportsmagazine-banner-caption">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="sportsmagazine-banner-wrap">
                                            <h1><span>We Are</span> Developing The <strong class="sportsmagazine-color">Soccer</strong> <span>Be Our Partner</span></h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante Curabitur lacinia diam tempus tempor consectetur. Sed vitae dignissim purueget aliquam libero.</p>
                                            <a href="404.html" class="sportsmagazine-banner-btn">Read More <span></span></a>
                                        </div>
                                        <div class="sportsmagazine-banner-thumb"> <img src="views/extra-images/banner-thumb-1.png" alt=""> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--// Slider \\-->

            </div>
            <!--// Main Banner \\-->

            <!--// Main Content \\-->
            <div class="sportsmagazine-main-content">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section">
                    <div class="container">
                        <div class="row">

                            <!--// Fixture Slider \\-->
                            <div class="col-md-12">
                                <div class="sportsmagazine-fixture-slider">
                                    <c:forEach items="${product}" var="item">
                                        <div class="sportsmagazine-fixture-slider-layer">
                                            <time datetime="2008-02-14 20:00">${item.name}</time>
                                            <ul class="sportsmagazine-bgcolor">
                                                <li class="first-child">Price: <span>${item.formatPrice} Đ</span></li>
                                                <li>Size: <span>${item.size.size()} items</span></li>
                                                <li>Color: <span>${item.color.size()} items</span></li>

                                            </ul>
                                        </div>
                                    </c:forEach> 
                                </div>
                            </div>
                            <!--// Fixture Slider \\-->

                            <!--// Content \\-->
                            <div class="col-md-8">

                                <!--// Fancy Title \\--> <div class="sportsmagazine-fancy-title"><h2>New Product</h2></div> <!--// Fancy Title \\-->
                                <!--// Featured Slider \\-->
                                <div class="sportsmagazine-featured-slider">
                                    <c:forEach items="${product}" var="item">
                                        <div class="sportsmagazine-featured-slider-layer">
                                            <img src="views/extra-images/featured-slider-1.jpg" alt="">
                                            <span class="sportsmagazine-black-transparent"></span>
                                            <div class="sportsmagazine-featured-caption">
                                                <h2>${item.name} - ${item.category.title}</h2>
                                                <span class="sportsmagazine-color">${item.formatPrice} vnd / 1</span>
                                            </div>
                                        </div>
                                    </c:forEach>


                                </div>
                                <!--// Featured Slider \\-->

                                <!--// Fancy Title \\--> <div class="sportsmagazine-fancy-title"><h2>Latest Posts</h2></div> <!--// Fancy Title \\-->
                                <!--// Blog's \\-->
                                <div class="sportsmagazine-blog sportsmagazine-blog-grid">
                                    <ul class="row">
                                        <c:forEach items="${postDAO.getXNewPost(4)}" var="item">
                                            <li class="col-md-6">
                                                <figure>
                                                    <a href="postdetail?id=${item.id}"><img style="max-height: 30vh" src="${item.image.size() != 0 ? item.image.get(0).url : 'views/extra-images/latest-blog-3.jpg'}" alt="ss"></a>
                                                    <figcaption>
                                                        <span><small>New</small></span>
                                                        <a href="postdetail?id=${item.id}" class="sportsmagazine-link-btn"><i class="fa fa-link"></i></a>
                                                    </figcaption>
                                                </figure>
                                                <section>
                                                    <h2><a href="postdetail?id=${item.id}">${item.title}</a></h2>
                                                    <p class="hidden-content">${item.detail}</p>
                                                </section>
                                                <div class="sportsmagazine-blog-grid-options">
                                                    <a href="postdetail?id=${item.id}" class="sportsmagazine-blog-grid-thumb">Author: ${ad.getAccountByID(item.ownerID).fullName}</a>
                                                    <ul>
                                                        <li><i class="fa fa-thumbs-o-up"></i> <a href="404.html">${item.like}</a></li>
                                                        <li><i class="fa fa-eye"></i> <a href="404.html">${item.view}</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <!--// Blog's \\-->

                            </div>
                            <!--// Content \\-->

                            <!--// SideBaar \\-->
                            <aside class="col-md-4">

                                <!--// Widget TeamRanking \\-->
                                <div class="widget widget_team_ranking">
                                    <div class="sportsmagazine-fancy-title"><h2>Top Product Seller</h2></div>
                                    <div class="ranking-title-table">
                                        <ul class="ranking-title-row">
                                            <li>Name</li>
                                            <li>Price</li>
                                            <li>Seller</li>
                                        </ul>
                                    </div>
                                    <c:forEach items="${product}" var="item">
                                        <div class="ranking-content-table">
                                            <ul class="ranking-content-row">
                                                <li>${item.name}</li>
                                                <li>${item.formatPrice}</li>
                                                <li>08</li>
                                            </ul>
                                        </div>
                                    </c:forEach>


                                </div>
                                <!--// Widget TeamRanking \\-->

                                <!--// Widget Popular News \\-->
                                <div class="widget widget_popular_news">
                                    <div class="sportsmagazine-fancy-title"><h2>Popular Post</h2></div>
                                    <ul>
                                        <c:set var="no" value="0"/> 
                                        <c:forEach items="${postDAO.getTopXPopularPost(5)}" var="item">
                                            <c:set var="no" value="${no+1}"/>
                                            <li>
                                                <span>${no}</span>
                                                <div class="popular_news_text">
                                                    <a href="blog-detail.html">${item.title}</a>
                                                    <time datetime="2008-02-14 20:00">${common.formatDate(item.createDate, 'MMMM, dd-yyyy')}</time>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <!--// Widget Popular News \\-->

                                <!--// Widget Add \\-->
                                <div class="widget widget_add">
                                    <img src="views/extra-images/add.jpg" alt="">
                                </div>
                                <!--// Widget Add \\-->

                            </aside>
                            <!--// SideBaar \\-->

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
        <script type="text/javascript" src="views/script/functions.js"></script>

    </body>

</html>
