<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico" />

    <style>
        .movie{
            display: none;
        }
        .display{
            display: block;
        }
    </style>
</head>

<body>
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
                    <h2>Thông Tin Chi Tiết</h2>
                    <ul>
                        <li><a href="home">Trang chủ</a>
                        </li>
                        <li>&nbsp;&nbsp; >&nbsp;&nbsp; Thông Tin Chi Tiết</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs title wrapper End -->
<!-- prs video top Start -->
<div class="prs_booking_main_div_section_wrapper">
    <div class="prs_top_video_section_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
<%--                    <div class="st_video_slider_inner_wrapper float_left">--%>
<%--                        <div class="st_video_slider_overlay"></div>--%>
<%--                        <div class="st_video_slide_sec float_left">--%>
<%--                            <a rel='external' href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title' class="test-popup-link">--%>
<%--                                <img src="images/index_III/icon.png" alt="img">--%>
<%--                            </a>--%>
<%--                            <h3>${sessionScope.movie.getName()}</h3>--%>
<%--                            <p>${sessionScope.movie.getName()}</p>--%>
<%--                            <h4>ACTION | Adventure | Fantasy</h4>--%>
<%--                            <h5><span>2d</span> <span>3d</span> <span>D 4DX</span> <span>Imax 3D</span></h5>--%>
<%--                        </div>--%>
<%--                        <div class="st_video_slide_social float_left">--%>
<%--                            <div class="st_slider_rating_btn_heart st_slider_rating_btn_heart_5th">--%>
<%--                                <h5><i class="fa fa-heart"></i> 85%</h5>--%>
<%--                                <h4>52,291 votes</h4>--%>
<%--                            </div>--%>
<%--                            <div class="st_video_slide_social_left float_left">--%>
<%--                                <ul>--%>
<%--                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="#"><i class="fa fa-twitter"></i></a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="#"><i class="fa fa-linkedin"></i></a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="#"><i class="fa fa-youtube"></i></a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="st_video_slide_social_right float_left">--%>
<%--                                <ul>--%>
<%--                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-calendar-alt"></i> 14 Dec, 2022</li>--%>
<%--                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-clock"></i> 2 hrs 23 mins</li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- prs video top End -->
    <!-- st slider rating wrapper Start -->
    <div class="st_slider_rating_main_wrapper float_left">
        <div class="container">
            <div class="st_calender_tabs" >
                <ul class="nav nav-tabs">

                    <c:if test="${sessionScope.time != null}">
                        <c:forEach items="${sessionScope.time}" var="i">

                            <li class="" onclick="filterMovie('${i.getTime()}')" style="border: 1px solid #555555; background-color: #555555; border-radius: 5px">
                                <a data-toggle="tab" ><span>${i.getDayName()}</span> <br> ${i.getDay()}/${i.getMonth()}</a>
                            </li>
                        </c:forEach>

                    </c:if>
                </ul>
            </div>
        </div>
    </div>
    <!-- st slider rating wrapper End -->
    <!-- st slider sidebar wrapper Start -->
    <div class="st_slider_index_sidebar_main_wrapper st_slider_index_sidebar_main_wrapper_booking float_left">
        <div class="container">
            <div class="row">
                <form action="booking_movie" method="get">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <c:if test="${sessionScope.movie != null}">
                            <img  src="${sessionScope.movie.getImage()}" width="100%" height="height" alt="alt"/>

                        </c:if>

                    </div>
                </form>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="st_indx_slider_main_container float_left">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tab-content">
                                    <div id="home" class="tab-pane active">
                                        <c:if test="${sessionScope.movie != null}">
                                            <h1 style="font-size: 34px; font-family: inherit; color: #333333; margin-bottom: 20px; font-weight: 700">${sessionScope.movie.getName()}</h1>
                                            <ul style="display: flex;  margin-bottom: 40px" class="blog-info">
                                                <c:forEach items="${sessionScope.movietype}" var="i">
                                                    <li style="margin-right: 10px;"><i style="font-size: 18px; color: #555555;" class="fa fa-tags"></i> ${i.getType()} </li>
                                                </c:forEach>
                                                <li style="margin-right: 10px;"><i style="font-size: 18px; color: #555555;" class="fa fa-clock-o"></i>${sessionScope.movie.getDuration()}p</li>
                                            </ul>

                                        </c:if>
                                        <ul  style="display:flex; list-style: none;flex-wrap:wrap ">
                                            <c:if test="${sessionScope.showtime != null}">
                                                <c:forEach items="${sessionScope.showtime}" var="i">
                                                    <li class="movie" data-date="${i.getDate()}" style="border: 1px solid #333; padding: 15px; margin-left: 15px" >
                                                        <a  href="seat?showtimeId=${i.getShowTimeID()}">${i.getTime()}</a>
                                                    </li>

                                                </c:forEach>
                                            </c:if>


                                        </ul>




                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    function filterMovie(date){
        const movies = document.querySelectorAll('.movie');
        movies.forEach(movie => {
            if(movie.getAttribute('data-date') === date){
                movie.classList.add('display');
            } else {
                movie.classList.remove('display');
            }
        })
    }
</script>
<!-- st slider sidebar wrapper End -->
<!-- prs patner slider Start -->
<div class="prs_patner_main_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Những cộng sự của chúng ta</h2>
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
                <label>Email / Số điện thoại</label>
                <input type="text">
            </div>
            <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                <input type="password" placeholder="Password">
            </div>
            <div class="st_form_pop_fp float_left">
                <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Quên mật khẩu ?</a></h3>
            </div>
            <div class="st_form_pop_login_btn float_left"> <a href="page-1-7_profile_settings.jsp">Đăng nhập</a>
            </div>
            <div class="st_form_pop_or_btn float_left">
                <h4>or</h4>
            </div>
            <div class="st_form_pop_facebook_btn float_left"> <a href="#"> Kết nối với Facebook</a>
            </div>
            <div class="st_form_pop_gmail_btn float_left"> <a href="#"> Kết nối với Google</a>
            </div>
            <div class="st_form_pop_signin_btn float_left">
                <h4>Không có tài khoản? <a href="#" data-toggle="modal" data-target="#myModa3" target="_blank">Đăng kí</a></h4>
                <h5>Tôi đồng ý với <a href="#">Điều khoản & Điều khiển</a> & <a href="#">Chính sách bảo mật</a></h5>
            </div>
        </div>
    </div>
</div>
<div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="st_pop_form_heading_wrapper st_pop_form_heading_wrapper_fpass float_left">
                <h3>Quên mật khẩu</h3>
                <p>Chúng tôi có thể giúp đỡ! Tất cả những gì bạn cần làm là nhập ID email của bạn và làm theo ướng dẫn!</p>
            </div>
            <div class="st_profile_input float_left">
                <label>Địa chỉ Email</label>
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
                <h3>Đăng kí</h3>
            </div>
            <div class="st_profile_input float_left">
                <label>Email / Số điện thoại</label>
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
            <div class="st_form_pop_facebook_btn float_left"> <a href="#"><i class="fab fa-facebook-f"></i> Kết nối với Facebook</a>
            </div>
            <div class="st_form_pop_gmail_btn float_left"> <a href="#"><i class="fab fa-google-plus-g"></i> kết nối với Google</a>
            </div>
            <div class="st_form_pop_signin_btn st_form_pop_signin_btn_signup float_left">
                <h5>Tôi đồng ý với <a href="#">Điều khoản & Điều khiển</a> & <a href="#">Chính sách bảo mật</a></h5>
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