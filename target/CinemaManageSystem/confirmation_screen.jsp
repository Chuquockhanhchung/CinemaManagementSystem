<%@ page import="dal.TicketDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="description" content="Movie Pro" />
    <meta name="keywords" content="Movie Pro" />
    <meta name="author" content="" />
    <meta name="MobileOptimized" content="320" />
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="css/flaticon.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css" />
    <link rel="stylesheet" type="text/css" href="css/dl-menu.css" />
    <link rel="stylesheet" type="text/css" href="css/nice-select.css" />
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="css/venobox.css" />
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/layers.css" />
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/navigation.css" />
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/settings.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel="stylesheet" id="theme-color" type="text/css" href="#" />
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/shortcut-icon.png" />
</head>

<body class="booking_type_back">
    <!-- preloader Start -->
    <div id="preloader">
        <div id="status">
            <img src="images/header/horoscope.gif" id="preloader_image" alt="loader">
        </div>
    </div>

    <!-- prs navigation Start -->
            <%@include file="header.jsp" %>
    <!-- prs navigation End -->
    <!-- prs title wrapper Start -->
    <div class="prs_title_main_sec_wrapper">
        <div class="prs_title_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_title_heading_wrapper">
                        <h2>XÁC NHẬN THÔNG TIN</h2>
                        <ul>
                            <li><a href="home">Trang Chủ</a>
                            </li>
                            <li>&nbsp;&nbsp; >&nbsp;&nbsp; Xác Nhận Thông Tin</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs title wrapper End -->
    <%
//        int CustomerID = Integer.parseInt(request.getParameter("CustomerID"));
        TicketDAO dao = new TicketDAO(DBContext.getConn());
//        List<Ticket> list = dao.getTicketByBooking(CustomerID);
    %>

        <input type="text" name="CustomerID" value="${sessionScope.user.idCustomer}" >

    <!-- st bc Start -->
    <div class="st_bcc_main_main_wrapper float_left">
        <div class="st_bcc_main_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="st_bcc_heading_wrapper float_left"> <i class="fa fa-check-circle"></i>
                            <h3>Thanh toán <span>200.000</span> Thành Công</h3>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="st_bcc_ticket_boxes_wrapper float_left">
                            <div class="st_bcc_tecket_top_hesder float_left">
                                <p>VÉ CỦA BẠN ĐÃ ĐƯỢC XÁC NHẬN!</p> <span>Booking ID SSST0000310644 </span>
                            </div>
                            <div class="st_bcc_tecket_bottom_hesder float_left">
                                <div class="st_bcc_tecket_bottom_left_wrapper">
                                    <div class="st_bcc_tecket_bottom_inner_left">
                                        <div class="st_bcc_teckt_bot_inner_img">
                                            <img src="images/content/tcc1.png" alt="img">
                                        </div>
                                        <div class="st_bcc_teckt_bot_inner_img_cont">
                                            <h4>Njan Prakashan</h4>
                                            <h5>Malayalam, 2D</h5>
                                            <h3>Mon, 31 Dec | 09.30PM</h3>
                                            <h6>Carnival: Artech Central Mall,<br> Trivandrum Audi-5</h6>
                                        </div>
                                        <div class="st_purchase_img">
                                            <img src="images/content/pur2.png" alt="img">
                                        </div>
                                    </div>
                                    <div class="st_bcc_tecket_bottom_inner_right"> <i class="fas fa-chair"></i>
                                        <h3>2 TICKETS <br>
                                            <span>EXECUTIV - K1, K2</span></h3>
                                    </div>
                                </div>
                                <div class="st_bcc_tecket_bottom_right_wrapper">
                                    <img src="images/content/qr.png" alt="img">
                                    <h4>Booking ID<br>SSST0000310644</h4>
                                </div>
                                <div class="st_bcc_tecket_bottom_left_price_wrapper">
                                    <h4>Total Amount</h4>
                                    <h5>₹373.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="st_bcc_ticket_boxes_bottom_wrapper float_left">
                            <p>Bạn có thể truy cập vé của mình từ Hồ sơ của bạn. Chúng tôi sẽ gửi cho bạn
                                <br>Xác nhận qua e-Mail/SMS trong vòng 15 phút.</p>
                            <ul>
                                <li><a href="#">MỜI BẠN BÈ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- st bc End -->
    <!-- prs patner slider Start -->
    <div class="prs_patner_main_section_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Our Patner’s</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_pn_slider_wraper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p1.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p2.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p3.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p4.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p5.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p6.jpg" alt="patner_img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs patner slider End -->
           <%@include file="footer.jsp" %>
    <!-- prs footer Wrapper End -->
    <!-- st login wrapper Start -->
    <div class="modal fade st_pop_form_wrapper" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Log in</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email / Mobile Number</label>
                    <input type="text">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <input type="password" placeholder="Password">
                </div>
                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Forgot Password?</a></h3>
                </div>
                <div class="st_form_pop_login_btn float_left"> <a href="page-1-7_profile_settings.jsp">LOGIN</a>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>or</h4>
                </div>
                <div class="st_form_pop_facebook_btn float_left"> <a href="#"> Connect with Facebook</a>
                </div>
                <div class="st_form_pop_gmail_btn float_left"> <a href="#"> Connect with Google</a>
                </div>
                <div class="st_form_pop_signin_btn float_left">
                    <h4>Don’t have an account? <a href="#" data-toggle="modal" data-target="#myModa3" target="_blank">Sign Up</a></h4>
                    <h5>I agree to the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></h5>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper st_pop_form_heading_wrapper_fpass float_left">
                    <h3>Forgot Password</h3>
                    <p>We can help! All you need to do is enter your email ID and follow the instructions!</p>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email Address</label>
                    <input type="text">
                </div>
                <div class="st_form_pop_fpass_btn float_left"> <a href="#">Verify</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade st_pop_form_wrapper" id="myModa3" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Sign Up</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email / Mobile Number</label>
                    <input type="text">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <input type="password" placeholder="Password">
                </div>
                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Forgot Password?</a></h3>
                </div>
                <div class="st_form_pop_login_btn float_left"> <a href="page-1-7_profile_settings.jsp">LOGIN</a>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>or</h4>
                </div>
                <div class="st_form_pop_facebook_btn float_left"> <a href="#"><i class="fab fa-facebook-f"></i> Connect with Facebook</a>
                </div>
                <div class="st_form_pop_gmail_btn float_left"> <a href="#"><i class="fab fa-google-plus-g"></i> Connect with Google</a>
                </div>
                <div class="st_form_pop_signin_btn st_form_pop_signin_btn_signup float_left">
                    <h5>I agree to the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></h5>
                </div>
            </div>
        </div>
    </div>
    <!-- st login wrapper End -->
    <!--main js file start-->
    <script src="js/jquery_min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/jquery.dlmenu.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/venobox.min.js"></script>
    <script src="js/smothscroll_part1.js"></script>
    <script src="js/smothscroll_part2.js"></script>
    <script src="js/plugin/rs_slider/jquery.themepunch.revolution.min.js"></script>
    <script src="js/plugin/rs_slider/jquery.themepunch.tools.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.addon.snow.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.actions.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.carousel.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.kenburn.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.layeranimation.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.migration.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.navigation.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.parallax.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.slideanims.min.js"></script>
    <script src="js/plugin/rs_slider/revolution.extension.video.min.js"></script>
    <script src="js/custom.js"></script>
    <!--main js file end-->
</body>

</html>