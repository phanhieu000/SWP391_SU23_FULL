<%-- 
    Document   : post
    Created on : 23-05-2023, 23:48:16
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
        <title>SportsMagazine Blog Large WLS</title>

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



            <!--// Main Content \\-->
            <div class="sportsmagazine-main-content">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section sportsmagazine-bloglarge-full">
                    <div class="container">
                        <div class="row">

                            <!--// SideBar \\-->
                            <aside class="col-md-3">

                                <!--// Widget Popular Post \\-->
                                <div class="sportsmagazine-widget-heading"><h2>Popular Posts</h2></div>
                                <div class="widget widget_popular_post">
                                    <ul>
                                        <li>
                                            <div class="sportsmagazine-popular-post">
                                                <figure><a href="blog-detail.html"><img src="views/extra-images/widget-popular-post1.jpg" alt=""></a></figure>
                                                <div class="sportsmagazine-popular-post-text">
                                                    <h5><a href="blog-detail.html">Mark Johnson has as acture and is gona</a></h5>
                                                    <time datetime="2008-02-14 20:00">August 23rd, 2016</time>
                                                </div>
                                                <span></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sportsmagazine-popular-post">
                                                <figure><a href="blog-detail.html"><img src="views/extra-images/widget-popular-post2.jpg" alt=""></a></figure>
                                                <div class="sportsmagazine-popular-post-text">
                                                    <h5><a href="blog-detail.html">Mark Johnson has as acture and is gona</a></h5>
                                                    <time datetime="2008-02-14 20:00">August 23rd, 2016</time>
                                                </div>
                                                <span></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sportsmagazine-popular-post">
                                                <figure><a href="blog-detail.html"><img src="views/extra-images/widget-popular-post3.jpg" alt=""></a></figure>
                                                <div class="sportsmagazine-popular-post-text">
                                                    <h5><a href="blog-detail.html">Mark Johnson has as acture and is gona</a></h5>
                                                    <time datetime="2008-02-14 20:00">August 23rd, 2016</time>
                                                </div>
                                                <span></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sportsmagazine-popular-post">
                                                <figure><a href="blog-detail.html"><img src="views/extra-images/widget-popular-post4.jpg" alt=""></a></figure>
                                                <div class="sportsmagazine-popular-post-text">
                                                    <h5><a href="blog-detail.html">Mark Johnson has as acture and is gona</a></h5>
                                                    <time datetime="2008-02-14 20:00">August 23rd, 2016</time>
                                                </div>
                                                <span></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!--// Widget Popular Post \\-->

                                <!--// Widget Cetagories \\-->
                                <div class="sportsmagazine-widget-heading"><h2>Cetagories</h2></div>
                                <div class="widget widget_cetagories">
                                    <ul>
                                        <li><a href="404.html">Championship <span>( 13 )</span></a></li>
                                        <li><a href="404.html">Super Ball <span>( 12 )</span></a></li>
                                        <li><a href="404.html">Football <span>( 04 )</span></a></li>
                                        <li><a href="404.html">Boxing <span>( 08 )</span></a></li>
                                        <li><a href="404.html">BasketBall <span>( 13 )</span></a></li>
                                    </ul>
                                </div>
                                <!--// Widget Cetagories \\-->


                                <!--// Widget Flicker Images \\-->
                                <div class="sportsmagazine-widget-heading"><h2>Flicker Images</h2></div>
                                <div class="widget widget_gallery">
                                    <ul>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-1.jpg" class="fancybox"><img src="views/extra-images/flicker-image-1.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-2.jpg" class="fancybox"><img src="views/extra-images/flicker-image-2.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-3.jpg" class="fancybox"><img src="views/extra-images/flicker-image-3.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-4.jpg" class="fancybox"><img src="views/extra-images/flicker-image-4.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-5.jpg" class="fancybox"><img src="views/extra-images/flicker-image-5.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-6.jpg" class="fancybox"><img src="views/extra-images/flicker-image-6.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-7.jpg" class="fancybox"><img src="views/extra-images/flicker-image-7.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-8.jpg" class="fancybox"><img src="views/extra-images/flicker-image-8.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                        <li><a data-fancybox-group="group" href="views/extra-images/flicker-image-9.jpg" class="fancybox"><img src="views/extra-images/flicker-image-9.jpg" alt=""><i class="fa fa-angle-double-right"></i></a></li>
                                    </ul>
                                </div>
                                <!--// Widget Flicker Images \\-->

                            </aside>
                            <!--// SideBar \\-->

                            <div class="col-md-9">
                                <div class="sportsmagazine-blog sportsmagazine-bloglarge">
                                    <ul class="row">
                                        <c:forEach begin="1" end="5" var="i">
                                            <li class="col-md-12">
                                                <figure><a href="postdetail?id=${i}"><img src="views/extra-images/blog-large-img1.jpg" alt=""><i class="fa fa-link"></i></a></figure>
                                                <div class="sportsmagazine-bloglarge-text">
                                                    <time datetime="2008-02-14 20:00">August 21st, 2017</time>
                                                    <h3><a href="postdetail?id=${i}">The new eco friendly stadium won a Leafy power break fast regimen Award in 2016</a></h3>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus tem cons ectetur. Sed vitae dignissim purus, eget aliquam libero. Duis et arcu a erat venenatis ornare eget nec urna.vNulla volu tpat luctus venenatis. Aliquam tellus dui, luctus nec.</p>
                                                    <a href="postdetail?id=${i}" class="sportsmagazine-readmore-btn">READ MORE <i class="fa fa-arrow-circle-o-right"></i></a>
                                                    <ul class="sportsmagazine-article-options">
                                                        <li><a href="#404.html"><i class="fa fa-thumbs-o-up"></i> 320</a></li>
                                                        <li><a href="#404.html"><i class="fa fa-eye"></i> 840</a></li>
                                                        <li><a href="#404.html"><i class="fa fa-user"></i> Julia Martyn</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </c:forEach>


                                    </ul>
                                </div>
                                <!--// Pagination \\-->
                                <div class="sportsmagazine-pagination">
                                    <ul class="page-numbers">
                                        <li><a class="previous page-numbers" href="404.html"><span aria-label="Next"><i class="fa fa-angle-left"></i></span></a></li>
                                        <li><span class="page-numbers current">1</span></li>
                                        <li><a class="page-numbers" href="404.html">2</a></li>
                                        <li><a class="page-numbers" href="404.html">3</a></li>
                                        <li><a class="page-numbers" href="404.html">4</a></li>
                                        <li><a class="next page-numbers" href="404.html"><span aria-label="Next"><i class="fa fa-angle-right"></i></span></a></li>
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
