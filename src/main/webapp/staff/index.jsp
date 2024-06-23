<%@ page import="dal.MovieDAO" %>
<%@ page import="dal.DBContext" %>
<%@ page import="model.Movie" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

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
    <link rel="stylesheet" type="text/css" href="../css/seat.css"/>
    <link rel="stylesheet" type="text/css" href="../css/style.css"/>
    <link rel="stylesheet" type="text/css" href="../css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="../images/header/favicon.ico"/>
<%--    Swiper--%>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

        <style>
        .select-buttons button:hover, section button.active {
            background: #c22b2b;
            color: white;
        }

        .nice-select.form-select.w-auto.select2button {
            display: none;
        }

        .select-buttons button img {
            display: flex;
            flex-wrap: wrap;
            max-width: 155px;
            border-top-right-radius: 10px;
            border-top-left-radius: 10px;
            margin: 0 auto;
        }
        .select-buttons {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 8px;
        }
        .select-buttons .active{
            background: #c22b2b;
            color: white;
        }

        button {
            color: black;
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

<!-- prs upcomung Slider Start -->
<div class="prs_upcom_slider_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="prs_heading_section_wrapper">
                    <h2>Phim</h2>
                </div>
            </div>
            <select>
                <option name="status" value="Đang chiếu">Đang chiếu</option>
<%--                <option name="status" value="Sắp chiếu">Sắp chiếu</option>--%>
            </select>

            <%
                String status = request.getParameter("status");
                if (status == null) {
                    status = "Đang chiếu"; // Gán giá trị mặc định nếu status là null
                }
                MovieDAO dao = new MovieDAO(DBContext.getConn());
                List<Movie> list = dao.phim(status);
            %>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="best">
                    <div class="prs_upcom_slider_slides_wrapper all_movie">
                            <div class="item">
                                <div class="row">
                                    <swiper-container class="mySwiper2" space-between="10" slides-per-view="6" free-mode="true"
                                                      watch-slides-progress="true">
                                        <select name="movie" id="#" class="form-select w-auto select2button" >
                                           <%
                                                for (Movie movie : list) {
                                            %>
                                            <swiper-slide>

                                                        <option value="<%= movie.getImage() %>" data-thumbnail="<%= movie.getImage() %>">
                                                            <p value="<%= movie.getName() %>" class="product-color-text"><%= movie.getName() %></p>
                                                        </option>

                                            </swiper-slide>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </swiper-container>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- st top header Start -->
<div class="st_bt_top_header_wrapper float_left">
    <div class="container container_seat">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_back_btn st_bt_top_back_btn_seatl float_left"><a href="../movie_booking.jsp"><i
                        class="fas fa-long-arrow-alt-left"></i> &nbsp;Back</a>
                </div>
                <div class="cc_ps_quantily_info cc_ps_quantily_info_tecket">
                    <p>Select Ticket</p>
                    <div class="select_number">
                        <button onclick="changeQty(1); return false;" class="increase"><i class="fa fa-plus"></i>
                        </button>
                        <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control"/>
                        <button onclick="changeQty(0); return false;" class="decrease"><i class="fa fa-minus"></i>
                        </button>
                    </div>
                    <input type="hidden" name="product_id"/>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_center_heading st_bt_top_center_heading_seat_book_page float_left">
                    <h3>Aquaman - English - (2:47)</h3>
                    <h4>Today, 19 Dec, 10:00 PM</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_close_btn st_bt_top_close_btn2 float_left"><a href="#"><i class="fa fa-times"></i></a>
                </div>
                <div class="st_seatlay_btn float_left"><a href="../payment.jsp">Proceed to Pay</a>
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
                    <img src="../images/content/screen.png">
                </div>
                <div class="st_seat_lay_economy_heading float_left">
                    <h3>Economy</h3>
                </div>
                <div class="st_seat_lay_row float_left">
                    <ul>
                        <li class="st_seat_heading_row">D</li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c1" name="cb">
                            <label for="c1"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c2" name="cb" placeholder="1">
                            <label for="c2"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c3" name="cb">
                            <label for="c3"></label>
                        </li>
                        <li> <span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c4" name="cb">
                                        <label for="c4"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c5" name="cb">
                            <label for="c5"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c6" name="cb">
                            <label for="c6"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c7" name="cb" placeholder="1">
                            <label for="c7"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c8" name="cb">
                            <label for="c8"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c9" name="cb">
                            <label for="c9"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c10" name="cb">
                            <label for="c10"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c11" name="cb">
                            <label for="c11"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c12" name="cb">
                            <label for="c12"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c13" name="cb">
                            <label for="c13"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c14" name="cb">
                            <label for="c14"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c15" name="cb">
                            <label for="c15"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c16" name="cb">
                            <label for="c16"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c17" name="cb">
                            <label for="c17"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c18" name="cb">
                            <label for="c18"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c19" name="cb">
                            <label for="c19"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c20" name="cb" placeholder="1">
                            <label for="c20"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c21" name="cb">
                            <label for="c21"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c22" name="cb">
                            <label for="c22"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c23" name="cb">
                            <label for="c23"></label>
                        </li>
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
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c24" name="cb">
                            <label for="c24"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c25" name="cb" placeholder="1">
                            <label for="c25"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c26" name="cb">
                            <label for="c26"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c27" name="cb">
                            <label for="c27"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c28" name="cb">
                            <label for="c28"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c29" name="cb">
                            <label for="c29"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c30" name="cb" placeholder="1">
                            <label for="c30"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c31" name="cb">
                            <label for="c31"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c32" name="cb">
                            <label for="c32"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c33" name="cb">
                            <label for="c33"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c34" name="cb">
                            <label for="c34"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c35" name="cb">
                            <label for="c35"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c36" name="cb">
                            <label for="c36"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c37" name="cb">
                            <label for="c37"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c38" name="cb">
                            <label for="c38"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c39" name="cb">
                            <label for="c39"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c40" name="cb">
                            <label for="c40"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c41" name="cb">
                            <label for="c41"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li class="seat_disable">
                            <input type="checkbox" id="c42" name="cb">
                            <label for="c42"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c43" name="cb" placeholder="1">
                            <label for="c43"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c44" name="cb">
                            <label for="c44"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c45" name="cb">
                            <label for="c45"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c46" name="cb">
                            <label for="c46"></label>
                        </li>
                    </ul>
                </div>
                <div class="st_seat_lay_row float_left">
                    <ul>
                        <li class="st_seat_heading_row">B</li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c47" name="cb">
                            <label for="c47"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c48" name="cb" placeholder="1">
                            <label for="c48"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c49" name="cb">
                            <label for="c49"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c50" name="cb">
                            <label for="c50"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c51" name="cb">
                            <label for="c51"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c52" name="cb">
                            <label for="c52"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c53" name="cb" placeholder="1">
                            <label for="c53"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c54" name="cb">
                            <label for="c54"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c55" name="cb">
                            <label for="c55"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c56" name="cb">
                            <label for="c56"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c57" name="cb">
                            <label for="c57"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c58" name="cb">
                            <label for="c58"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c59" name="cb">
                            <label for="c59"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c60" name="cb">
                            <label for="c60"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c61" name="cb">
                            <label for="c61"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c62" name="cb">
                            <label for="c62"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c63" name="cb">
                            <label for="c63"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c64" name="cb">
                            <label for="c64"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c65" name="cb">
                            <label for="c65"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c66" name="cb" placeholder="1">
                            <label for="c66"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c67" name="cb">
                            <label for="c67"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c68" name="cb">
                            <label for="c68"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c69" name="cb">
                            <label for="c69"></label>
                        </li>
                    </ul>
                </div>
                <div class="st_seat_lay_row float_left">
                    <ul>
                        <li class="st_seat_heading_row">A</li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c70" name="cb">
                            <label for="c70"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c71" name="cb" placeholder="1">
                            <label for="c71"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c72" name="cb">
                            <label for="c72"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c73" name="cb">
                            <label for="c73"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c74" name="cb">
                            <label for="c74"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c75" name="cb">
                            <label for="c75"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c76" name="cb" placeholder="1">
                            <label for="c76"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c77" name="cb">
                            <label for="c77"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c78" name="cb">
                            <label for="c78"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c79" name="cb">
                            <label for="c79"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c80" name="cb">
                            <label for="c80"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c81" name="cb">
                            <label for="c81"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c82" name="cb">
                            <label for="c82"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c83" name="cb">
                            <label for="c83"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c84" name="cb">
                            <label for="c84"></label>
                        </li>
                        <li class="seat_disable">
                            <input type="checkbox" id="c85" name="cb">
                            <label for="c85"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c86" name="cb">
                            <label for="c86"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c87" name="cb">
                            <label for="c87"></label>
                        </li>
                    </ul>
                    <ul class="st_eco_second_row">
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c88" name="cb">
                            <label for="c88"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c89" name="cb" placeholder="1">
                            <label for="c89"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c90" name="cb">
                            <label for="c90"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c91" name="cb">
                            <label for="c91"></label>
                        </li>
                        <li><span>Pay Rs.790.00</span>
                            <input type="checkbox" id="c92" name="cb">
                            <label for="c92"></label>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- st seat Layout End -->
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
<script src="../js/plugin/rs_slider/jquery.themepunch.tools.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.addon.snow.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.actions.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.carousel.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.kenburn.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.layeranimation.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.migration.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.navigation.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.parallax.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.slideanims.min.js"></script>
<script src="../js/plugin/rs_slider/revolution.extension.video.min.js"></script>
<script src="../js/custom.js"></script>
<%--Swiper--%>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
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
                return false;
            });
        }
        ;
    }
    ;
    protfolioIsotope();

    function changeQty(increase) {
        var qty = parseInt($('.select_number').find("input").val());
        if (!isNaN(qty)) {
            qty = increase ? qty + 1 : (qty > 1 ? qty - 1 : 1);
            $('.select_number').find("input").val(qty);
        } else {
            $('.select_number').find("input").val(1);
        }
    }
</script>

<script>
    (function ($) {
        $.fn.select2button = function (options) {
            this.hide();
            return this.each(function (index) {
                var select = $(this);
                var selectButtons = $('<div class="select-buttons" />');
                select.after(selectButtons);

                var op = $('option', this);
                var ops = $('option:selected', this).index();

                op.each(function () {
                    var option = $(this);
                    var button = $('<button>' + option.text() + '</button>');

                    // Lấy đường dẫn hình ảnh từ thuộc tính data-thumbnail
                    var thumbnail = option.data('thumbnail');
                    if (thumbnail) {
                        var img = $('<img src="' + thumbnail + '" alt="' + option.text() + '" />');
                        button.prepend(img);
                    }

                    selectButtons.append(button);

                    if (this.index == ops)
                        button.addClass('active');

                    button.on('click', function () {
                        var btns = $(this).index();
                        op.removeAttr("selected");
                        selectButtons.find('button').removeClass('active');
                        $(this).addClass('active');
                        op.eq(btns).attr('selected', true);
                    });
                });
            });
        };
    }(jQuery));

    $('.select2button').select2button();
</script>
</body>

</html>