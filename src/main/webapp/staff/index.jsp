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

        .select-buttons .active {
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
                List<Movie> list = dao.phim(status,"");
            %>
            <form action="../booking_movie" method="post">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="best">
                        <div class="prs_upcom_slider_slides_wrapper all_movie">
                            <div class="item">
                                <div class="row">
                                    <swiper-container class="mySwiper2" space-between="10" slides-per-view="6"
                                                      free-mode="true"
                                                      watch-slides-progress="true">
                                        <select name="id" id="#" class="form-select w-auto select2button">
                                            <%
                                                for (Movie movie : list) {
                                            %>
                                            <swiper-slide>

                                                <option value="<%= movie.getId() %>"
                                                        data-thumbnail="<%= movie.getImage() %>">
                                                    <p value="<%= movie.getName() %>"
                                                       class="product-color-text"><%= movie.getName() %>
                                                    </p>
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
            </form>
        </div>
    </div>

    <!-- st top header Start -->

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