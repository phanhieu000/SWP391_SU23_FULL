<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sportsmagazine-topstrip">
    <div class="container">
        <div class="row">
            <aside class="col-md-4">
                <ul class="sportsmagazine-social-network">
                    <li><a href="#" class="sportsmagazine-colorhover fa fa-facebook-official"></a></li>
                    <li><a href="#" class="sportsmagazine-colorhover fa fa-twitter-square"></a></li>
                    <li><a href="#" class="sportsmagazine-colorhover fa fa-linkedin-square"></a></li>
                    <li><a href="#" class="sportsmagazine-colorhover fa fa-google-plus-square"></a></li>
                </ul>
            </aside>
            <aside class="col-md-8">
                <ul class="sportsmagazine-user-section">
                    <li><i class="fa fa-globe"></i> <a href="#">Support</a></li>
                    <li><i class="fa fa-shopping-cart"></i> <a href="#" class="sportsmagazine-open-cart">Cart (0)</a>
                        <div class="sportsmagazine-cart-box">
                            <h2>You have 2 items in the cart</h2>
                            <ul>
                                <li>
                                    <figure>
                                        <a href="#"><img src="views/extra-images/cartbox-1.png" alt=""></a>
                                    </figure>
                                    <div class="sportsmagazine-cartbox-text">
                                        <h6><a href="#">Key Management Model The 60+ Models</a></h6>
                                        <div class="sportsmagazine-rating"><span class="sportsmagazine-rating-box" style="width:80%"></span></div>
                                        <span class="sportsmagazine-cartbox-price sportsmagazine-color">$35.99 <small>$43.00</small></span>
                                    </div>
                                </li>
                                <li>
                                    <figure>
                                        <a href="#"><img src="views/extra-images/cartbox-2.png" alt=""></a>
                                    </figure>
                                    <div class="sportsmagazine-cartbox-text">
                                        <h6><a href="#">Pyramid Principle: Logic Writing &amp; Thinking</a></h6>
                                        <div class="sportsmagazine-rating"><span class="sportsmagazine-rating-box" style="width:100%"></span></div>
                                        <span class="sportsmagazine-cartbox-price sportsmagazine-color">$21.00</span>
                                    </div>
                                </li>
                            </ul>
                            <h5>Subtotal <span class="sportsmagazine-color">$1343</span></h5>
                            <div class="sportsmagazine-cart-link">
                                <a href="cart" class="sportsmagazine-cartbox-btn sportsmagazine-bgcolorhover">
                                    <i class="flaticon-tool"></i> Go Cart
                                </a>
                                <a href="checkout" class="sportsmagazine-cartbox-btn sportsmagazine-bgcolorhover">
                                    <i class="flaticon-tool"></i> Go to Checkout

                                </a>

                            </div>
                        </div>
                    </li>
                    <c:if test="${account != null}">
                        <li><i class="fa fa-user"></i> <a href="profiles" >Hello, ${account.userName}</a></li>
                        <li><i class="fa fa-unlock-alt"></i> <a href="changePass">Change Password</a></li>
                        <li><i class="fa fa-shopping-bag"></i> <a href="myorder">My Order</a></li>
                        <li><i class="fa fa-sign-out"></i> <a href="logout">Logout</a></li>
                        </c:if>

                    <c:if test="${account == null}">
                        <li><i class="fa fa-user"></i> <a href="login" >Login</a></li>
                        <li><i class="fa fa-user-plus"></i> <a href="register">Register</a></li>
                        </c:if>

                </ul>
            </aside>
        </div>
    </div>
</div>