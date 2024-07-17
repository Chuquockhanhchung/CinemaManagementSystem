<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">

<head>
    <meta charset="utf-8"/>
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css"/>
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>

    <link rel="stylesheet" type="text/css" href="css/seat.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico"/>

</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="images/header/horoscope.gif" id="preloader_image" alt="loader">
    </div>
</div>

<%-- Header Start --%>
<%@include file="header.jsp" %>
<%-- Header End --%>
<!-- st top header Start -->
<div class="st_bt_top_header_wrapper float_left">
    <div class="container container_seat">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_back_btn st_bt_top_back_btn_seatl float_left">
                    <a href="detail?id=${sessionScope.movie.getId()}">
                        <i class="fas fa-long-arrow-alt-left"></i> &nbsp;Trở lại
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_center_heading st_bt_top_center_heading_seat_book_page float_left">
                    <h3>${sessionScope.movie.getName()}</h3>
                    <h3>${sessionScope.language} - (${sessionScope.movie.getDuration()} phút)</h3>
                    <h3>${sessionScope.date}</h3>
                </div>
                <input type="hidden" name="product_id"/>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                <div class="st_bt_top_close_btn st_bt_top_close_btn2 float_left">
                    <a href="#"><i class="fa fa-times" style="color: white;"></i></a>
                </div>
                <div class="st_seatlay_btn float_left">
                    <a id="continue-link" href="#">Tiếp tục</a>
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
                        <c:forEach var="seat" items="${sessionScope.listSeat}">
                            <c:if test="${seat.getIndex() >= 1 && seat.getIndex() <= 22}">
                                <c:choose>
                                    <c:when test="${seat.getStatus() == 'active'}">
                                        <li>
                                            <span>Pay ${sessionScope.movie.getPrice() * 1.5} VND</span>
                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                            <label for="c${seat.getIndex()}"></label>
                                        </li>
                                    </c:when>
                                    <c:when test="${seat.getStatus() != 'active'}">
                                        <li class="seat_disable">
                                            <input type="checkbox" id="c${seat.getIndex()}">
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
                    <h3>Executive</h3>
                </div>
                <div class="st_seat_lay_row float_left">
                    <ul>
                        <li class="st_seat_heading_row">C</li>
                        <c:forEach var="seat" items="${sessionScope.listSeat}">
                            <c:if test="${seat.getIndex() >= 23 && seat.getIndex() <= 44}">
                                <c:choose>
                                    <c:when test="${seat.getStatus() == 'active'}">
                                        <li>
                                            <span>Pay ${sessionScope.movie.getPrice()} VND</span>
                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                            <label for="c${seat.getIndex()}"></label>
                                        </li>
                                    </c:when>
                                    <c:when test="${seat.getStatus() != 'active'}">
                                        <li class="seat_disable">
                                            <input type="checkbox" id="c${seat.getIndex()}">
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
                        <c:forEach var="seat" items="${sessionScope.listSeat}">
                            <c:if test="${seat.getIndex() >= 45 && seat.getIndex() <= 67}">
                                <c:choose>
                                    <c:when test="${seat.getStatus() == 'active'}">
                                        <li>
                                            <span>Pay ${sessionScope.movie.getPrice()} VND</span>
                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                            <label for="c${seat.getIndex()}"></label>
                                        </li>
                                    </c:when>
                                    <c:when test="${seat.getStatus() != 'active'}">
                                        <li class="seat_disable">
                                            <input type="checkbox" id="c${seat.getIndex()}">
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
                        <c:forEach var="seat" items="${sessionScope.listSeat}">
                            <c:if test="${seat.getIndex() >= 68 && seat.getIndex() <= 91}">
                                <c:choose>
                                    <c:when test="${seat.getStatus() == 'active'}">
                                        <li>
                                            <span>Pay ${sessionScope.movie.getPrice()} VND</span>
                                            <input type="checkbox" id="c${seat.getIndex()}" name="cb">
                                            <label for="c${seat.getIndex()}"></label>
                                        </li>
                                    </c:when>
                                    <c:when test="${seat.getStatus() != 'active'}">
                                        <li class="seat_disable">
                                            <input type="checkbox" id="c${seat.getIndex()}">
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
<!-- Combo Selection Modal -->
<div id="comboModal" class="modal">
    <div class="modal-content">
        <%--        <span class="close">&times;</span>--%>
        <div class="header">
            <h1>Chọn combo bắp nước</h1>
            <div class="payment-button">
                <a href="#" id="payment-link" class="btn btn-danger">Thanh toán</a>
            </div>
        </div>

        <div class="main">
            <c:forEach items="${sessionScope.combos}" var="c">
                <div class="combo" data-combo-id="${c.getId()}">
                    <div>
                        <img src="${c.getImg()}" alt="${c.getName()}">
                        <h3>${c.getName()}</h3>
                        <p>${c.getDescription()}</p>
                        <p class="price">Giá: ${c.getPrice()} ₫</p>
                    </div>
                    <div class="quantity">
                        <button onclick="updateQuantity(this, ${c.getAmount()})">-</button>
                        <input type="text" value="0" size="1" readonly>
                        <button onclick="updateQuantity(this, ${c.getAmount()})">+</button>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</div>

<!-- st seat Layout End -->

<script>
    function updateQuantity(button, maxAmount) {
        var quantityInput = button.parentNode.querySelector('input');
        var currentValue = parseInt(quantityInput.value);
        if (button.textContent === "+") {
            if (currentValue < maxAmount) {
                quantityInput.value = currentValue + 1;
            }
        } else {
            if (currentValue > 0) {
                quantityInput.value = currentValue - 1;
            }
        }
    }

    // function submitCombos() {
    //     var combos = [];
    //     document.querySelectorAll('.combo').forEach(function(combo) {
    //         var comboId = combo.getAttribute('data-combo-id');
    //         var quantity = combo.querySelector('input').value;
    //         if (quantity > 0) {
    //             combos.push({id: comboId, quantity: quantity});
    //         }
    //     });
    //     console.log(combos);
    //     var form = document.getElementById('combo-form');
    //     var input = document.getElementById('combo-data');
    //     input.value = JSON.stringify(combos);
    //     form.submit();
    // }
</script>
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
            });
        }
        ;
        protfolioIsotope();
    }
</script>
<%--<script>--%>
<%--    document.getElementById('payment-link').addEventListener('click', function (event) {--%>
<%--        const checkboxes = document.querySelectorAll('input[type="checkbox"][name="cb"]:checked');--%>
<%--        let selectedSeats = [];--%>
<%--        if (checkboxes.length === 0) {--%>
<%--            // Show mesage--%>
<%--            alert("Hãy chọn ít nhất một ghế trước khi thực hiện thanh toán.");--%>
<%--            event.preventDefault();--%>
<%--            return false;//Stop function--%>
<%--        }--%>
<%--        checkboxes.forEach(checkbox => {--%>
<%--            selectedSeats.push(checkbox.id);--%>
<%--        });--%>

<%--        // Join the IDs into a single string--%>
<%--        const selectedSeatsString = selectedSeats.join(',');--%>
<%--        var combos = [];--%>
<%--        document.querySelectorAll('.combo').forEach(function(combo) {--%>
<%--            var comboId = combo.getAttribute('data-combo-id');--%>
<%--            var quantity = combo.querySelector('input').value;--%>
<%--            if (quantity > 0) {--%>
<%--                combos.push(comboId,quantity);--%>
<%--            }--%>
<%--        });--%>
<%--        var combosString = JSON.stringify(combos);--%>
<%--        // Set the href of the link with selected seats as query parameter--%>
<%--        const paymentLink = document.getElementById('payment-link');--%>
<%--        paymentLink.href = `ticket?CustomerID=${sessionScope.user.idCustomer}&selectedSeats=` + selectedSeatsString+`&comboId=`+encodeURIComponent(combosString);--%>
<%--    });--%>
<%--</script>--%>
<script>
    document.getElementById('continue-link').addEventListener('click', function (event) {
        const checkboxes = document.querySelectorAll('input[type="checkbox"][name="cb"]:checked');
        if (checkboxes.length === 0) {
            alert("Hãy chọn ít nhất một ghế trước khi tiếp tục.");
            event.preventDefault();
            return false; // Stop function
        }
        document.getElementById('comboModal').style.display = 'block';
    });

    document.querySelector('.close').addEventListener('click', function () {
        document.getElementById('comboModal').style.display = 'none';
    });

    document.getElementById('payment-link').addEventListener('click', function (event) {
        const checkboxes = document.querySelectorAll('input[type="checkbox"][name="cb"]:checked');
        let selectedSeats = [];
        checkboxes.forEach(checkbox => {
            selectedSeats.push(checkbox.id);
        });

        const selectedSeatsString = selectedSeats.join(',');
        var combos = [];
        document.querySelectorAll('.combo').forEach(function (combo) {
            var comboId = combo.getAttribute('data-combo-id');
            var quantity = combo.querySelector('input').value;
            if (quantity > 0) {
                combos.push(comboId, quantity);
            }
        });

        const combosString = JSON.stringify(combos);


        const paymentLink = document.getElementById('payment-link');
        paymentLink.href = `ticket?CustomerID=${sessionScope.user.idCustomer}&selectedSeats=` + selectedSeatsString + `&comboId=` + encodeURIComponent(combosString);
    });

    // Close modal if user clicks outside of the modal content
    window.onclick = function (event) {
        const modal = document.getElementById('comboModal');
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    };
</script>
</body>

</html>