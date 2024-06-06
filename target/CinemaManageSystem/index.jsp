<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="description" content="Movie Pro"/>
    <meta name="keywords" content="Movie Pro"/>
    <meta name="author" content=""/>
    <meta name="MobileOptimized" content="320"/>
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css"/>
    <link rel="stylesheet" type="text/css" href="css/dl-menu.css"/>
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="css/venobox.css"/>
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/layers.css"/>
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/navigation.css"/>
    <link rel="stylesheet" type="text/css" href="js/plugin/rs_slider/settings.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico"/>

    <!-- Uicons - Flaticon -->
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-straight/css/uicons-bold-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-solid-straight/css/uicons-solid-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="images/header/horoscope.gif" id="preloader_image" alt="loader">
    </div>
</div>

<!-- prs navigation Start -->

<%
    Customer us = (Customer) session.getAttribute("user");
%>

<%@include file="header.jsp" %>

<!-- prs navigation End -->
<!-- prs Slider Start -->
<div class="prs_main_slider_wrapper">
    <div id="rev_slider_41_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container"
         data-alias="food-carousel26" data-source="gallery"
         style="margin:0px auto;padding:0px;margin-top:0px;margin-bottom:0px;">
        <div class="prs_slider_overlay"></div>
        <!-- START REVOLUTION SLIDER 5.4.1 fullwidth mode -->
        <div id="rev_slider_41_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.1">
            <ul>
                <!-- SLIDE  -->
                <li data-index="rs-145" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="The Healthy Bowl" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/01.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-145-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-145-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-145-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-145-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 7; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-146" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Spicy Chili Soup" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/02.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 6 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-146-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-146-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-146-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-146-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 10; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-147" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Classic Bolognese" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/03.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 9 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-147-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-147-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-147-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-147-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 13; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-148" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Cottage Cheese &amp; Chives"
                    data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
                    data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/01.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 12 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-148-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-148-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-148-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-148-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 16; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-149" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Colorful Salad" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/02.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 15 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-149-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-149-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-149-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-149-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 19; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-150" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Its Just Cornflakes" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/03.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 18 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-150-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-150-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-150-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-150-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 22; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
                <!-- SLIDE  -->
                <li data-index="rs-151" data-transition="fade" data-slotamount="7" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                    data-rotate="0" data-saveperformance="off" data-title="Tasty Muesli" data-param1=""
                    data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7=""
                    data-param8="" data-param9="" data-param10="" data-description="">
                    <!-- MAIN IMAGE -->
                    <img src="images/header/01.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
                         data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                    <!-- LAYERS -->
                    <!-- LAYER NR. 21 -->
                    <div class="tp-caption FoodCarousel-CloseButton rev-btn  tp-resizeme" id="slide-151-layer-5"
                         data-x="441" data-y="110" data-width="['auto']" data-height="['auto']" data-type="button"
                         data-actions='[{"event":"click","action":"stoplayer","layer":"slide-151-layer-3","delay":""},{"event":"click","action":"stoplayer","layer":"slide-151-layer-5","delay":""},{"event":"click","action":"startlayer","layer":"slide-151-layer-1","delay":""}]'
                         data-responsive_offset="on"
                         data-frames='[{"from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","speed":800,"to":"o:1;","delay":"bytrigger","ease":"Power3.easeInOut"},{"delay":"bytrigger","speed":500,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Power1.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(41,46,49,1);bw:1px 1px 1px 1px;"}]'
                         data-textAlign="['left','left','left','left']" data-paddingtop="[14,14,14,14]"
                         data-paddingright="[14,14,14,14]" data-paddingbottom="[14,14,14,14]"
                         data-paddingleft="[16,16,16,16]" data-lasttriggerstate="reset"
                         style="z-index: 25; white-space: nowrap;border-color:transparent;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                        <i class="fa-icon-remove"></i>
                    </div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
        </div>
    </div>
    <!-- END REVOLUTION SLIDER -->
</div>
<!-- prs Slider End -->
<!-- prs upcomung Slider Start -->
<div class="prs_upcom_slider_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Upcoming Movies</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_upcome_tabs_wrapper">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#best" aria-controls="best" role="tab"
                                                                  data-toggle="tab">Upcoming Movies</a>
                        </li>
                        <li role="presentation"><a href="#hot" aria-controls="hot" role="tab"
                                                   data-toggle="tab">Relesed Movies</a>
                        </li>
                        <li role="presentation"><a href="#trand" aria-controls="trand" role="tab"
                                                   data-toggle="tab">Best of library</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="best">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <%
                                        ArrayList<Movie> movies = (ArrayList<Movie>) request.getAttribute("movies");
                                        for (Movie movie : movies) {
                                    %>

                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img style="height: 400px;" src="<%= movie.getImage() %>" alt="movie_img"/>
                                                <div class="prs_upcom_movie_img_overlay"></div>
                                                <div class="prs_upcom_movie_img_btn_wrapper">
                                                    <ul>
                                                        <li><a href="#">View Trailer</a></li>
                                                        <li><a href="#">View Details</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                <div class="prs_upcom_movie_content_box_inner">
                                                    <h2><a href="#"><%= movie.getMovieName() %></a></h2>
                                                    <p><%= movie.getMovieType() %></p>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <%
                                                    if (us == null) {
                                                %>
                                                <div class="prs_upcom_movie_content_box_inner_icon">
                                                    <ul>
                                                        <li>
                                                            <a href="#" onclick="alert('Please log in to book tickets.'); return false;">
                                                                <i class="fi fi-ss-ticket"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <% } else { %>
                                                <div class="prs_upcom_movie_content_box_inner_icon">
                                                    <ul>
                                                        <li>
                                                            <a href="movie_booking.jsp">
                                                                <i class="fi fi-ss-ticket"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/up8.jpg" alt="movie_img" />
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_second">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="hot">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/up8.jpg" alt="movie_img" />
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_second">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_second">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/up8.jpg" alt="movie_img" />
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="trand">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_second">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_second">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                        <li><a href="movie_booking.html"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
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
                                                            <li><a href="movie_booking.html"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
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

<!-- prs upcomung Slider End -->
<!-- prs video section Start -->
<div class="prs_video_section_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_video_sec_icon_wrapper">
                    <ul>
                        <li><a class="test-popup-link button" rel='external'
                               href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title'><i
                                class="fi fi-rr-play"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs video section End -->
<!-- prs web series Slider Start -->
<div class="prs_upcom_slider_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>web series</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_upcome_tabs_wrapper">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#best1" aria-controls="best" role="tab"
                                                                  data-toggle="tab">Upcoming Movies</a>
                        </li>
                        <li role="presentation"><a href="#hot1" aria-controls="hot" role="tab"
                                                   data-toggle="tab">Relesed Movies</a>
                        </li>
                        <li role="presentation"><a href="#trand1" aria-controls="trand" role="tab"
                                                   data-toggle="tab">Best of library</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="best1">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="hot1">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="trand1">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 hidden-xs">
                                        <div class="prs_upcom_movie_box_wrapper prs_upcom_movie_video_box_wrapper">
                                            <div class="prs_upcom_movie_video_overlay"></div>
                                            <div class="prs_upcom_movie_img_box prs_webseri_movie_img_box">
                                                <div class="prs_webseri_video_img_sec_icon_wrapper">
                                                    <ul>
                                                        <li><a class="test-popup-link button" rel='external'
                                                               href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                               title='title'><i class="fi fi-rr-play"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="prs_upcom_video_img_cont_over">
                                                    <ul>
                                                        <li>Drama,Action</li>
                                                        <li>Rating :&nbsp;&nbsp;<i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </li>
                                                    </ul>
                                                    <h2>terrorise of the year</h2>
                                                    <p>Release on cinema : 27 june 2022</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws2.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="col-lg-3 col-md-3 col-sm-6 col-xs-6 hidden-sm prs_upcom_slide_second">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img src="images/content/ws3.jpg" alt="movie_img"/>
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
                                                        <li><a href="movie_booking.jsp"><i
                                                                class="fi fi-ss-ticket"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cc_featured_second_section">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws4.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws5.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws6.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 hidden-sm hidden-xs">
                                            <div class="prs_upcom_movie_box_wrapper">
                                                <div class="prs_upcom_movie_img_box">
                                                    <img src="images/content/ws7.jpg" alt="movie_img"/>
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
                                                            <li><a href="movie_booking.jsp"><i
                                                                    class="fi fi-ss-ticket"></i></a>
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
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>View All</span></a>
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
<!-- prs web series Slider End -->
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
                            <img src="images/content/up1.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up2.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up3.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up4.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up5.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up6.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
                            <img src="images/content/up7.jpg" alt="movie_img"/>
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
                                    <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
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
<!-- prs letest news Start	-->
<div class="prs_ln_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>LAtest News</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="prs_ln_left_img_wrapper">
                    <div class="prs_in_left_img_overlay"></div>
                    <div class="prs_webseri_video_sec_icon_wrapper ">
                        <ul>
                            <li><a class="test-popup-link button" rel='external'
                                   href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title'><i
                                    class="fi fi-rr-play"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="prs_prs_webseri_video_sec_icon_cont_wrapper">
                        <p>28 Feb 2022</p>
                        <h2>The News of theater</h2>
                        <ul>
                            <li><i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;<a href="#">120 Like</a>
                            </li>
                            <li><i class="fa fa-comments-o"></i>&nbsp;&nbsp;<a href="#">52 Comments</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="prs_ln_right_main_wrapper">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_ln_right_first_box_wrapper">
                                <div class="prs_in_right_box_img_wrapper">
                                    <img src="images/content/nl2.jpg" alt="news_img"/>
                                </div>
                                <div class="prs_in_right_box_img_cont_wrapper">
                                    <h2><a href="#">The News of theater</a></h2>
                                    <h3>28 feb 2022</h3>
                                    <p>Lorem ipsum dolor sit amet, consectuir adipisicing elit, sed do eiusmod
                                        tempor incididunt ut labore.</p>
                                    <ul>
                                        <li><i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;<a href="#">120 Like</a>
                                        </li>
                                        <li><i class="fa fa-comments-o"></i>&nbsp;&nbsp;<a href="#">52 comments</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_ln_right_first_box_wrapper2">
                                <div class="prs_in_right_box_img_wrapper">
                                    <img src="images/content/nl3.jpg" alt="news_img"/>
                                </div>
                                <div class="prs_in_right_box_img_cont_wrapper">
                                    <h2><a href="#">The News of theater</a></h2>
                                    <h3>28 feb 2022</h3>
                                    <p>Lorem ipsum dolor sit amet, consectuir adipisicing elit, sed do eiusmod
                                        tempor incididunt ut labore.</p>
                                    <ul>
                                        <li><i class="fa fa-thumbs-up"></i>&nbsp;&nbsp;<a href="#">120 Like</a>
                                        </li>
                                        <li><i class="fa fa-comments-o"></i>&nbsp;&nbsp;<a href="#">52 comments</a>
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
<!-- prs letest news End -->
<!-- prs feature slider Start -->
<div class="prs_feature_slider_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>FEATURED EVENTS</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_feature_slider_wrapper">
                    <div class="owl-carousel owl-theme">
                        <div class="item prs_feature_slider_item_wrapper">
                            <div class="prs_feature_img_box_wrapper">
                                <div class="prs_feature_img">
                                    <img src="images/content/ft1.jpg" alt="feature_img">
                                    <div class="prs_ft_btn_wrapper">
                                        <ul>
                                            <li><a href="#">Book Now</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_feature_img_cont">
                                    <h2><a href="#">Music Event in india</a></h2>
                                    <div class="prs_ft_small_cont_left">
                                        <p>Mumbai & Pune</p>
                                    </div>
                                    <div class="prs_ft_small_cont_right"><i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <ul>
                                        <li>June 07 - july 08</li>
                                        <li>08:00-12:00 pm</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item prs_feature_slider_item_wrapper">
                            <div class="prs_feature_img_box_wrapper">
                                <div class="prs_feature_img">
                                    <img src="images/content/ft2.jpg" alt="feature_img">
                                    <div class="prs_ft_btn_wrapper">
                                        <ul>
                                            <li><a href="#">Book Now</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_feature_img_cont">
                                    <h2><a href="#">Music Event in india</a></h2>
                                    <div class="prs_ft_small_cont_left">
                                        <p>Mumbai & Pune</p>
                                    </div>
                                    <div class="prs_ft_small_cont_right"><i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <ul>
                                        <li>June 07 - july 08</li>
                                        <li>08:00-12:00 pm</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item prs_feature_slider_item_wrapper">
                            <div class="prs_feature_img_box_wrapper">
                                <div class="prs_feature_img">
                                    <img src="images/content/ft3.jpg" alt="feature_img">
                                    <div class="prs_ft_btn_wrapper">
                                        <ul>
                                            <li><a href="#">Book Now</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="prs_feature_img_cont">
                                    <h2><a href="#">Music Event in india</a></h2>
                                    <div class="prs_ft_small_cont_left">
                                        <p>Mumbai & Pune</p>
                                    </div>
                                    <div class="prs_ft_small_cont_right"><i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <ul>
                                        <li>June 07 - july 08</li>
                                        <li>08:00-12:00 pm</li>
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
<!-- prs feature slider End -->
<!-- prs videos&photos slider Start -->
<div class="prs_vp_main_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Video & photos</h2>
                </div>
            </div>
            <div class="prs_vp_main_slider_wrapper">
                <div class="prs_vp_left_slidebar_wrapper">
                    <div class="wrap-album-slider">
                        <ul class="prs_vp_left_slider">
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp1.jpg" alt="vp_img"> <a
                                            href="images/content/vp1.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp2.jpg" alt="vp_img"> <a
                                            href="images/content/vp2.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp3.jpg" alt="vp_img"> <a
                                            href="images/content/vp3.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp4.jpg" alt="vp_img"> <a
                                            href="images/content/vp4.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp5.jpg" alt="vp_img"> <a
                                            href="images/content/vp5.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp6.jpg" alt="vp_img"> <a
                                            href="images/content/vp6.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="prs_vp_center_slidebar_wrapper">
                    <div class="prs_vp_center_slider">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="prs_vp_center_slider_img_wrapper">
                                    <img src="images/content/vp7.jpg" alt="vp_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_vp_center_slider_img_wrapper">
                                    <img src="images/content/vp7.jpg" alt="vp_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_vp_center_slider_img_wrapper">
                                    <img src="images/content/vp7.jpg" alt="vp_img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="prs_vp_right_slidebar_wrapper">
                    <div class="wrap-album-slider">
                        <ul class="prs_vp_right_slider">
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp6.jpg" alt="vp_img"> <a
                                            href="images/content/vp6.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp5.jpg" alt="vp_img"> <a
                                            href="images/content/vp5.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp4.jpg" alt="vp_img"> <a
                                            href="images/content/vp4.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp3.jpg" alt="vp_img"> <a
                                            href="images/content/vp3.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp2.jpg" alt="vp_img"> <a
                                            href="images/content/vp2.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                            <li class="album-slider__item prs_vp_hover_overlay">
                                <figure class="album">
                                    <div class="prs_vp_img_overlay">
                                        <img src="images/content/vp1.jpg" alt="vp_img"> <a
                                            href="images/content/vp1.jpg" class="venobox info"
                                            data-title="PORTFOLIO TITTLE" data-gall="gall12"><i
                                            class="fa fa-search"></i></a>
                                    </div>
                                </figure>
                                <!-- End album -->
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="prs_vp_bottom_banner_wrapper">
                    <img src="images/content/vp8.jpg" alt="banner">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs videos&photos slider End -->
<!-- prs patner slider Start -->
<div class="prs_patner_main_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Our Patner</h2>
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
<!-- prs Newsletter Wrapper Start -->
<%@include file="footer.jsp" %>
<!-- prs footer Wrapper End -->
<!-- Form Login -->
<form action="login" method="post" id="form">
    <div class="modal fade st_pop_form_wrapper" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Log in</h3>
                </div>
                <c:if test="${not empty err}">
                    <div class="text-danger">${err}.</div>
                    <c:remove var="failMess" scope="session"/>
                </c:if>
                <div class="st_profile_input float_left">
                    <label>Email / Mobile Number</label>
                    <input value="${requestScope.email}" name="email" type="text" placeholder="Email">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Password</label>
                    <input value="${requestScope.pass}" name="pass" type="password" placeholder="Password">
                </div>

                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Forgot Password?</a></h3>
                </div>
                <div class="g-recaptcha float_left" data-sitekey="6LclJOUpAAAAABir2gwq1sKVfC1zD_Gygchg7m-g"></div>
                <div id="error"></div>

                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="LOGIN"/>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>or</h4>
                </div>
                <div class="click st_form_pop_gmail_btn float_left">
                    <a href="https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force"
                       class="link">
                        <img src="images/content/google.png" alt=""> Login with Google</a>
                </div>
                <div class="st_form_pop_signin_btn float_left">
                    <h4>Don't have an account? <a href="#" data-toggle="modal" data-target="#myModa3"
                                                  target="_blank">Sign Up</a></h4>
                    <h5>I agree to the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></h5>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const form = document.querySelector('#form');
        const emailInput = form.querySelector('input[name="email"]');
        const passwordInput = form.querySelector('input[name="pass"]');
        const errorDiv = document.getElementById("error");

        // Retrieve the existing emails and passwords from JSTL
        const existingAccounts = [
            <%-- Server-side rendering of existing emails and passwords --%>
            <c:forEach var="account" items="${listAcc}" varStatus="status">
            {
                email: "${account.getEmail().toLowerCase()}",
                password: "${account.getPassword()}",
                status: "${account.getStatus()}"// Assuming passwords are stored this way
            }<c:if test="${!status.last}">, </c:if>
            </c:forEach>
        ];

        console.log("Existing Accounts:", existingAccounts);

        form.addEventListener('submit', (event) => {
            event.preventDefault(); // Prevent the default form submission

            const email = emailInput.value.trim().toLowerCase();
            const password = passwordInput.value;
            const response = grecaptcha.getResponse();
            if (!response) {
                errorDiv.innerHTML = "Please check reCAPTCHA!";
                return;
            }
            // Perform client-side validation
            if (!email) {
                alert('Email không được để trống.');
                return;
            }

            if (!password) {
                alert('Mật khẩu không được để trống.');
                return;
            }

            // Check if the email exists and the password is correct
            const account = existingAccounts.find(acc => acc.email === email);
            if (!account) {
                alert('Email không tồn tại. Vui lòng sử dụng một email khác.');
                return;
            }
            if (account.status === "unactive") {
                alert('Tài khoản chưa được kích hoạt!');
                return;
            }
            if (account.password !== password) {
                alert('Sai mật khẩu. Vui lòng nhập lại mật khẩu.');
                return;
            }

            // Perform reCAPTCHA validation


            console.log("Email and password validation passed. Submitting form...");
            // If all validations pass, submit the form
            form.submit();
        });

        document.querySelector('.click').addEventListener('click', (e) => {
            const response = grecaptcha.getResponse();
            if (!response) {
                e.preventDefault();
                errorDiv.innerHTML = "Please check reCAPTCHA!";
            } else {
                window.location.href = 'https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force';
            }
        });
    });
</script>

<!-- Form Forgot Password -->
<div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">

    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="st_pop_form_heading_wrapper float_left">
                <h3>Log in</h3>
            </div>
            <c:if test="${not empty err}">
                <div class="text-danger">${err}.</div>
                <c:remove var="failMess" scope="session"/>
            </c:if>
            <div class="st_profile_input float_left">
                <label>Email Address</label>
                <input id="emailInput" name="email" type="text">
            </div>
            <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href="" id="verifyButton">Verify</a>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#verifyButton').on('click', function (event) {
            event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>

            var email = $('#emailInput').val(); // Lấy giá trị từ input

            if (email) {
                $.ajax({
                    url: 'sendEmail',
                    method: 'POST',
                    data: {email: email},
                    success: function (response) {
                        alert("View your email to verify");
                    },
                    error: function (xhr, status, error) {
                        alert("An error occurred: " + xhr.responseText);
                    }
                });
            } else {
                alert("Please enter your email address.");
            }
        });
    });
</script>
<!-- Form Sign Up -->
<form action="signup" method="post" onsubmit="return validateForm()" id="formSignUp">
    <div class="modal fade st_pop_form_wrapper" id="myModa3" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Sign Up</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Your Email</label>
                    <input type="text" id="emailInput2" name="email" placeholder="example@gmail.com">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Mobile Number</label>
                    <input type="text" placeholder="Mobile Phone" name="phone">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Your Name</label>
                    <input type="text" placeholder="Name" name="name">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Password</label>
                    <input type="password" placeholder="Password" name="pass1">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Confirm Password</label>
                    <input type="password" placeholder="Confirm Password" name="pass2">
                </div>
                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="SignUp">
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const form = document.querySelector('#formSignUp');
            const emailInput = form.querySelector('input[name="email"]');
            const phoneInput = form.querySelector('input[name="phone"]');
            const errorDiv = document.getElementById("error");

            // Retrieve the existing emails and passwords from JSTL
            const existingAccounts = [
                <%-- Server-side rendering of existing emails and passwords --%>
                <c:forEach var="customer" items="${listCus}" varStatus="status">
                {
                    email: "${customer.getEmail().toLowerCase()}",
                    phone: "${customer.getPhone()}",

                }<c:if test="${!status.last}">, </c:if>
                </c:forEach>
            ];

            console.log("Existing Accounts:", existingAccounts);

            form.addEventListener('submit', (event) => {
                event.preventDefault(); // Prevent the default form submission

                const email = emailInput.value.trim().toLowerCase();
                const phone = phoneInput.value;

                // Perform client-side validation


                // Check if the email exists and the password is correct
                const account = existingAccounts.find(acc => acc.email === email);
                if (account) {
                    alert('Email đã tồn tại. Vui lòng sử dụng một email khác.');
                    return;
                }
                const phones = existingAccounts.find(acc => acc.phone === phone);
                if (phones) {
                    alert('Số điện thoại đã tồn tại. Vui lòng sử dụng một số khác.');
                    return;
                }


                console.log("Email and password validation passed. Submitting form...");
                // If all validations pass, submit the form
                form.submit();
            });

            document.querySelector('.click').addEventListener('click', (e) => {
                const response = grecaptcha.getResponse();
                if (!response) {
                    e.preventDefault();
                    errorDiv.innerHTML = "Please check reCAPTCHA!";
                } else {
                    window.location.href = 'https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force';
                }
            });
        });
    </script>


    <!-- Form Forgot Password -->
    <div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">

        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper st_pop_form_heading_wrapper_fpass float_left">
                    <h3>Forgot Password</h3>
                    <p>We can help! All you need to do is enter your email ID and follow the
                        instructions!</p>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email Address</label>
                    <input id="emailInput" name="email" type="text">
                </div>
                <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href=""
                                                                                                  id="verifyButton">Verify</a>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    function showAlert(message) {
        alert(message);
    }
</script>
<% if ("true".equals(request.getParameter("success"))) { %>
<script>
    alert("Đã gửi email xác thực tài khoản");
</script>
<% } %>
<script>
    function validateForm() {
        // Get form elements
        const email = document.getElementById('emailInput2').value;
        const phone = document.querySelector('input[name="phone"]').value;
        const name = document.querySelector('input[name="name"]').value;
        const pass1 = document.querySelector('input[name="pass1"]').value;
        const pass2 = document.querySelector('input[name="pass2"]').value;

        // Email regex pattern
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        // Phone regex pattern (assuming it should be 10-15 digits)
        const phonePattern = /^\d{10}$/;

        // Validate email
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate phone
        if (!phonePattern.test(phone)) {
            alert("Please enter a valid phone number (10 digits).");
            return false;
        }

        // Validate name
        if (name.trim() === "") {
            alert("Please enter your name.");
            return false;
        }

        // Validate passwords
        if (pass1 === "" || pass2 === "") {
            alert("Please enter and confirm your password.");
            return false;
        }

        if (pass1 !== pass2) {
            alert("Passwords do not match.");
            return false;
        }

        return true;
    }
</script>
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
<script type="text/javascript">
    var onloadCallback = function () {
        alert("grecaptcha is ready!");
    };
</script>
<!--main js file end-->
</body>

</html>
