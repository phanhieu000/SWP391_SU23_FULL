<%-- 
    Document   : profile
    Created on : 23-05-2023, 18:37:06
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
        <title>Profiles</title>

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
                <div class="sportsmagazine-main-section sportsmagazine-account-full">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12">
                                <!--// Tabs \\-->
                                <div class="sportsmagazine-account-tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav-tabs d-flex justify-content-center" role="tablist" >
                                        <li role="presentation" class="active">
                                            <a href="#profiles" aria-controls="profiles" role="tab" data-toggle="tab">
                                                Personal Information
                                            </a>
                                        </li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="profiles">
                                            <div class="sportsmagazine-account">
                                                <form action="" method="POST">

                                                    <ul>
                                                        <li>
                                                            <label>Your Email</label>
                                                            <input value="${account.email}" name="email" type="email" disabled="">
                                                        </li>
                                                        <li>
                                                            <label>Username</label>
                                                            <input value="${account.userName}" name="userName"  type="text" disabled="">
                                                        </li>

                                                        <li>
                                                            <label>Role</label>
                                                            <input value="${account.role.title}" name="role" type="text" disabled="">
                                                        </li>
                                                        <li>
                                                            <label>First Name</label>
                                                            <input value="${account.firstName}" name="firstName" type="text">
                                                        </li>
                                                        <li>
                                                            <label>Last Name</label>
                                                            <input value="${account.lastName}" name="lastName" type="text">
                                                        </li>
                                                        <li>
                                                            <label>Phone</label>
                                                            <input value="${account.phone}" name="phone" type="text">
                                                        </li>
                                                        <li class="address">
                                                            <label>Address</label>
                                                            <input value="${account.address}" name="address" type="text">
                                                        </li>
                                                        <li>
                                                            <label>Create At: </label>
                                                            <input value="${account.createDate}" name="createDate" type="date" disabled="">
                                                        </li>
                                                        <li>
                                                            <label>Birth Day: </label>
                                                            <input value="${account.birthday}" name="birthday" type="date">
                                                        </li>

                                                        <li class="d-flex justify-content-center">
                                                            <span style="color: ${message == 'Something wrong !' ? 'red' : 'green'}">
                                                                ${message}
                                                            </span>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <input value="Save" type="submit">
                                                        </li>
                                                    </ul>
                                                </form>
                                            </div>
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                                <!--// Tabs \\-->
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
