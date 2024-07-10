<%@ page import="dal.EventDAO" %>
<%@ page import="model.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>Event-Single</title>
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
                    <h2>Thông tin sự kiện</h2>
                    <ul>
                        <li><a href="home">Trang chủ</a>
                        </li>
                        <li>&nbsp;&nbsp; >&nbsp;&nbsp; Sự Kiện</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs title wrapper End -->
<!-- prs es about wrapper Start -->
<%
    int EventID = Integer.parseInt(request.getParameter("EventID"));
    EventDAO dao = new EventDAO(DBContext.getConn());
    Event event = dao.getEventByID(EventID);

    Customer us = (Customer) session.getAttribute("user");

    String imagePathFromDB = event.getEventImage();
    String fullImagePath = imagePathFromDB.substring(imagePathFromDB.indexOf("images"));
%>
<input type="hidden" value="<%= event.getEventID() %>" name="EventID">
<div class="prs_es_about_main_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="prs_es_about_left_wrapper">
                    <h2><%=event.getEventName()%>
                    </h2>
                    <h4><%=event.getEventDetail()%>
                    </h4>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="hs_blog_box1_img_wrapper ">
                    <div class="item">
                        <img src="<%= fullImagePath%>" alt="blog_img">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs es about wrapper End -->
<!-- prs es map section wrapper Start -->
<div class="prs_es_left_map_section_wrapper">
    <h2>Thời gian diễn ra sự kiện</h2>
    <h3><%=event.getStartDate().replace("00:00:00", "") %>
    </h3>
    <h3><%=event.getEndDate().replace("00:00:00", "") %>
    </h3>

    <div class="hs_kd_six_sec_btn">
        <ul>
            <li>
                <%
                    if (us == null) {
                %>
                <a href="#" id="dat-ve-ngay"> Đặt Vé
                        <% } else { %>
                    <a href="event?EventID=<%= event.getEventID() %>&CustomerID=${sessionScope.user.idCustomer}">Đặt Vé
                        Ngay</a>
                        <% } %>
            </li>
        </ul>
    </div>
</div>

<!-- prs es map section wrapper End -->

<%@include file="footer.jsp" %>
<!-- prs footer Wrapper End -->
<script>
    document.getElementById("dat-ve-ngay").addEventListener("click", function(event) {
        event.preventDefault();
        Swal.fire({
            title: "Xin lỗi",
            text: "Bạn cần đăng nhập để đặt vé",
            icon: "warning"
        });
    });
</script>
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
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBi2zbxXa0ObGqaSBo5NJMdwLs_xtQ03nI&callback=initMap">
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>
