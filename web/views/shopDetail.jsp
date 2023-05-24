<%-- 
    Document   : shopDetail
    Created on : 24-05-2023, 00:24:52
    Author     : phanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>SportsMagazine Shop Detail</title>

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
            <div class="sportsmagazine-main-content sportsmagazine-main-contentminus">

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section sportsmagazine-thumb sportsmagazine-shop-thumb">
                    <span class="thumb-transparent"></span>
                    <div class="container">
                        <div class="row">

                            <div class="col-md-4">
                                <figure class="sportsmagazine-thumb-img"><img src="views/extra-images/shop-thumb-1.png" alt=""></figure>
                            </div>
                            <div class="col-md-8">
                                <div class="sportsmagazine-shop-summery">
                                    <h2>Sundown Sneakers</h2>
                                    <span class="sportsmagazine-price-cartbox">
                                        <del>$50.00</del>
                                        $39.99
                                    </span>
                                    <div class="star-rating"><span class="star-rating-box" style="width:69%"></span></div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Cura bitur lacinia diam tempus tempor consectetur. </p>
                                    <ul class="sportsmagazine-summery-option">
                                        <li>
                                            <label>Quantity</label>
                                            <input name="quantity" min="01" max="10" type="number" value="1">
                                        </li>
                                        <li>
                                            <label>Size</label>
                                            <input name="quantity" min="5" max="40" type="number" value="5">
                                        </li>
                                        <li>
                                            <label>Size</label>
                                            <a href="#" class="white-color"></a>
                                            <a href="#" class="red-color"></a>
                                            <a href="#" class="yellow-color"></a>
                                            <a href="#" class="orange-color"></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                    <a href="shopping-cart.html" class="sportsmagazine-banner-btn">Add To Cart <span></span></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--// Main Section \\-->

                <!--// Main Section \\-->
                <div class="sportsmagazine-main-section">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-9">
                                <!--// Tabs \\-->
                                <div class="sportsmagazine-shop-tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav-tabs" role="tablist">
                                        <li role="presentation" class="shapes active"><a class="shape-one" href="#home" aria-controls="home" role="tab" data-toggle="tab">Description <span></span></a></li>
                                        <li role="presentation" class="shapes-two "><a class="shape-two" href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Review (01) <span></span></a></li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                            <div class="sportsmagazine-section-heading"><h2>Product Description</h2></div>
                                            <div class="sportsmagazine-description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur libero enim, lacinia finibus ante et, imperdiet finibus risus. Donec malesuada luctus elit nec hendrerit.Integer ex sapien, eleifend sit amet tellus ut, porttitor dictum velit. Nulla scelerisque, nisl eu maximus bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur libero enim, lacinia finibus ante et, imperdiet finibus risus. Donec malesuada luctus elit nec hendrerit.Integer ex sapien, eleifend sit amet tellus ut, porttitor dictum velit. Nulla scelerisque,</p>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane " id="profile">
                                            <div class="comments-area">
                                                <!--// coments \\-->
                                                <ul class="comment-list">
                                                    <li>
                                                        <div class="thumb-list">
                                                            <figure><img alt="" src="views/extra-images/comment-img1.jpg"></figure>
                                                            <div class="text-holder">
                                                                <h6>Albert Darren</h6>
                                                                <time class="post-date" datetime="2008-02-14 20:00">1 Hour Ago </time>
                                                                <a class="comment-reply-link" href="#">Reply</a>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus tempor consectetur. Sed vitae dignissim purus, eget aliquam libero. Duis et arcu a erat venenatis ornare eget nec urna.</p>
                                                        </div>
                                                        <div class="thumb-list">
                                                            <figure><img alt="" src="views/extra-images/comment-img2.jpg"></figure>
                                                            <div class="text-holder">
                                                                <h6>Albert Darren</h6>
                                                                <time class="post-date" datetime="2008-02-14 20:00">1 Hour Ago </time>
                                                                <a class="comment-reply-link" href="#">Reply</a>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus tempor consectetur. Sed vitae dignissim purus, eget aliquam libero. Duis et arcu a erat venenatis ornare eget nec urna.</p>
                                                        </div>
                                                        <ul class="children">
                                                            <li>
                                                                <div class="thumb-list">
                                                                    <figure><img alt="" src="views/extra-images/comment-img3.jpg"></figure>
                                                                    <div class="text-holder">
                                                                        <h6>Jeans Morris</h6>
                                                                        <time class="post-date" datetime="2008-02-14 20:00">1 Hour Ago </time>
                                                                        <a class="comment-reply-link" href="#">Reply</a>
                                                                    </div>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus tempor consetur ed vit dignissim purus, eget aliquam libero. Duis et arcu a erat venenatis ornare eget nec urna.</p>
                                                                </div>
                                                            </li>
                                                            <!-- #comment-## -->
                                                        </ul>
                                                        <!-- .children -->
                                                    </li>
                                                    <!-- #comment-## -->
                                                    <li>
                                                        <div class="thumb-list">
                                                            <figure><img alt="" src="views/extra-images/comment-img4.jpg"></figure>
                                                            <div class="text-holder">
                                                                <h6>Ricky David</h6>
                                                                <time class="post-date" datetime="2008-02-14 20:00">1 Hour Ago </time>
                                                                <a class="comment-reply-link" href="#">Reply</a>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac malesuada ante. Curabitur lacinia diam tempus tempor consectetur. Sed vitae dignissim purus, eget aliquam libero. Duis et arcu a erat venenatis ornare eget nec urna.</p>
                                                        </div>
                                                    </li>
                                                    <!-- #comment-## -->
                                                </ul>
                                                <!--// coments \\-->
                                                <!--// comment-respond \\-->
                                                <div class="comment-respond sportsmagazine-contact-form">
                                                    <div class="sportsmagazine-section-heading"><h2>Write A Comment</h2></div>
                                                    <form>
                                                        <ul>
                                                            <li>
                                                                <label>Name:</label>
                                                                <p>
                                                                    <input value="Type here" onblur="if (this.value == '') {
                                                                    this.value = 'Type here';
                                                                }" onfocus="if (this.value == 'Type here') {
                                                                            this.value = '';
                                                                        }" type="text">
                                                                    <span><i class="fa fa-user"></i></span>
                                                                </p>
                                                            </li>
                                                            <li>
                                                                <label>Email:</label>
                                                                <p>
                                                                    <input value="Type here" onblur="if (this.value == '') {
                                                                    this.value = 'Type here';
                                                                }" onfocus="if (this.value == 'Type here') {
                                                                            this.value = '';
                                                                        }" type="text">
                                                                    <span><i class="fa fa-envelope"></i></span>
                                                                </p>
                                                            </li>
                                                            <li class="full-input">
                                                                <label>Comment:</label>
                                                                <p>
                                                                    <textarea name="u_msg" placeholder="Type here"></textarea>
                                                                    <span><i class="fa fa-comment"></i></span>
                                                                </p>

                                                            </li>
                                                            <li>
                                                                <p><label><input value="Submit" type="submit"></label></p>
                                                            </li>
                                                        </ul>
                                                    </form>
                                                </div>
                                                <!--// comment-respond \\-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--// Tabs \\-->
                                <div class="sportsmagazine-section-heading"><h2>Related Products</h2></div>
                                <div class="sportsmagazine-shop sportsmagazine-shop-grid">
                                    <ul class="row">
                                        <li class="col-md-4">
                                            <figure>
                                                <a href="shop-detail.html"><img src="views/extra-images/shop-grid-img1.jpg" alt=""><i class="fa fa-shopping-cart"></i></a>
                                                <div class="star-rating"><span class="star-rating-box" style="width:69%"></span></div>
                                            </figure>
                                            <section>
                                                <h5><a href="shop-detail.html">Atlantic Sneaker</a></h5>
                                                <span class="price-cart"><del>$ 30.00</del> $19.00</span>
                                                <span></span>
                                            </section>
                                        </li>
                                        <li class="col-md-4">
                                            <figure>
                                                <a href="shop-detail.html"><img src="views/extra-images/shop-grid-img2.jpg" alt=""><i class="fa fa-shopping-cart"></i></a>
                                                <div class="star-rating"><span class="star-rating-box" style="width:69%"></span></div>
                                            </figure>
                                            <section>
                                                <h5><a href="shop-detail.html">Atlantic Sneaker</a></h5>
                                                <span class="price-cart"><del>$ 30.00</del> $19.00</span>
                                                <span></span>
                                            </section>
                                        </li>
                                        <li class="col-md-4">
                                            <figure>
                                                <a href="shop-detail.html"><img src="views/extra-images/shop-grid-img3.jpg" alt=""><i class="fa fa-shopping-cart"></i></a>
                                                <div class="star-rating"><span class="star-rating-box" style="width:69%"></span></div>
                                            </figure>
                                            <section>
                                                <h5><a href="shop-detail.html">Atlantic Sneaker</a></h5>
                                                <span class="price-cart"><del>$ 30.00</del> $19.00</span>
                                                <span></span>
                                            </section>
                                        </li>
                                    </ul>
                                </div>
                            </div>

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
