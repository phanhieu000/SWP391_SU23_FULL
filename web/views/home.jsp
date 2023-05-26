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
        <title>SportsMagazine Home Page</title>

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


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

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
                                        <li class="col-md-6">
                                            <figure>
                                                <a href="blog-detail.html"><img src="views/extra-images/latest-blog-1.jpg" alt=""></a>
                                                <figcaption>
                                                    <span><small>Featured</small></span>
                                                    <a href="blog-detail.html" class="sportsmagazine-link-btn"><i class="fa fa-link"></i></a>
                                                </figcaption>
                                            </figure>
                                            <section>
                                                <h2><a href="blog-detail.html">The new eco friendly stadium won a Leafy Award in 2016</a></h2>
                                                <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui. Curabitr dignissi luctus nisi id euismod. feugiat eros. Pellentesque tempus tortor.</p>
                                            </section>
                                            <div class="sportsmagazine-blog-grid-options">
                                                <a href="blog-detail.html" class="sportsmagazine-blog-grid-thumb"><img src="views/extra-images/blog-thumb-1.jpg" alt=""> Julia Martyn</a>
                                                <ul>
                                                    <li><i class="fa fa-thumbs-o-up"></i> <a href="404.html">320</a></li>
                                                    <li><i class="fa fa-eye"></i> <a href="404.html">840</a></li>
                                                    <li><i class="fa fa-share-alt"></i> <a href="404.html">89</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="col-md-6 sportsmagazine-the-league">
                                            <figure>
                                                <a href="blog-detail.html"><img src="views/extra-images/latest-blog-2.jpg" alt=""></a>
                                                <figcaption>
                                                    <span><small>The League</small></span>
                                                    <a href="blog-detail.html" class="sportsmagazine-link-btn"><i class="fa fa-link"></i></a>
                                                </figcaption>
                                            </figure>
                                            <section>
                                                <h2><a href="blog-detail.html">Michael Bryan was chosen as best player with 45 points</a></h2>
                                                <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui. Curabitr dignissi luctus nisi id euismod. feugiat eros. Pellentesque tempus tortor.</p>
                                            </section>
                                            <div class="sportsmagazine-blog-grid-options">
                                                <a href="blog-detail.html" class="sportsmagazine-blog-grid-thumb"><img src="views/extra-images/blog-thumb-1.jpg" alt=""> Julia Martyn</a>
                                                <ul>
                                                    <li><i class="fa fa-thumbs-o-up"></i> <a href="404.html">320</a></li>
                                                    <li><i class="fa fa-eye"></i> <a href="404.html">840</a></li>
                                                    <li><i class="fa fa-share-alt"></i> <a href="404.html">89</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="sportsmagazine-blog sportsmagazine-blog-grid">
                                            <ul class="row">
                                                <li class="col-md-12 sportsmagazine-the-team">
                                                    <figure>
                                                        <a href="blog-detail.html"><img src="views/extra-images/latest-blog-3.jpg" alt=""></a>
                                                        <figcaption>
                                                            <span><small>The Team</small></span>
                                                            <a href="blog-detail.html" class="sportsmagazine-link-btn"><i class="fa fa-link"></i></a>
                                                        </figcaption>
                                                    </figure>
                                                    <section>
                                                        <h2><a href="blog-detail.html">The vicotory againts The Shark brings us close to the Final</a></h2>
                                                        <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui. Curabitr dignissi luctus nisi id euismod. feugiat eros. Pellentesque tempus tortor.</p>
                                                    </section>
                                                    <div class="sportsmagazine-blog-grid-options">
                                                        <a href="blog-detail.html" class="sportsmagazine-blog-grid-thumb"><img src="views/extra-images/blog-thumb-1.jpg" alt=""> Julia Martyn</a>
                                                        <ul>
                                                            <li><i class="fa fa-thumbs-o-up"></i> <a href="404.html">320</a></li>
                                                            <li><i class="fa fa-eye"></i> <a href="404.html">840</a></li>
                                                            <li><i class="fa fa-share-alt"></i> <a href="404.html">89</a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sportsmagazine-blog sportsmagazine-blog-list">
                                            <ul class="row">
                                                <li class="col-md-12">
                                                    <div class="sportsmagazine-blog-list-wrap">
                                                        <span>The Team</span>
                                                        <h6><a href="blog-detail.html">The victry againts The Shark bring us closer to the Final</a></h6>
                                                        <time datetime="2008-02-14 20:00">August 23rd, 2017</time>
                                                        <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui.</p>
                                                    </div>
                                                </li>
                                                <li class="col-md-12 playoffs">
                                                    <div class="sportsmagazine-blog-list-wrap">
                                                        <span>Playoffs</span>
                                                        <h6><a href="blog-detail.html">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                                        <time datetime="2008-02-14 20:00">August 23rd, 2017</time>
                                                        <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui.</p>
                                                    </div>
                                                </li>
                                                <li class="col-md-12 playoffs">
                                                    <div class="sportsmagazine-blog-list-wrap">
                                                        <span>Playoffs</span>
                                                        <h6><a href="blog-detail.html">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                                        <time datetime="2008-02-14 20:00">August 23rd, 2017</time>
                                                        <p>Lorem ipsum dolor sit amet, consecttur adipis elit. Vestibulum a nunc dui.</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!--// Blog's \\-->

                                <!--// Advertisement \\-->
                                <figure class="sportsmagazine-add-banner">
                                    <img src="views/extra-images/add-thumb-1.jpg" alt="">
                                    <span class="sportsmagazine-add-transparent"></span>
                                    <figcaption>
                                        <div class="sportsmagazine-addbanner-caption">
                                            <h2>Take a look at the brand New Uniforms for next season</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Utac malesuada ante. Curabitur lacinia.</p>
                                            <a href="404.html" class="sportsmagazine-banner-btn">Read More <span></span></a>
                                        </div>
                                    </figcaption>
                                </figure>
                                <!--// Advertisement \\-->



                                <!--// Fancy Title \\--> <div class="sportsmagazine-fancy-title"><h2>Club Media</h2></div> <!--// Fancy Title \\-->
                                <div class="sportsmagazine-gallery sportsmagazine-fixture-gallery">
                                    <ul>
                                        <c:forEach items="${product}" var="item">
                                            <li>
                                                <figure>
                                                    <a data-fancybox-group="group" href="views/extra-images/gallery-modren-img1.jpg" class="fancybox"><img src="views/extra-images/gallery-modren-img1.jpg" alt=""><i class="icon-signs23"></i></a>
                                                    <span>12 Photos</span>
                                                    <figcaption>
                                                        <h6><a href="#">The Champion Final will be played</a></h6>
                                                        <time datetime="2008-02-14 20:00">May 17th, 2017</time>
                                                    </figcaption>
                                                </figure>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

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
                                    <div class="sportsmagazine-fancy-title"><h2>Popular News</h2></div>
                                    <ul>
                                        <li>
                                            <span>01</span>
                                            <div class="popular_news_text">
                                                <small>The Team</small>
                                                <a href="blog-detail.html">Basketball Stadium will a max capacity for 5000 fans</a>
                                                <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                            </div>
                                        </li>
                                        <li class="widget-injuries">
                                            <span>02</span>
                                            <div class="popular_news_text">
                                                <small>Injuries</small>
                                                <a href="blog-detail.html">The Clovers defense must reinvent itself without</a>
                                                <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                            </div>
                                        </li>
                                        <li class="widget-theleague">
                                            <span>03</span>
                                            <div class="popular_news_text">
                                                <small>The League</small>
                                                <a href="blog-detail.html">Take look to the brand new helmets for next season</a>
                                                <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                            </div>
                                        </li>
                                        <li>
                                            <span>04</span>
                                            <div class="popular_news_text">
                                                <small>The Team</small>
                                                <a href="blog-detail.html">The Basketball women division started training</a>
                                                <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                            </div>
                                        </li>
                                        <li>
                                            <span>05</span>
                                            <div class="popular_news_text">
                                                <small>The Team</small>
                                                <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!--// Widget Popular News \\-->

                                <!--// Widget Trending News \\-->
                                <div class="widget widget_trending_news">
                                    <div class="sportsmagazine-fancy-title"><h2>Top Trending News</h2></div>
                                    <!-- Nav tabs -->
                                    <ul class="nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Newset</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Most Commented</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Populer</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                            <div class="widget_popular_news">
                                                <ul>
                                                    <li>
                                                        <div class="popular_news_text">
                                                            <small>The Team</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                    <li class="widget-injuries">
                                                        <div class="popular_news_text">
                                                            <small>Injuries</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                    <li class="widget-theleague">
                                                        <div class="popular_news_text">
                                                            <small>The League</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                            <div class="widget_popular_news">
                                                <ul>
                                                    <li class="widget-injuries">
                                                        <div class="popular_news_text">
                                                            <small>Injuries</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="popular_news_text">
                                                            <small>The Team</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                            <div class="widget_popular_news">
                                                <ul>
                                                    <li class="widget-theleague">
                                                        <div class="popular_news_text">
                                                            <small>The League</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="popular_news_text">
                                                            <small>The Team</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                    <li class="widget-injuries">
                                                        <div class="popular_news_text">
                                                            <small>Injuries</small>
                                                            <a href="blog-detail.html">Basketball Stadium will  a max capacity for 5000 fans</a>
                                                            <time datetime="2008-02-14 20:00">December 21, 2017</time>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus.</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--// Widget Trending News \\-->





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
