

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <title>Event-Single</title>
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
                        <h2>Event Single Page</h2>
                        <ul>
                            <li><a href="#">Home</a>
                            </li>
                            <li>&nbsp;&nbsp; >&nbsp;&nbsp; Event</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs title wrapper End -->
    <!-- prs es about wrapper Start -->
    <div class="prs_es_about_main_section_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="prs_es_about_left_wrapper">
                        <h2>About the Event</h2>
                        <h4>How it All Started Event and manage this this is event how to given pas and how to participate</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor nt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerciion ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
                            aute irure dolor indi reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Exceiur sint occaecat cupidatat non proident,
                            <br>
                            <br>sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis de omnis iste natus error sit voluptatem tium doloremque laudantium, totam rem am, eaque ipsa quae ab illo inventore veritatis</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_blog_box1_img_wrapper prs_event_single_slider_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <img src="images/content/Event_Single/event/slider_img.jpg" alt="blog_img">
                            </div>
                            <div class="item">
                                <img src="images/content/Event_Single/event/slider_img.jpg" alt="blog_img">
                            </div>
                            <div class="item">
                                <img src="images/content/Event_Single/event/slider_img.jpg" alt="blog_img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs es about wrapper End -->
    <!-- prs es map section wrapper Start -->
    <div class="prs_es_left_map_section_wrapper">
        <h2>Upcomming Events</h2>
        <h3>MARCH, 17th - 19th, 2022</h3>
        <p>Address : Jurys Inn Brighton Waterfront Hotel, Brighton, London</p>
        <div class="prs_ec_ue_timer_wrapper">
            <div id="clockdiv">
                <div><span class="days"></span>
                    <div class="smalltext">Days</div>
                </div>
                <div><span class="hours"></span>
                    <div class="smalltext">Hours</div>
                </div>
                <div><span class="minutes"></span>
                    <div class="smalltext">Mins</div>
                </div>
                <div><span class="seconds"></span>
                    <div class="smalltext">Secs</div>
                </div>
            </div>
        </div>
        <div class="hs_kd_six_sec_btn">
            <ul>
                <li><a href="#">Register Now</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="prs_es_right_map_section_wrapper">
        <div id="map"></div>
    </div>
    <!-- prs es map section wrapper End -->
    <!-- prs es schedule wrapper Start -->
    <div class="prs_es_schedule_main_section_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Event Schedule</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_es_tabs_wrapper">
                        <ul class="nav nav-pills">
                            <li class="active"><a data-toggle="pill" href="#home">Day 01<br> <span>March 08</span></a>
                            </li>
                            <li><a data-toggle="pill" href="#menu1">Day 02<br> <span>March 09</span></a>
                            </li>
                            <li><a data-toggle="pill" href="#menu2">Day 03<br> <span>March 10</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-9 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12">
                    <div class="prs_es_tabs_cont_main_wrapper">
                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <div class="prs_es_tabs_event_sche_main_box_wrapper">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="menu1" class="tab-pane fade">
                                <div class="prs_es_tabs_event_sche_main_box_wrapper">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div id="menu2" class="tab-pane fade">
                                <div class="prs_es_tabs_event_sche_main_box_wrapper">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_es_tabs_event_sche_main_box_wrapper prs_es_tabs_event_sche_main_box_wrapper2">
                                    <div class="prs_es_tabs_event_sche_img_wrapper">
                                        <img src="images/content/Event_Single/event/es1.jpg" alt="event_img">
                                    </div>
                                    <div class="prs_es_tabs_event_sche_img_cont_wrapper">
                                        <h2>welcome registration</h2>
                                        <h3>March 09, 2022 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>08:00 - 12:00 pm</span></h3>
                                        <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. amet nibh vulputate part the maintacne of the greek name of name cursus.</p>
                                        <ul>
                                            <li><i class="fa fa-user"></i>&nbsp;&nbsp; <a href="#">Ajay Suryavanshi</a>
                                            </li>
                                            <li><i class="fa fa-location-arrow"></i>&nbsp;&nbsp; <a href="#">Hall No. 11</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_kd_six_sec_btn prs_es_evnt_sche_btn_wrapper">
                        <ul>
                            <li><a href="#">Download Schedule</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs es schedule wrapper End -->
    <!-- prs es speak slider wrapper Start -->
    <div class="prs_es_speak_slider_main_Wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Whoâ€™s Speaking</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_es_speak_slider_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="prs_about_team_first_mem_wrapper prs_about_team_first_mem_wrapper2_inner">
                                    <div class="prs_about_first_mem_img_wrapper">
                                        <img src="images/content/Event_Single/about/tm5.jpg" alt="team_img">
                                        <div class="prs_at_social_main_wrapper prs_at_social_inner_main_wrapper">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-youtube-play"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="prs_about_first_mem_img_cont_wrapper prs_about_first_mem_img_cont_inner_wrapper">
                                        <h2><a href="#">Busting Car</a></h2>
                                        <p>Drama , Acation</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_about_team_first_mem_wrapper prs_about_team_first_mem_wrapper2_inner">
                                    <div class="prs_about_first_mem_img_wrapper">
                                        <img src="images/content/Event_Single/about/tm2.jpg" alt="team_img">
                                        <div class="prs_at_social_main_wrapper prs_at_social_inner_main_wrapper">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-youtube-play"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="prs_about_first_mem_img_cont_wrapper prs_about_first_mem_img_cont_inner_wrapper">
                                        <h2><a href="#">Busting Car</a></h2>
                                        <p>Drama , Acation</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_about_team_first_mem_wrapper prs_about_team_first_mem_wrapper2_inner">
                                    <div class="prs_about_first_mem_img_wrapper">
                                        <img src="images/content/Event_Single/about/tm3.jpg" alt="team_img">
                                        <div class="prs_at_social_main_wrapper prs_at_social_inner_main_wrapper">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-youtube-play"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="prs_about_first_mem_img_cont_wrapper prs_about_first_mem_img_cont_inner_wrapper">
                                        <h2><a href="#">Busting Car</a></h2>
                                        <p>Drama , Acation</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_about_team_first_mem_wrapper prs_about_team_first_mem_wrapper2_inner">
                                    <div class="prs_about_first_mem_img_wrapper">
                                        <img src="images/content/Event_Single/about/tm4.jpg" alt="team_img">
                                        <div class="prs_at_social_main_wrapper prs_at_social_inner_main_wrapper">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                                </li>
                                                <li><a href="#"><i class="fa fa-youtube-play"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="prs_about_first_mem_img_cont_wrapper prs_about_first_mem_img_cont_inner_wrapper">
                                        <h2><a href="#">Busting Car</a></h2>
                                        <p>Drama , Acation</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs es speak slider wrapper End -->
    <!-- prs es faq wrapper Start	-->
    <div class="prs_es_faq_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-ms-12 col-xs-12">
                    <div class="prs_es_faq_left_wrapper">
                        <h2>Ask your question</h2>
                        <input type="text" placeholder="Name" class="first_input">
                        <input type="email" placeholder="Email">
                        <input type="text" placeholder="Phone">
                        <textarea rows="6" placeholder="Comment"></textarea>
                        <div class="hs_kd_six_sec_btn prs_es_faq_btn_wrapper">
                            <ul>
                                <li><a href="#">Send a Comment</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-lg-offset-right-1 col-md-6 col-md-offset-right-1 col-ms-12 col-xs-12">
                    <div class="prs_es_faq_right_wrapper">
                        <h2>Frequent Asked Questions</h2>
                        <div class="accordionFifteen">
                            <div class="panel-group" id="accordionFifteenLeft" role="tablist">
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading desktop">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftone" aria-expanded="false">- We are always carefull to our patient  and service</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftone" class="panel-collapse collapse in" aria-expanded="true" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading horn">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftTwo" aria-expanded="false">- Who has access to my Health Records</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftTwo" class="panel-collapse collapse" aria-expanded="false" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftThree" aria-expanded="false">- We are always carefull to our patient  and service</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftFour" aria-expanded="false">- We are always carefull to our patient  and service</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftFour" class="panel-collapse collapse" aria-expanded="false" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftfive" aria-expanded="false">- We are always carefull to our patient  and service</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftfive" class="panel-collapse collapse" aria-expanded="false" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                <div class="panel panel-default sidebar_pannel">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftsix" aria-expanded="false">- We are always carefull to our patient  and service</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftsix" class="panel-collapse collapse" aria-expanded="false" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, aks lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate..</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                            </div>
                            <!--end of /.panel-group-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs es faq wrapper End -->
    <!-- prs es pricing wrapper Start -->
    <div class="prs_es_pricing_table_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Pricing table</h2>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="prs_es_pt_box_wrapper">
                        <div class="prs_es_pt_heading_box_wrapper">
                            <h2>Basic</h2>
                        </div>
                        <div class="prs_es_price_wrapper">
                            <h3><span>$</span>30.<span>00</span></h3>
                        </div>
                        <ul>
                            <li>Music Live Seating</li>
                            <li>Consectetur adipisicing</li>
                            <li>2 Hall live</li>
                            <li>8 Pediaries Headphone</li>
                            <li>30 Day Free</li>
                        </ul>
                        <div class="prs_es_pricing_btn_wrapper">
                            <ul>
                                <li><a href="#">Book Now</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="prs_es_pt_box_wrapper">
                        <div class="prs_es_pt_heading_box_wrapper">
                            <h2>standard</h2>
                        </div>
                        <div class="prs_es_price_wrapper">
                            <h3><span>$</span>50.<span>00</span></h3>
                        </div>
                        <ul>
                            <li>Music Live Seating</li>
                            <li>Consectetur adipisicing</li>
                            <li>2 Hall live</li>
                            <li>8 Pediaries Headphone</li>
                            <li>30 Day Free</li>
                        </ul>
                        <div class="prs_es_pricing_btn_wrapper">
                            <ul>
                                <li><a href="#">Book Now</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="prs_es_pt_box_wrapper">
                        <div class="prs_es_pt_heading_box_wrapper">
                            <h2>ultimate</h2>
                        </div>
                        <div class="prs_es_price_wrapper">
                            <h3><span>$</span>99.<span>00</span></h3>
                        </div>
                        <ul>
                            <li>Music Live Seating</li>
                            <li>Consectetur adipisicing</li>
                            <li>2 Hall live</li>
                            <li>8 Pediaries Headphone</li>
                            <li>30 Day Free</li>
                        </ul>
                        <div class="prs_es_pricing_btn_wrapper">
                            <ul>
                                <li><a href="#">Book Now</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs es pricing wrapper End -->
    <!-- prs patner slider Start -->
    <div class="prs_patner_main_section_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Our Patnerâ€™s</h2>
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
                    <h4>Donâ€™t have an account? <a href="#" data-toggle="modal" data-target="#myModa3" target="_blank">Sign Up</a></h4>
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
    <script src="js/jquery.shuffle.min.js"></script>
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
    <script>
        // CountDown Js
        var deadline = 'september 1 2022 11:59:00 GMT-0400';

        function time_remaining(endtime) {
            var t = Date.parse(endtime) - Date.parse(new Date());
            var seconds = Math.floor((t / 1000) % 60);
            var minutes = Math.floor((t / 1000 / 60) % 60);
            var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
            var days = Math.floor(t / (1000 * 60 * 60 * 24));
            return {
                'total': t,
                'days': days,
                'hours': hours,
                'minutes': minutes,
                'seconds': seconds
            };
        }

        function run_clock(id, endtime) {
            var clock = document.getElementById(id);

            // get spans where our clock numbers are held
            var days_span = clock.querySelector('.days');
            var hours_span = clock.querySelector('.hours');
            var minutes_span = clock.querySelector('.minutes');
            var seconds_span = clock.querySelector('.seconds');

            function update_clock() {
                var t = time_remaining(endtime);

                // update the numbers in each part of the clock
                days_span.innerHTML = t.days;
                hours_span.innerHTML = ('0' + t.hours).slice(-2);
                minutes_span.innerHTML = ('0' + t.minutes).slice(-2);
                seconds_span.innerHTML = ('0' + t.seconds).slice(-2);

                if (t.total <= 0) {
                    clearInterval(timeinterval);
                }
            }
            update_clock();
            var timeinterval = setInterval(update_clock, 1000);
        }
        run_clock('clockdiv', deadline);
    </script>
    <script>
        function initMap() {
            var uluru = {
                lat: -36.742775,
                lng: 174.731559
            };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 15,
                scrollwheel: false,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBi2zbxXa0ObGqaSBo5NJMdwLs_xtQ03nI&callback=initMap">
    </script>
</body>

</html>
