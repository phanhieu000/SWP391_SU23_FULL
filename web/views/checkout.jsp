<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="common/plugins/link.jsp" />
        <title>Checkout</title>

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

        <jsp:include page="common/plugins/script.jsp" />

    </body>

</html>
