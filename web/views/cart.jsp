<%-- 
    Document   : cart
    Created on : 23-05-2023, 22:14:29
    Author     : phanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="common/plugins/link.jsp" />
        <title>Cart</title>

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
                <div class="sportsmagazine-main-section sportsmagazine-shopping-cartfull">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-8">
                                <div class="sportsmagazine-shopping-cart">
                                    <h4>Your Shopping cart</h4>
                                    <table class="sportsmagazine-client-detail">
                                        <tr>
                                            <th>Product Info</th>
                                            <th>Price</th>
                                            <th>Size</th>
                                            <th>Color</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure><img src="extra-images/shopping-cart-img1.jpg" alt=""></figure>
                                                <div class="player-stats-text">
                                                    <h6>Sun Sneakers</h6>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:59%"></span></div>
                                                </div>
                                            </td>
                                            <td>$28.00</td>
                                            <td>8,5 (USA) </td>
                                            <td><a class="color-change" href="#"></a></td>
                                            <td><input name="quantity" min="01" max="10" type="number" value="01"></td>
                                            <td>$56.00<a class="remove-line" href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure><img src="extra-images/shopping-cart-img2.jpg" alt=""></figure>
                                                <div class="player-stats-text">
                                                    <h6>Sun Sneakers</h6>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:59%"></span></div>
                                                </div>
                                            </td>
                                            <td>$28.00</td>
                                            <td>8,5 (USA) </td>
                                            <td><a class="color-change one" href="#"></a></td>
                                            <td><input name="quantity" min="01" max="10" type="number" value="02"></td>
                                            <td>$56.00<a class="remove-line" href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure><img src="extra-images/shopping-cart-img3.jpg" alt=""></figure>
                                                <div class="player-stats-text">
                                                    <h6>Sun Sneakers</h6>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:59%"></span></div>
                                                </div>
                                            </td>
                                            <td>$28.00</td>
                                            <td>8,5 (USA) </td>
                                            <td><a class="color-change two" href="#"></a></td>
                                            <td><input name="quantity" min="01" max="10" type="number" value="03"></td>
                                            <td>$56.00<a class="remove-line" href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure><img src="extra-images/shopping-cart-img4.jpg" alt=""></figure>
                                                <div class="player-stats-text">
                                                    <h6>Sun Sneakers</h6>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:59%"></span></div>
                                                </div>
                                            </td>
                                            <td>$28.00</td>
                                            <td>8,5 (USA) </td>
                                            <td><a class="color-change three" href="#"></a></td>
                                            <td><input name="quantity" min="01" max="10" type="number" value="04"></td>
                                            <td>$56.00<a class="remove-line" href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <figure><img src="extra-images/shopping-cart-img2.jpg" alt=""></figure>
                                                <div class="player-stats-text">
                                                    <h6>Sun Sneakers</h6>
                                                    <div class="star-rating"><span class="star-rating-box" style="width:59%"></span></div>
                                                </div>
                                            </td>
                                            <td>$28.00</td>
                                            <td>8,5 (USA) </td>
                                            <td><a class="color-change one" href="#"></a></td>
                                            <td><input name="quantity" min="01" max="10" type="number" value="05"></td>
                                            <td>$56.00<a class="remove-line" href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                    </table>
                                    
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="sportsmagazine-cart-total sportsmagazine-shopping-cart-total">
                                    <h4>Cart Totals</h4>
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
                                    <span><a href="checkout" class="cart-checkout-btn">Place Your Order Now</a></span>
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

       <jsp:include page="common/plugins/link.jsp" />

    </body>

</html>
