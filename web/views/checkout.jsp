<%-- 
    Document   : checkout
    Created on : 23-05-2023, 22:23:06
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
        <title>SportsMagazine Cart Checkout</title>

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
            .small {
                font-size: 10px;
                opacity: 0.7
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
                <div class="sportsmagazine-main-section sportsmagazine-checkout-full">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12">
                                <div class="sportsmagazine-account sportsmagazine-checkout">
                                    <h5>Billing Detail</h5>
                                    <form action="" method="">
                                        <ul>
                                            <li>
                                                <label>First Name <span class="small">(Người Nhận)</span></label>
                                                <input placeholder="Nhập Họ Người Nhận"  type="text" required>
                                            </li>
                                            <li>
                                                <label>Last Name <span class="small">(Người Nhận)</span></label>
                                                <input placeholder="Nhập Tên Người Nhận" type="text" required>
                                            </li>
                                            <li>
                                                <label>Your Email <span class="small">(Người Nhận)</span></label>
                                                <input placeholder="Nhập Email"  type="email" required>
                                            </li>
                                            
                                            <li>
                                                <label>Phone <span class="small">(Người Nhận)</span></label>
                                                <input placeholder="Nhập Số Điện Thoại Đặt Hàng"  type="text" required>
                                            </li>
                                            
                                            <li class="full-address" >
                                                <label>Address <span class="small">(Người Nhận)</span></label>
                                                <input placeholder="Nhập địa chỉ cụ thể nhận hàng" type="text" required>
                                            </li>
                                            <li class="full-address" class="small">
                                                <label>Note <span class="small">(Nếu Có)</span></label>
                                                <textarea name="u_msg" placeholder="Nhập Ghi Chú Nếu Có" ></textarea>
                                            </li>
                                            <li>
                                                <input value="See All Changes" type="submit">
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="sportsmagazine-cart-total">
                                    <h5>Cart Totals</h5>
                                    <ul>
                                        <li>
                                            <h6>Cart Subtotal</h6>
                                            <span>$242.00</span>
                                        </li>
                                        <li>
                                            <h6>Shipping And Handling</h6>
                                            <span>$50.00</span>
                                        </li>
                                        <li>
                                            <h6>Coupone Code</h6>
                                            <span>-$10.00</span>
                                        </li>
                                        <li class="total-cart">
                                            <h6>Cart Total</h6>
                                            <span>$282.00</span>
                                        </li>
                                    </ul>
                                    <a href="#" class="cart-checkout-btn">Proceed To Checkout</a>
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
