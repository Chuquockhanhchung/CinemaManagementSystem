<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>
<%@ page import="dal.EventDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>MCN</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Uicons - Flaticon -->
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-straight/css/uicons-bold-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-solid-straight/css/uicons-solid-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        .style {
            background-image: none;
        }

        .event-popup .modal {
            top: 0;
        }

        .event-popup .st_pop_form_wrapper .close {
            color: red;
            opacity: unset;
            top: 0px;
            right: 8px;
        }

        .event-popup .st_pop_form_wrapper .modal-content {
            padding: 6px;
        }

        .event-popup .st_pop_form_wrapper .modal-dialog {
            max-width: unset;
        }

        @media (min-width: 768px) {
            .event-popup .modal-dialog {
                width: unset;
            }
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

<%
    Customer us = (Customer) session.getAttribute("user");
%>

<%@include file="header.jsp" %>

<!-- prs navigation End -->
<c:if test="${not empty discountMessage}">
    <script>
        Swal.fire({
            title: "Chúc Mừng!",
            text: "Áp dụng Voucher thành công!",
            icon: "success"
        });
    </script>
    <c:remove var="discountMessage" scope="session"/>
</c:if>

<c:if test="${not empty discountFailMessage}">
    <script>
        Swal.fire({
            title: "Xin lỗi!",
            text: "Bạn không đủ điều kiện để áp dụng Voucher!",
            icon: "warning"
        });
    </script>
    <c:remove var="discountFailMessage" scope="session"/>
</c:if>
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
                    <img src="images/header/bạn tưởng tượng.jpg" alt="" data-bgposition="center center"
                         data-bgfit="contain"
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

    <div class="Side-Event-Left" style=" position: absolute; left: 11em">
        <%
            EventDAO dao = new EventDAO(DBContext.getConn());
            List<Event> list = dao.getAllEvent();
            if (list.size() > 1) {
                Event secondEvent = list.get(1);
                String imagePathFromDB = secondEvent.getEventImage();
                String fullImagePath = imagePathFromDB.substring(imagePathFromDB.indexOf("images"));
                if (secondEvent.getStatus() == 1) {

        %>
        <div class="image-left">
            <a href="event_single.jsp?EventID=<%=secondEvent.getEventID()%>">
                <img src="<%= fullImagePath %>" alt="feature_img"
                     style="">
            </a>
        </div>
        <%
                }
            }
        %>
    </div>
    <div class="Side-Event-Right" style=" position: absolute; right: 11em">
        <%
            if (list.size() > 1) {
                Event thirdEvent = list.get(2);
                String imagePathFromDB = thirdEvent.getEventImage();
                String fullImagePath = imagePathFromDB.substring(imagePathFromDB.indexOf("images"));
                if (thirdEvent.getStatus() == 1) {
        %>
        <div class="image-right">
            <a href="event_single.jsp?EventID=<%=thirdEvent.getEventID()%>">
                <img src="<%= fullImagePath %>" alt="feature_img"
                     style="">
            </a>
        </div>
        <%
                }
            }
        %>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Phim Đang Chiếu</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12" style="margin-top: 85px;">
                    <div class="prs_mcc_bro_title_wrapper ">
                        <h2>Thể loại phim</h2>
                        <ul>
                            <li role="presentation" class="active"><i class="fa fa-caret-right"></i>
                                &nbsp;&nbsp;&nbsp;<a href="home">All <span>${sessionScope.sum}</span></a>
                            </li>
                            <c:forEach items="${sessionScope.types}" var="i">
                                <li role="presentation"><i class="fa fa-caret-right"></i> &nbsp;&nbsp;&nbsp;<a
                                        href="filterByTypeMovie?type=${i.getTypeName()}">${i.getTypeName()}
                                    <span>${i.getTypeDescription()}</span></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="prs_upcome_tabs_wrapper">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#best" aria-controls="best"
                                                                          role="tab"
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

                                tabs.forEach(function (tab) {
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
                                        int size = dangchieu.size() / 8;
                                        for (int i = 0; i < (size * 8 == dangchieu.size() ? size : size + 1); i++) {
                                    %>
                                    <div class="item">
                                        <div class="row">
                                            <%
                                                for (Movie movie : dangchieu) {
                                                    if (dangchieu.indexOf(movie) >= i * 8 && dangchieu.indexOf(movie) <= i * 8 + 7) {
                                            %>

                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div style="position: relative" class="prs_upcom_movie_box_wrapper">
                                                    <div id="movie-age">
                                                        <%= movie.getAge()%>
                                                    </div>
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img style="height: 400px;" loading="lazy"
                                                             src="<%= movie.getImage() %>" alt="movie_img"/>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li>
                                                                    <a
                                                                            class="test-popup-link button"
                                                                            rel='external'
                                                                            href='h<%=movie.getTrailer()%>'

                                                                            title='title'>Xem Trailer
                                                                    </a>
                                                                </li>
                                                                <li><a href="detail?id=<%= movie.getId() %>">Thông
                                                                    Tin
                                                                    Chi Tiết</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2>
                                                                <a href="detail?id=<%= movie.getId() %>"><%= movie.getName() %>
                                                                </a></h2>
                                                            <p><%= movie.getType() %>
                                                            </p>
                                                            <%
                                                                int rate = (int) movie.getRate();
                                                                if (movie.getRate() == rate) {
                                                                    for (int j = 1; j <= rate; j++) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <%
                                                                }
                                                            } else {
                                                                for (int k = 1; k <= rate + 1; k++) {
                                                                    if (k == rate + 1) {
                                                            %>
                                                            <i class="fa fa-star-half-empty"></i>
                                                            <%
                                                            } else {
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
                                                                    <a href="#"
                                                                       onclick="alert('Please log in to book tickets.'); return false;">
                                                                        <i class="fi fi-ss-ticket"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <% } else { %>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li>
                                                                    <a onclick="bookMovie(<%= movie.getId() %>); return false;"
                                                                       href="detail">
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
                                            window.location.href = 'detail?id=' + movieID;
                                        }
                                    </script>


                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="prs_animate_btn1 prs_upcom_main_wrapper">
                                        <ul>
                                            <%--                                            <li><a href="#" class="button button--tamaya prs_upcom_main_btn"--%>
                                            <%--                                                   data-text="view all"><span>Xem Tất Cả</span></a>--%>
                                            <%--                                            </li>--%>
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
                                        int size2 = sapchieu.size() / 8;
                                        for (int i = 0; i < (size2 * 8 == dangchieu.size() ? size2 : size2 + 1); i++) {
                                    %>
                                    <div class="item">
                                        <div class="row">


                                            <%

                                                for (Movie movie : sapchieu) {
                                                    if (sapchieu.indexOf(movie) >= i * 8 && sapchieu.indexOf(movie) <= i * 8 + 7) {
                                            %>

                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img style="height: 400px;" loading="lazy"
                                                             src="<%= movie.getImage() %>" alt="movie_img"/>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li>
                                                                    <a
                                                                            class="test-popup-link button"
                                                                            rel='external'
                                                                            href='<%= movie.getTrailer()%>'
                                                                            title='title'>Xem Trailer
                                                                    </a>
                                                                </li>
                                                                <li><a href="detail?id=<%= movie.getId() %>">Thông
                                                                    Tin
                                                                    Chi Tiết</a></li>
                                                            </ul>

                                                        </div>
                                                    </div>
                                                    <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2>
                                                                <a href="booking_movie?id=<%= movie.getId() %>"><%= movie.getName() %>
                                                                </a></h2>
                                                            <p><%= movie.getType() %>
                                                            </p>
                                                            <%
                                                                int rate = (int) movie.getRate();
                                                                if (movie.getRate() == rate) {
                                                                    for (int j = 1; j <= rate; j++) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <%
                                                                }
                                                            } else {
                                                                for (int k = 1; k <= rate + 1; k++) {
                                                                    if (k == rate + 1) {
                                                            %>
                                                            <i class="fa fa-star-half-empty"></i>
                                                            <%
                                                            } else {
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
                                                                    <a href="#"
                                                                       onclick="alert('Please log in to book tickets.'); return false;">
                                                                        <i class="fi fi-ss-ticket"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <% } else { %>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li>
                                                                    <a onclick="bookMovie(<%= movie.getId() %>); return false;"
                                                                       href="booking_movie">
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
                                    <%
                                        ArrayList<Movie> phimhaynhat = (ArrayList<Movie>) request.getAttribute("phimhaynhat");
                                        int size3 = phimhaynhat.size() / 8;
                                        for (int i = 0; i < (size3 * 8 == phimhaynhat.size() ? size3 : size3 + 1); i++) {
                                    %>
                                    <div class="item">
                                        <div class="row">
                                            <%

                                                for (Movie movie : phimhaynhat) {
                                                    if (phimhaynhat.indexOf(movie) >= i * 8 && phimhaynhat.indexOf(movie) <= i * 8 + 7) {
                                            %>

                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 prs_upcom_slide_first">
                                                <div class="prs_upcom_movie_box_wrapper">
                                                    <div class="prs_upcom_movie_img_box">
                                                        <img style="height: 400px;" loading="lazy"
                                                             src="<%= movie.getImage() %>" alt="movie_img"/>
                                                        <div class="prs_upcom_movie_img_btn_wrapper">
                                                            <ul>
                                                                <li>
                                                                    <a
                                                                            class="test-popup-link button"
                                                                            rel='external'
                                                                            href='h<%=movie.getTrailer()%>'

                                                                            title='title'>Xem Trailer
                                                                    </a>
                                                                </li>
                                                                <li><a href="detail?id=<%= movie.getId() %>">Thông
                                                                    Tin
                                                                    Chi Tiết</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div style="height: 150px" class="prs_upcom_movie_content_box">
                                                        <div class="prs_upcom_movie_content_box_inner">
                                                            <h2>
                                                                <a href="booking_movie?id=<%= movie.getId() %>"><%= movie.getName() %>
                                                                </a></h2>
                                                            <p><%= movie.getType() %>
                                                            </p>
                                                            <%
                                                                int rate = (int) movie.getRate();
                                                                if (movie.getRate() == rate) {
                                                                    for (int j = 1; j <= rate; j++) {
                                                            %>
                                                            <i class="fa fa-star"></i>
                                                            <%
                                                                }
                                                            } else {
                                                                for (int k = 1; k <= rate + 1; k++) {
                                                                    if (k == rate + 1) {
                                                            %>
                                                            <i class="fa fa-star-half-empty"></i>
                                                            <%
                                                            } else {
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
                                                                    <a href="#"
                                                                       onclick="alert('Please log in to book tickets.'); return false;">
                                                                        <i class="fi fi-ss-ticket"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <% } else { %>
                                                        <div class="prs_upcom_movie_content_box_inner_icon">
                                                            <ul>
                                                                <li>
                                                                    <a onclick="bookMovie(<%= movie.getId() %>); return false;"
                                                                       href="booking_movie">
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
                        <%
                            for (Event event : list) {
                                Event latestEvent = list.get(0);
                                String imagePathFromDB = latestEvent.getEventImage();
                                String fullImagePath = imagePathFromDB.substring(imagePathFromDB.indexOf("images"));
                                if (event.getStatus() == 1) {

                        %>
                        <div class="event-popup">
                            <div class="modal st_pop_form_wrapper" id="myModalEvent"
                                 style="background-color: rgb(0, 0, 0, 0.5); align-items: center">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <span class="close" onclick="closeModal()">&times;</span>
                                        <a href="event_single.jsp?EventID=<%=event.getEventID()%>">
                                            <img src="<%= fullImagePath %>" alt="feature_img"
                                                 style="max-height: 400px;">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                        <script>
                            // Function to show the modal
                            function showModal() {
                                document.getElementById("myModalEvent").style.display = "flex";
                            }

                            // Function to close the modal
                            function closeModal() {
                                document.getElementById("myModalEvent").style.display = "none";
                            }

                            // Show the modal immediately when the page loads
                            window.onload = function () {
                                showModal();
                                // Automatically close the modal after 5 seconds
                                // setTimeout(closeModal, 5000);
                            }
                        </script>
                        <!-- prs feature slider Start -->
                        <div class="prs_feature_slider_main_wrapper">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="prs_heading_section_wrapper">
                                            <h2>SỰ KIỆN ĐẶC BIỆT</h2>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="prs_feature_slider_wrapper">
                                            <div class="owl-carousel owl-theme">
                                                <%
                                                    for (Event event : list) {
                                                        String imagePathFromDB = event.getEventImage();
                                                        String fullImagePath = imagePathFromDB.substring(imagePathFromDB.indexOf("images"));
                                                        if (event.getStatus() == 1) {
                                                %>
                                                <div class="item prs_feature_slider_item_wrapper">
                                                    <div class="prs_feature_img_box_wrapper">
                                                        <div class="prs_feature_img">
                                                            <a href="event_single.jsp?EventID=<%=event.getEventID()%>">
                                                                <img src="<%= fullImagePath %>" alt="feature_img"
                                                                     style="max-height: 250px; min-height: 250px; width: 100%; margin: 0 auto;">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%
                                                        }
                                                    }
                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- prs feature slider End -->
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
                               href='hhttps://www.youtube.com/embed/vPwSfR_O9Jo?si=tumuwCng35DLm6HV'
                               title='title'><i
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
        <h2>TOP PHIM HAY</h2>
    </div>
    <div class="wrap-album-slider">
        <ul class="album-slider">


            <%
                for (Movie movie : phimhaynhat) {
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
                                <h2><a href="booking_movie?id=<%= movie.getId() %>"><%= movie.getName() %>
                                </a></h2>
                                <p><%= movie.getType() %>
                                </p>
                                <%
                                    int rate = (int) movie.getRate();
                                    if (movie.getRate() == rate) {
                                        for (int j = 1; j <= rate; j++) {
                                %>
                                <i class="fa fa-star"></i>
                                <%
                                    }
                                } else {
                                    for (int k = 1; k <= rate + 1; k++) {
                                        if (k == rate + 1) {
                                %>
                                <i class="fa fa-star-half-empty"></i>
                                <%
                                } else {
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
                                        <a onclick="noti()">
                                            <i class="fi fi-ss-ticket"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <% } else { %>
                            <div class="prs_upcom_movie_content_box_inner_icon">
                                <ul>
                                    <li>
                                        <a onclick="bookMovie(<%= movie.getId() %>); return false;"
                                           href="booking_movie">
                                            <i class="fi fi-ss-ticket"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <% } %>
                        </div>
                    </div>

                    <!-- End album body -->
                </figure>
                <!-- End album -->
            </li>

            <%
                }
            %>

        </ul>
        <!-- End slider -->
    </div>
</div>
<!-- prs theater Slider End -->

<%@include file="footer.jsp" %>

<script>
    function noti() {
        Swal.fire({
            title: "Xin lỗi",
            text: "Bạn cần đăng nhập để đặt vé",
            icon: "warning"
        });
    }
</script>
<!-- st login wrapper End -->
<!--main js file start-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
<script type="text/javascript">
    var onloadCallback = function () {
        alert("grecaptcha is ready!");
    };
</script>
<!--main js file end-->


</body>

</html>
