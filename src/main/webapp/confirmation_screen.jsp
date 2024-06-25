<%@ page import="dal.TicketDAO" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
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

    <style>
        .st_bcc_tecket_bottom_right_wrapper .qrcode img {
            width: 110px;
            margin: 0 auto;
        }
    </style>
</head>

<body class="booking_type_back">
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
                    <h2>XÁC NHẬN THÔNG TIN</h2>
                    <ul>
                        <li><a href="home">Trang Chủ</a>
                        </li>
                        <li>&nbsp;&nbsp; >&nbsp;&nbsp; Xác Nhận Thông Tin</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- prs title wrapper End -->
<%
    int CustomerID = Integer.parseInt(request.getParameter("CustomerID"));
    TicketDAO dao = new TicketDAO(DBContext.getConn());
    List<Ticket> list = dao.getTicketByBooking(CustomerID);
    int ticketCount = dao.countTicketsByBooking(CustomerID);

    float TicketPrice = 0;
    String BookingID = null;

    for (Ticket ticket : list) {
        TicketPrice += ticket.getTicketPrice();
        BookingID = ticket.getBookingID();
    }
    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

%>
<!-- st bc Start -->
<div class="st_bcc_main_main_wrapper float_left">
    <div class="st_bcc_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="st_bcc_heading_wrapper float_left"><i class="fa fa-check-circle"></i>
                        <h3>Thanh toán <span><%= currencyFormat.format(TicketPrice) %></span> Thành Công</h3>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="st_bcc_ticket_boxes_wrapper float_left">
                        <div class="st_bcc_tecket_top_hesder float_left">
                            <p>VÉ CỦA BẠN ĐÃ ĐƯỢC XÁC NHẬN!</p> <span>Booking ID <%= BookingID %></span>
                        </div>
                        <%
                            int ticketIndex = 0;
                            for (Ticket ticket : list) {
                                String ticketID = "ticket_" + ticketIndex;
                                String qrCodeID = "qrcode_" + ticketIndex;
                                ticketIndex++;
                        %>
                        <div class="st_bcc_tecket_bottom_hesder float_left">
                            <div class="st_bcc_tecket_bottom_left_wrapper">
                                <div class="st_bcc_tecket_bottom_inner_left">
                                    <div class="st_bcc_teckt_bot_inner_img">
                                        <img src="<%= ticket.getImage() %>" alt="img" style="width: 130px">
                                    </div>
                                    <div class="st_bcc_teckt_bot_inner_img_cont">
                                        <h4><%= ticket.getMovieName() %></h4>
                                        <h5><%= ticket.getSeatID() %></h5>
                                        <h3><%= ticket.getStartDate() %> | <%= ticket.getStartTime() %></h3>
                                    </div>
                                    <div class="st_purchase_img">
                                        <img src="images/content/pur2.png" alt="img">
                                    </div>
                                </div>
                                <div class="st_bcc_tecket_bottom_inner_right"><i class="fas fa-chair"></i>
                                    <h3><%= ticketCount %> TICKETS <br>
                                        <span>EXECUTIV - K1, K2</span></h3>
                                </div>
                            </div>
                            <div class="st_bcc_tecket_bottom_right_wrapper">
                                <input  type="text" spellcheck="false" hidden="" id="<%= ticketID %>" value="<%= BookingID %>" />
                                <div class="qrcode" id="<%= qrCodeID %>"></div>
                            </div>
                        </div>
                        <% } %>
                        <div class="st_bcc_tecket_bottom_left_price_wrapper">
                            <h4>Total Amount</h4>
                            <h5><%= currencyFormat.format(TicketPrice) %></h5>
                        </div>
                    </div>
                    <div class="st_bcc_ticket_boxes_bottom_wrapper float_left">
                        <p>Bạn có thể truy cập vé của mình từ Hồ sơ của bạn. Chúng tôi sẽ gửi cho bạn
                            <br>Xác nhận qua e-Mail/SMS trong vòng 15 phút.</p>
                        <ul>
                            <li><a href="#">MỜI BẠN BÈ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- st bc End -->

<%@include file="footer.jsp" %>
<!-- prs footer Wrapper End -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        <%
            ticketIndex = 0;
            for (Ticket ticket : list) {
                String qrCodeID = "qrcode_" + ticketIndex;
                String ticketID = "ticket_" + ticketIndex;
                ticketIndex++;
        %>
        var qr<%= ticketIndex %> = new QRCode(document.getElementById("<%= qrCodeID %>"));
        var textInput<%= ticketIndex %> = document.getElementById("<%= ticketID %>");
        textInput<%= ticketIndex %>.oninput = function(e) {
            qr<%= ticketIndex %>.makeCode(e.target.value.trim());
        };
        qr<%= ticketIndex %>.makeCode(textInput<%= ticketIndex %>.value.trim());
        <% } %>
    });
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
</body>

</html>