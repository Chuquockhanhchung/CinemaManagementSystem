
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <title>Movie-Categories</title>
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
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico" />
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
                        <h2>Movie Category</h2>
                        <ul>
                            <li><a href="#">Home</a>
                            </li>
                            <li>&nbsp;&nbsp; >&nbsp;&nbsp; Movie Category</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs title wrapper End -->
    <!-- prs mc slider wrapper Start -->
    <div class="prs_mc_slider_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Comming soon</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_mc_slider_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <img src="images/content/movie_category/slider_img1.jpg" alt="about_img">
                            </div>
                            <div class="item">
                                <img src="images/content/movie_category/slider_img2.jpg" alt="about_img">
                            </div>
                            <div class="item">
                                <img src="images/content/movie_category/slider_img3.jpg" alt="about_img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs mc slider wrapper End -->
    <!-- prs mc category slidebar Start -->
    <div class="prs_mc_category_sidebar_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="prs_mcc_left_side_wrapper">
                        <div class="prs_mcc_left_searchbar_wrapper">
                            <input type="text" placeholder="Search Movie">
                            <button><i class="flaticon-tool"></i>
							</button>
                        </div>
                        <div class="prs_mcc_bro_title_wrapper">
                            <h2>browse title</h2>
                            <ul>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">All <span>23,124</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Action <span>512</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Romantic <span>548</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Love <span>557</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Musical <span>554</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Drama <span>567</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Thriller <span>689</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Horror <span>478</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="prs_mcc_event_title_wrapper">
                            <h2>Top Events</h2>
                            <img src="images/content/movie_category/event_img.jpg" alt="event_img">
                            <h3><a href="#">Music Event in india</a></h3>
                            <p>Pune <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></span>
                            </p>
                            <h4>June 07 <span>08:00-12:00 pm</span></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="prs_mcc_right_side_wrapper">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="prs_mcc_right_side_heading_wrapper">
                                    <h2>Our Top Movies</h2>
                                    <ul class="nav nav-pills">
                                        <li class="active"><a data-toggle="pill" href="#grid"><i class="fa fa-th-large"></i></a>
                                        </li>
                                        <li><a data-toggle="pill" href="#list"><i class="fa fa-list"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="tab-content">
                                    <div id="grid" class="tab-pane fade in active">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up1.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up2.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up3.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up4.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up5.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up6.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up2.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up8.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper prs_mcc_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img src="images/content/movie_category/up7.jpg" alt="movie_img" />
                                                        <div class="prs_upcom_movie_img_overlay"></div>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2><a href="#">Busting Car</a></h2>
                                                            <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="pager_wrapper gc_blog_pagination">
                                                    <ul class="pagination">
                                                        <li><a href="#"><i class="flaticon-left-arrow"></i></a>
                                                        </li>
                                                        <li><a href="#">1</a>
                                                        </li>
                                                        <li><a href="#">2</a>
                                                        </li>
                                                        <li class="prs_third_page"><a href="#">3</a>
                                                        </li>
                                                        <li class="hidden-xs"><a href="#">4</a>
                                                        </li>
                                                        <li><a href="#"><i class="flaticon-right-arrow"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="list" class="tab-pane fade">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up1.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up2.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up3.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up4.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up5.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="prs_mcc_list_movie_main_wrapper">
                                                    <div class="prs_mcc_list_movie_img_wrapper">
                                                        <img src="images/content/movie_category/up6.jpg" alt="categoty_img">
                                                    </div>
                                                    <div class="prs_mcc_list_movie_img_cont_wrapper">
                                                        <div class="prs_mcc_list_left_cont_wrapper">
                                                            <h2>Busting Car</h2>
                                                            <p>Drama , Acation &nbsp;&nbsp;&nbsp;<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                                            </p>
                                                            <h4>Movie Director - Jhon Doe</h4>
                                                        </div>
                                                        <div class="prs_mcc_list_right_cont_wrapper"> <a href="#"><i class="flaticon-cart-of-ecommerce"></i></a>
                                                        </div>
                                                        <div class="prs_mcc_list_bottom_cont_wrapper">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis trud exercitation ullamco.</p>
                                                            <ul>
                                                                <li><a href="#">View Trailer</a>
                                                                </li>
                                                                <li><a href="#">View Details</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="pager_wrapper gc_blog_pagination">
                                                    <ul class="pagination">
                                                        <li><a href="#"><i class="flaticon-left-arrow"></i></a>
                                                        </li>
                                                        <li><a href="#">1</a>
                                                        </li>
                                                        <li><a href="#">2</a>
                                                        </li>
                                                        <li class="prs_third_page"><a href="#">3</a>
                                                        </li>
                                                        <li class="hidden-xs"><a href="#">4</a>
                                                        </li>
                                                        <li><a href="#"><i class="flaticon-right-arrow"></i></a>
                                                        </li>
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
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 visible-sm visible-xs">
                    <div class="prs_mcc_left_side_wrapper">
                        <div class="prs_mcc_left_searchbar_wrapper">
                            <input type="text" placeholder="Search Movie">
                            <button><i class="flaticon-tool"></i>
							</button>
                        </div>
                        <div class="prs_mcc_bro_title_wrapper">
                            <h2>browse title</h2>
                            <ul>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">All <span>23,124</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Action <span>512</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Romantic <span>548</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Love <span>557</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Musical <span>554</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Drama <span>567</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Thriller <span>689</span></a>
                                </li>
                                <li><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a href="#">Horror <span>478</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="prs_mcc_event_title_wrapper">
                            <h2>Top Events</h2>
                            <img src="images/content/movie_category/event_img.jpg" alt="event_img">
                            <h3><a href="#">Music Event in india</a></h3>
                            <p>Mumbai & Pune <span><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i></span>
                            </p>
                            <h4>June 07 <span>08:00-12:00 pm</span></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs mc category slidebar End -->
    <!-- prs theater Slider Start -->
    <div class="prs_theater_main_slider_wrapper">
        <div class="prs_theater_img_overlay"></div>
        <div class="prs_theater_sec_heading_wrapper">
            <h2>TOP MOVIES IN THEATRES</h2>
        </div>
        <div class="wrap-album-slider">
            <ul class="album-slider">
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up1.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up2.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up3.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up4.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up5.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up6.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up7.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="flaticon-cart-of-ecommerce"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
            </ul>
            <!-- End slider -->
        </div>
    </div>
    <!-- prs theater Slider End -->
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
    <script src="js/bootstrap.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/jquery.dlmenu.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/venobox.min.js"></script>
    <script src="js/smothscroll_part1.js"></script>
    <script src="js/smothscroll_part2.js"></script>
    <script src="js/jquery.countTo.js"></script>
    <script src="js/jquery.inview.min.js"></script>
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