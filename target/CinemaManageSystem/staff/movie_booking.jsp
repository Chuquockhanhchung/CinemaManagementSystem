<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" type="text/css" href="../css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="../css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="../css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="../css/owl.theme.default.css"/>
    <link rel="stylesheet" type="text/css" href="../css/dl-menu.css"/>
    <link rel="stylesheet" type="text/css" href="../css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="../css/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="../css/venobox.css"/>
    <link rel="stylesheet" type="text/css" href="../js/plugin/rs_slider/layers.css"/>
    <link rel="stylesheet" type="text/css" href="../js/plugin/rs_slider/navigation.css"/>
    <link rel="stylesheet" type="text/css" href="../js/plugin/rs_slider/settings.css"/>
    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
    <link rel="stylesheet" type="text/css" href="../css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="../images/header/favicon.ico"/>

    <style>
        .movie {
            display: none;
        }

        .display {
            display: block;
        }

        .customer_info_main {
            margin-top: 150px;
        }
    </style>
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="../images/header/horoscope.gif" id="preloader_image" alt="loader">
    </div>
</div>
<!-- preloader End -->
<!-- prs video top Start -->
<div class="prs_booking_main_div_section_wrapper">

    <div class="customer_info_main float_left">
        <div class="container">
            
        </div>
    </div>

    <!-- st slider rating wrapper Start -->
    <div class="st_slider_rating_main_wrapper float_left">
        <div class="container">
            <div class="st_calender_tabs">
                <ul class="nav nav-tabs">

                    <c:if test="${sessionScope.time != null}">
                        <c:forEach items="${sessionScope.time}" var="i">

                            <li class="" onclick="filterMovie('${i.getTime()}')"
                                style="border: 1px solid #555555; background-color: #555555; border-radius: 5px">
                                <a data-toggle="tab"><span>${i.getDayName()}</span> <br> ${i.getDay()}/${i.getMonth()}
                                </a>
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
                <form action="../booking_movie" method="get">
                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                        <c:if test="${sessionScope.movie != null}">
                            <img src="${sessionScope.movie.getImage()}" width="269px;" alt="Movie Image"/>
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
                                                    <li style="margin-right: 10px;"><i
                                                            style="font-size: 18px; color: #555555;"
                                                            class="fa fa-tags"></i> ${i.getType()} </li>
                                                </c:forEach>
                                                <li style="margin-right: 10px;"><i
                                                        style="font-size: 18px; color: #555555;"
                                                        class="fa fa-clock-o"></i>${sessionScope.movie.getDuration()}p
                                                </li>
                                            </ul>

                                        </c:if>
                                        <ul style="display:flex; list-style: none;flex-wrap:wrap ">
                                            <c:if test="${sessionScope.showtime != null}">
                                                <c:forEach items="${sessionScope.showtime}" var="i">
                                                    <li class="movie" data-date="${i.getDate()}"
                                                        style="border: 1px solid #333; padding: 15px; margin-left: 15px">
                                                        <a href="../seat?showtimeId=${i.getShowTimeID()}">${i.getTime()}</a>
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
    function filterMovie(date) {
        const movies = document.querySelectorAll('.movie');
        movies.forEach(movie => {
            if (movie.getAttribute('data-date') === date) {
                movie.classList.add('display');
            } else {
                movie.classList.remove('display');
            }
        })
    }
</script>
<!-- st slider sidebar wrapper End -->

<!--main js file start-->
<script src="../js/jquery_min.js"></script>
<script src="../js/modernizr.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/owl.carousel.js"></script>
<script src="../js/jquery.dlmenu.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/jquery.nice-select.min.js"></script>
<script src="../js/jquery.magnific-popup.js"></script>
<script src="../js/jquery.bxslider.min.js"></script>
<script src="../js/venobox.min.js"></script>
<script src="../js/smothscroll_part1.js"></script>
<script src="../js/smothscroll_part2.js"></script>
<script src="../js/plugin/rs_slider/jquery.themepunch.revolution.min.js"></script>
<script src="../js/custom.js"></script>
<!--main js file end-->
</body>

</html>