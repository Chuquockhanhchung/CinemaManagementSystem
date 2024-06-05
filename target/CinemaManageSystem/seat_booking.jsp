<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <link rel="stylesheet" type="text/css" href="css/seat.css" />
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
                <!-- color picker start -->
                <!-- st top header Start -->
                <div class="st_bt_top_header_wrapper float_left">
                    <div class="container container_seat">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="st_bt_top_back_btn st_bt_top_back_btn_seatl float_left"> <a
                                        href="movie_booking.jsp"><i class="fas fa-long-arrow-alt-left"></i> &nbsp;Trở
                                        lại</a>
                                </div>

                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div
                                    class="st_bt_top_center_heading st_bt_top_center_heading_seat_book_page float_left">
                                    <h3>${movie.getMovieName()} - ${language} - (${movie.getMovieDuration()} phút)</h3>
                                    <h4>${date}</h4>
                                </div>
                                <input type="hidden" name="product_id" />
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="st_bt_top_close_btn st_bt_top_close_btn2 float_left"> <a href="#"><i
                                            class="fa fa-times"></i></a>
                                </div>
                                <div class="st_seatlay_btn float_left"> <a href="booking_type.jsp" id="payment-link"
                                        style="display: none;">Thanh Toán</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- st top header Start -->
                <!-- st seat Layout Start -->
                <div class="st_seatlayout_main_wrapper float_left">
                    <div class="container container_seat">
                        <div class="st_seat_lay_heading float_left">
                            <h3>Ariesplex SL Cinemas</h3>
                        </div>
                        <div class="st_seat_full_container">
                            <div class="st_seat_lay_economy_wrapper float_left">
                                <div class="screen">
                                    <img src="images/content/screen.png">
                                </div>
                                <div class="st_seat_lay_economy_heading float_left">
                                    <h3>Economy</h3>
                                </div>
                                <div class="st_seat_lay_row float_left">
                                    <ul>
                                        <li class="st_seat_heading_row">D</li>
                                        <c:forEach var="seat" items="${listSeat}">
                                            <c:if test="${seat.getIndex()>=1 && seat.getIndex()<=22}">
                                                <c:choose>
                                                    <c:when test="${seat.getStatus()=='active'}">
                                                        <li><span>Pay ${movie.getPrice()*1.5} VND</span>
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                    <c:when test="${seat.getStatus()=='unactive'}">
                                                        <li class="seat_disable">
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                </c:choose>

                                            </c:if>

                                        </c:forEach>


                                    </ul>
                                </div>
                            </div>
                            <div class="st_seat_lay_economy_wrapper st_seat_lay_economy_wrapperexicutive float_left">
                                <div class="st_seat_lay_economy_heading float_left">
                                    <h3>Executive + 3d glasss - rs 190.00</h3>
                                </div>
                                <div class="st_seat_lay_row float_left">
                                    <ul>
                                        <li class="st_seat_heading_row">C</li>
                                        <c:forEach var="seat" items="${listSeat}">
                                            <c:if test="${seat.getIndex()>=23 && seat.getIndex()<=44}">
                                                <c:choose>
                                                    <c:when test="${seat.getStatus()=='active'}">
                                                        <li><span>Pay ${movie.getPrice()} VND</span>
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                    <c:when test="${seat.getStatus()=='unactive'}">
                                                        <li class="seat_disable">
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                </c:choose>

                                            </c:if>

                                        </c:forEach>


                                    </ul>
                                </div>
                                <div class="st_seat_lay_row float_left">
                                    <ul>
                                        <li class="st_seat_heading_row">B</li>

                                        <c:forEach var="seat" items="${listSeat}">
                                            <c:if test="${seat.getIndex()>=45 && seat.getIndex()<=67}">
                                                <c:choose>
                                                    <c:when test="${seat.getStatus()=='active'}">
                                                        <li><span>Pay ${movie.getPrice()} VND</span>
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                    <c:when test="${seat.getStatus()=='unactive'}">
                                                        <li class="seat_disable">
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                </c:choose>

                                            </c:if>

                                        </c:forEach>
                                    </ul>
                                </div>
                                <div class="st_seat_lay_row float_left">
                                    <ul>
                                        <li class="st_seat_heading_row">A</li>

                                        <c:forEach var="seat" items="${listSeat}">
                                            <c:if test="${seat.getIndex()>=68 && seat.getIndex()<=94}">
                                                <c:choose>
                                                    <c:when test="${seat.getStatus()=='active'}">
                                                        <li><span>Pay ${movie.getPrice()} VND</span>
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for=c"${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                    <c:when test="${seat.getStatus()=='unactive'}">
                                                        <li class="seat_disable">
                                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                                            <label for="c${seat.getIndex()}"></label>
                                                        </li>
                                                    </c:when>
                                                </c:choose>

                                            </c:if>

                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- st seat Layout End -->
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
            <script>
                //* Isotope js
                function protfolioIsotope() {
                    if ($('.st_fb_filter_left_box_wrapper').length) {
                        // Activate isotope in container
                        $(".protfoli_inner, .portfoli_inner").imagesLoaded(function () {
                            $(".protfoli_inner, .portfoli_inner").isotope({
                                layoutMode: 'masonry',
                            });
                        });

                        // Add isotope click function
                        $(".protfoli_filter li").on('click', function () {
                            $(".protfoli_filter li").removeClass("active");
                            $(this).addClass("active");
                            var selector = $(this).attr("data-filter");
                            $(".protfoli_inner, .portfoli_inner").isotope({
                                filter: selector,
                                animationOptions: {
                                    duration: 450,
                                    easing: "linear",
                                    queue: false,
                                }
                            });
                        };
                    };
                    protfolioIsotope();



            </script>
            <script>
                    function collectSelectedSeats() {
                        const checkboxes = document.querySelectorAll('input[type="checkbox"][name="cb"]:checked');
                        let selectedSeats = [];

                        checkboxes.forEach(checkbox => {
                            selectedSeats.push(checkbox.id);
                        });

                        // Join the IDs into a single string
                        const selectedSeatsString = selectedSeats.join(',');

                        // Set the href of the link with selected seats as query parameter
                        const paymentLink = document.getElementById('payment-link');
                        paymentLink.href = `booking_type.jsp?selectedSeats=` + selectedSeatsString;
                    }

                    // Add event listener to the payment link
                    document.getElementById('payment-link').addEventListener('click', function (event) {
                        collectSelectedSeats();
                    });

            </script>
        </body>

        </html>