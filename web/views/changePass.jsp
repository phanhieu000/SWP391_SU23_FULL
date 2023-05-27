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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.1.1/crypto-js.min.js" integrity="sha512-E8QSvWZ0eCLGk4km3hxSsNmGWbLtSCSUcewDQPQWZF6pEU8GlT8a5fF32wOl1i8ftdMhssTrF/OhyGWwonTcXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


        <style>

            .sportsmagazine-account form ul li input[type="password"]
            {
                float: left;
                width: 100%;
            }

            .sportsmagazine-account form ul li input[type="password"] {
                height: 40px;
                background-color: #eeeeee;
                font-size: 12px;
                color: #999999;
                font-style: italic;
                padding-left: 21px;
            }

            .sportsmagazine-account form ul li input[type="button"] {
                text-transform: uppercase;
                background-color: #27282a;
                color: #fff;
                border: none;
                font-weight: bold;
                padding: 6px 20px;
                border-radius: 2px;
                margin: 9px 0px 0px;
            }
        </style>

    </head>
    <body>
        <jsp:useBean class="DAL.CommonForJSP" id="C"/>
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
                                            <a href="#changePass" aria-controls="changePass" role="tab" data-toggle="tab">
                                                Change Password
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="changePass">
                                            <div class="sportsmagazine-account">
                                                <form action="" method="POST" id="formChange">

                                                    <ul >
                                                        <li>
                                                            <label>Old Password</label>
                                                            <input placeholder="Enter Your Old Password"  id="oldpass" type="password" required
                                                                   onchange="checkOldPassword()">
                                                            <label id="messageOldPass"></label>
                                                        </li>
                                                        <li >
                                                            <label>New Password</label>
                                                            <input placeholder="Enter Your New Password" name="newPassword" id="newpass" type="password" required
                                                                   onchange="checkNewPassword()"
                                                                   >
                                                            <label id="messageNewPass"></label>
                                                        </li>

                                                        <li >
                                                            <label>Confirm Password</label>
                                                            <input placeholder="Enter Your New Password"  id="comfirmpass" type="password" required
                                                                   onchange="checkComfirmPassword()"
                                                                   >
                                                            <label id="messageComfirmPass"></label>
                                                        </li>



                                                        <li >
                                                            <span style="color: ${message == 'Something wrong !' ? 'red' : 'green'}">
                                                                ${message}
                                                            </span>
                                                        </li>
                                                        <br>
                                                        <li class="d-flex justify-content-center" style="float: unset">
                                                            <input value="Save" type="button" onclick=" checkSubmit()">
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




        <script >

            function convertPassToMD5(password) {
                // Create a new instance of the MD5 hash object
                var md5 = CryptoJS.algo.MD5.create();

                // Update the hash object with the password bytes
                md5.update(CryptoJS.enc.Utf8.parse(password));

                // Get the MD5 hash in hexadecimal format
                var passwordHash = md5.finalize().toString().toUpperCase();

                return passwordHash;
            }

            const currentPass = `${account.password}`;

            function checkOldPassword() {
                var oldPass = document.getElementById('oldpass');
                var oldPassMD5 = oldPassMD5 = convertPassToMD5(oldPass.value);

                var message = document.getElementById('messageOldPass');

                if (oldPassMD5 !== currentPass) {
                    oldPass.style.border = '1px solid red';
                    message.innerHTML = 'Mật Khẩu Cũ Không Đúng !';
                    message.style.color = 'red';
                    return false;
                } else {
                    oldPass.style.border = '1px solid green';
                    message.innerHTML = '';
                    return true;

                }

            }

            function checkNewPassword() {
                var oldPass = document.getElementById('oldpass');
                var newPass = document.getElementById('newpass');

                var message = document.getElementById('messageNewPass');
                if (newPass.value === oldPass.value) {
                    newPass.style.border = '1px solid red';
                    message.innerHTML = 'Mật Khẩu Mới Không Được Trùng Với Mật Khẩu Cũ ';
                    message.style.color = 'red';
                    return false;

                } else {
                    newPass.style.border = '1px solid green';
                    message.innerHTML = '';
                    return true;

                }
            }

            function checkComfirmPassword() {
                var newPass = document.getElementById('newpass');
                var confirmPass = document.getElementById('comfirmpass');

                var message = document.getElementById('messageComfirmPass');

                if (newPass.value !== confirmPass.value) {
                    confirmPass.style.border = '1px solid red';
                    message.innerHTML = 'Mật Khẩu Comfirm Không Giống Mật Khẩu Mới ';
                    message.style.color = 'red';
                    return false;

                } else {
                    confirmPass.style.border = '1px solid green';
                    message.innerHTML = '';
                    return true;

                }
            }

            function checkSubmit() {
                if (checkOldPassword() && checkNewPassword() && checkComfirmPassword()) {
                    document.getElementById('formChange').submit();
                }

            }

        </script>


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
