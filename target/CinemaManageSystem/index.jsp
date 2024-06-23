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
    <link rel="shortcut icon" type="image/png" href="images/header/shortcut-icon.png"/>

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
                    <img src="images/header/max.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/bạn tưởng tượng.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/quy.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/gozila.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/toto.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/transformer.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <img src="images/header/ngayxua.jpg" alt="" data-bgposition="center center" data-bgfit="contain"
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
                    <h2>Phim Đang Chiếu</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_upcome_tabs_wrapper">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#best" aria-controls="best" role="tab"
                                                                  data-toggle="tab">Phim Đang Chiếu</a>
                        </li>
                        <li role="presentation"><a href="#hot" aria-controls="hot" role="tab"
                                                   data-toggle="tab">Phim Sắp Chiếu</a>
                        </li>
                        <li role="presentation"><a href="#trand" aria-controls="trand" role="tab"
                                                   data-toggle="tab">Top Phim Hay Nhất</a>
                        </li>
                    </ul>
                </div>
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        // Lấy tất cả các thẻ a trong tab
                        var tabs = document.querySelectorAll('.nav-tabs a');

                        tabs.forEach(function(tab) {
                            // Thêm sự kiện click vào mỗi thẻ a
                            tab.addEventListener('click', function (event) {
                                // Ngăn chặn hành động mặc định của thẻ a
                                event.preventDefault();

                                // Lấy nội dung của thẻ a được nhấp vào
                                var tabText = tab.textContent;

                                // Thay đổi nội dung của thẻ h2
                                document.querySelector('.prs_heading_section_wrapper h2').textContent = tabText;

                                // Hiển thị tab tương ứng

                                });

                            });
                        });

                </script>
            </div>
            <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="best">
                        <div class="prs_upcom_slider_slides_wrapper">
                            <div class="owl-carousel owl-theme">
                                <%
                                    ArrayList<Movie> dangchieu = (ArrayList<Movie>) request.getAttribute("dangchieu");
                                    int size = dangchieu.size()/8;
                                    for(int i=0 ; i<(size*8== dangchieu.size()? size:size+1);i++){
                                %>
                                <div class="item">
                                    <div class="row">
                                        <%
                                            for (Movie movie : dangchieu) {
                                                if(dangchieu.indexOf(movie)>=i*8 && dangchieu.indexOf(movie)<=i*8+7){
                                        %>

                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                            <div class="prs_upcom_movie_box_wrapper">
                                                                <div class="prs_upcom_movie_img_box">
                                                                    <img style="height: 400px;" loading="lazy" src="<%= movie.getImage() %>" alt="movie_img"/>
                                                                    <div class="prs_upcom_movie_img_btn_wrapper">
                                                                        <ul>
                                                                            <li>
                                                                                <a
                                                                                        class="test-popup-link button" rel='external'
                                                                                        href='h<%=movie.getTrailer()%>'

                                                                                        title='title'>Xem Trailer
                                                                                </a>
                                                                            </li>
                                                                            <li><a href="detail?id=<%= movie.getId() %>">Thông Tin Chi Tiết</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                                    <div class="prs_upcom_movie_content_box_inner">
                                                                        <h2><a href="detail?id=<%= movie.getId() %>"><%= movie.getName() %></a></h2>
                                                                        <p><%= movie.getType() %></p>
                                                                        <%
                                                                            int rate = (int)movie.getRate();
                                                                            if(movie.getRate() == rate){
                                                                                for(int j=1; j<=rate; j++){
                                                                                    %>
                                                                        <i class="fa fa-star"></i>
                                                                        <%
                                                                                }
                                                                            }else{
                                                                                    for(int k=1; k<=rate+1; k++){
                                                                                        if (k == rate + 1) {
                                                                                            %>
                                                                                            <i class="fa fa-star-half-empty"></i>
                                                                        <%
                                                                                        }else{
                                                                                            %>
                                                                                            <i class="fa fa-star"></i>
                                                                        <%
                                                                                        }
                                                                                    }
                                                                                }%>

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
                                                                <a onclick="bookMovie(<%= movie.getId() %>); return false;" href="booking_movie">
                                                                    <i class="fi fi-ss-ticket"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <% } %>
                                                </div>
                                                <%
                                                    if (us == null) {
                                                %>
                                                <div class="prs_upcom_movie_content_box_inner_icon">
                                                    <ul>
                                                        <li>
                                                            <a href="#" onclick="Swal.fire({
                                                                icon: 'error',
                                                                title: 'Oops...',
                                                                text: 'Please log in to book tickets.'
                                                            }); return false;">
                                                            <i class="fi fi-ss-ticket"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <% } else { %>
                                                <div class="prs_upcom_movie_content_box_inner_icon">
                                                    <ul>
                                                        <li>
                                                            <a onclick="bookMovie(<%= movie.getId() %>); return false;" href="booking_movie">
                                                                <i class="fi fi-ss-ticket"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                    <% }
                                    }%>
                                </div>
                            </div>
                            <%}%>
                            <script>
                                function bookMovie(movieID) {
                                    window.location.href='booking_movie?id='+movieID;
                                }
                            </script>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                <ul>
                                    <li><a href="#" class="button button--tamaya prs_upcom_main_btn"
                                           data-text="view all"><span>Xem Tất Cả</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="hot">
                    <div class="prs_upcom_slider_slides_wrapper">
                        <div class="owl-carousel owl-theme">
                            <%
                                ArrayList<Movie> sapchieu = (ArrayList<Movie>) request.getAttribute("sapchieu");
                                int size2 = sapchieu.size()/8;
                                for(int i=0 ; i<(size2*8== dangchieu.size()? size2:size2+1);i++){
                            %>
                            <div class="item">
                                <div class="row">



                                    <%

                                        for (Movie movie : sapchieu) {
                                            if(sapchieu.indexOf(movie)>=i*8 && sapchieu.indexOf(movie)<=i*8+7){
                                    %>

                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                        <div class="prs_upcom_movie_box_wrapper">
                                            <div class="prs_upcom_movie_img_box">
                                                <img style="height: 400px;" loading="lazy" src="<%= movie.getImage() %>" alt="movie_img"/>
                                                <div class="prs_upcom_movie_img_btn_wrapper">
                                                    <ul>
                                                        <li>
                                                            <a
                                                                    class="test-popup-link button" rel='external'
                                                                    href='<%= movie.getTrailer()%>'
                                                                    title='title'>Xem Trailer
                                                            </a>
                                                        </li>
                                                        <li><a href="detail?id=<%= movie.getId() %>">Thông Tin Chi Tiết</a></li>
                                                    </ul>

                                                </div>
                                            </div>
                                            <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                <div class="prs_upcom_movie_content_box_inner">
                                                    <h2><a href="booking_movie?id=<%= movie.getId() %>"><%= movie.getName() %></a></h2>
                                                    <p><%= movie.getType() %></p>
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
                                                            <a onclick="bookMovie(<%= movie.getId() %>); return false;" href="booking_movie">
                                                                <i class="fi fi-ss-ticket"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <% } %>
                                            </div>
                                        </div>
                                    </div>
                                    <% }
                                    }%>











                                </div>
                            </div>
        <%}%>


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
                                                        <li><a href="detail?id=<%= movie.getId() %>">Thông Tin Chi Tiết</a></li>
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

<!-- prs theater Slider Start -->
<div class="prs_theater_main_slider_wrapper">
    <div class="prs_theater_img_overlay"></div>
    <div class="prs_theater_sec_heading_wrapper">
        <h2>TOP MOVIES IN THEATRES</h2>
    </div>
    <div class="wrap-album-slider">
        <ul class="album-slider">


                        <%
    for(Movie movie: phimhaynhat) {
        %>
                    <li class="album-slider__item">
                        <figure class="album">

                            <div class="prs_upcom_movie_box_wrapper">
                                <div class="prs_upcom_movie_img_box">
                                    <img src="<%= movie.getImage() %>" alt="movie_img" style="height: 342.65px"/>
                                    <div class="prs_upcom_movie_img_btn_wrapper">
                                        <ul>
                                            <li>
                                                <a
                                                        class="test-popup-link button" rel='external'
                                                        href='h<%=movie.getTrailer()%>'

                                                        title='title'>Xem Trailer
                                                </a>
                                            </li>
                                            <li><a href="detail?id=<%= movie.getId() %>">Thông Tin Chi Tiết</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div style="height: 150px" class="prs_upcom_movie_content_box">
                                    <div class="prs_upcom_movie_content_box_inner">
                                        <h2><a href="booking_movie?id=<%= movie.getId() %>"><%= movie.getName() %></a></h2>
                                        <p><%= movie.getType() %></p>
                                        <%
                                            int rate = (int)movie.getRate();
                                            if(movie.getRate() == rate){
                                                for(int j=1; j<=rate; j++){
                                        %>
                                        <i class="fa fa-star"></i>
                                        <%
                                            }
                                        }else{
                                            for(int k=1; k<=rate+1; k++){
                                                if (k == rate + 1) {
                                        %>
                                        <i class="fa fa-star-half-empty"></i>
                                        <%
                                        }else{
                                        %>
                                        <i class="fa fa-star"></i>
                                        <%
                                                    }
                                                }
                                            }%>

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
                                                <a onclick="bookMovie(<%= movie.getId() %>); return false;" href="booking_movie">
                                                    <i class="fi fi-ss-ticket"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <% } %>
                                </div>
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
                    <h3>Đăng Nhập</h3>
                </div>
                <c:if test="${not empty err}">
                    <div class="text-danger">${err}.</div>
                    <c:remove var="failMess" scope="session"/>
                </c:if>
                <div class="st_profile_input float_left">
                    <label>Email / Số điện thoại</label>
                    <input value="${requestScope.email}" name="email" type="text" placeholder="Email / Số điện thoại">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Mật khẩu</label>
                    <input value="${requestScope.pass}" name="pass" type="password" placeholder="Mật khẩu">
                </div>

                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Bạn quên mật khẩu?</a></h3>
                </div>
                <div class="g-recaptcha float_left" data-sitekey="6LclJOUpAAAAABir2gwq1sKVfC1zD_Gygchg7m-g"></div>
                <div id="error"></div>

                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="ĐĂNG NHẬP"/>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>Hoặc</h4>
                </div>
                <div class="click st_form_pop_gmail_btn float_left">
                    <a href="https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force"
                       class="link">
                        <img src="images/content/google.png" alt=""> Đăng nhập bằng Google</a>
                </div>
                <div class="st_form_pop_signin_btn float_left">
                    <h4>Bạn chưa có tài khoản? <a href="#" data-toggle="modal" data-target="#myModa3"
                                                  target="_blank">Đăng Ký</a></h4>
                    <h5>Tôi đồng ý với <a href="#">Điều khoản & Dịch vụ</a> & <a href="#">của chúnng tôi</a></h5>
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
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Email không được để trống!"
                });
                return;
            }

            if (!password) {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Mật khẩu không được để trống!"
                });
                return;
            }

            // Check if the email exists and the password is correct
            const account = existingAccounts.find(acc => acc.email === email);
            if (!account) {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Email không tồn tại. Vui lòng sử dụng một email khác!"
                });
                return;
            }
            if (account.status === "unactive") {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Tài khoản chưa được kích hoạt!"
                });
                return;
            }
            if (account.password !== password) {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Sai mật khẩu. Vui lòng nhập lại mật khẩu!"
                });
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
                <h3>QUÊN MẬT KHẨU</h3>
            </div>
            <c:if test="${not empty err}">
                <div class="text-danger">${err}.</div>
                <c:remove var="failMess" scope="session"/>
            </c:if>
            <div class="st_profile_input float_left">
                <label>Địa chỉ Email</label>
                <input id="emailInput" name="email" type="text">
            </div>
            <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href="" id="verifyButton">Xác Nhận</a>
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
                        Swal.fire({
                            title: "Thành Công!",
                            text: "Kiểm tra email của bạn để xác thực tài khoản",
                            icon: "success"
                        });
                    },
                    error: function (xhr, status, error) {
                        alert("An error occurred: " + xhr.responseText);
                    }
                });
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Hãy ghi địa chỉ email của bạn!"
                });
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
                    <h3>Đăng Ký</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Địa Chỉ Email</label>
                    <input type="text" id="emailInput2" name="email" placeholder="example@gmail.com">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Số Điện Thoại</label>
                    <input type="text" placeholder="Số Điện Thoại" name="phone">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Họ Và Tên</label>
                    <input type="text" placeholder="Họ Và Tên" name="name">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Mật Khẩu</label>
                    <input type="password" placeholder="Mật Khẩu" name="pass1">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Xác Nhận Mật Khẩu</label>
                    <input type="password" placeholder="Xác Nhận Mật Khẩu" name="pass2">
                </div>
                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="Đăng Ký">
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
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Email đã tồn tại. Vui lòng sử dụng một email khác!"
                    });
                    return;
                }
                const phones = existingAccounts.find(acc => acc.phone === phone);
                if (phones) {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Số điện thoại đã tồn tại. Vui lòng sử dụng một số khác!"
                    });
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
                    <h3>Quên Mật Khẩu</h3>
                    <p>Chúng tôi sẽ giúp bạn! Tất cả những gì bạn phải làm là nhập địa chỉ Email và làm theo hướng dẫn</p>
                </div>
                <div class="st_profile_input float_left">
                    <label>Địa Chỉ Email</label>
                    <input id="emailInput" name="email" type="text">
                </div>
                <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href=""
                                                                                                  id="verifyButton">Xác Nhận</a>
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
    Swal.fire({
        title: "Thành Công",
        text: "Đã gửi email xác thực tài khoản!",
        icon: "success"
    });
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
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Địa chỉ email không hợp lệ!"
            });
            return false;
        }

        // Validate phone
        if (!phonePattern.test(phone)) {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Số điện thoại không hợp lệ!"
            });
            return false;
        }

        // Validate name
        if (name.trim() === "") {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Hãy ghi Họ và Tên của bạn!"
            });
            return false;
        }

        // Validate passwords
        if (pass1 === "" || pass2 === "") {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Hãy nhập Mật Khẩu của bạn!"
            });
            return false;
        }

        if (pass1 !== pass2) {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Mật khẩu không giống nhau!"
            });
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

<%--SweetAlert2--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%--SweetAlert2--%>

<script type="text/javascript">
    var onloadCallback = function () {
        alert("grecaptcha is ready!");
    };
</script>
<!--main js file end-->

</body>

</html>
