<%@ page import="dal.TicketDAO" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="dal.ComboDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>MCN | Đặt vé</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/confirmation_screen.css"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/shortcut-icon.png"/>

    <style>
        @media screen {
            .hidden-print-area {
                display: none;
            }
        }

        @media print {
            .hidden-print-area {
                display: block;
            }
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

<%
    int CustomerID = Integer.parseInt(request.getParameter("CustomerID"));

    TicketDAO dao = new TicketDAO(DBContext.getConn());
    ComboDAO cdao = new ComboDAO(DBContext.getConn());
    List<Ticket> list = dao.getTicketByBooking(CustomerID);

    int showtimeID = (int) session.getAttribute("time");
    Room room = null;
    try {
        room = dao.getRoomByShowtime(showtimeID);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    session.setAttribute("room", room);

    int ticketCount = dao.countTicketsByBooking(CustomerID);

    float TicketPrice = 0;
    float ConfimPrice = 0;
    String BookingID = null;
    double comboprice =0;
    ArrayList<Combo> combos = cdao.getComboByTicketID(list.get(list.size()-1).getTicketID());
    for(Combo combo:combos){
        comboprice+=combo.getPrice();
    }
    for (Ticket ticket : list) {
        TicketPrice += ticket.getTicketPrice();
        BookingID = ticket.getBookingID();
        ConfimPrice = ticket.getTicketPrice();
    }
    TicketPrice +=(float) comboprice;
    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

%>
<!-- st bc Start -->
<div class="st_bcc_main_main_wrapper float_left">
    <div class="st_bcc_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="st_bcc_heading_wrapper float_left"><i class="fa fa-check-circle"></i>
                        <h3>Thanh toán <span><%= currencyFormat.format(ConfimPrice) %></span> Thành Công</h3>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="st_bcc_ticket_boxes_wrapper">
                        <div class="st_bcc_tecket_top_hesder ">
                            <p><%= ticketCount %> VÉ CỦA BẠN ĐÃ ĐƯỢC XÁC NHẬN!</p>
                            <span>Booking ID <%= BookingID %></span>
                            <input type="button" onclick="printDiv('printableArea')" value="IN VÉ" class="print-ticket-button"/>
                        </div>
                        <div id="printableArea">
                            <%
                                int ticketIndex = 0;
                                for (Ticket ticket : list) {
                                    String ticketID = "ticket_" + ticketIndex;
                                    String qrCodeID = "qrcode_" + ticketIndex;
                                    ticketIndex++;
                            %>
                            <% // TÍNH THỜI GIAN KẾT THÚC

                                Movie movie = (Movie) session.getAttribute("movie");
                                // Lấy StartTime và Duration từ các đối tượng tương ứng
                                String startTimeStr = ticket.getStartTime(); // Giả sử định dạng "HH:mm"
                                int durationMinutes = movie.getDuration();

                                // Định dạng thời gian đầu vào
                                DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");

                                // Chuyển đổi chuỗi StartTime thành đối tượng LocalTime
                                LocalTime startTime = LocalTime.parse(startTimeStr, timeFormatter);

                                // Cộng thời lượng phim vào thời gian bắt đầu
                                LocalTime endTime = startTime.plusMinutes(durationMinutes);

                                // Định dạng lại thời gian kết thúc thành chuỗi để hiển thị
                                String endTimeStr = endTime.format(timeFormatter);
                                float formattedPrice = TicketPrice / ticketCount;
                                String formattedPriceDisplay = currencyFormat.format(formattedPrice);
                            %>
                                <div class="ticket created-by-anniedotexe">
                                    <div class="left">
                                        <div class="image">
                                            <img src="<%= ticket.getImage() %>">
                                            <div class="image-overlay">
                                                <p class="admit-one">
                                                    <span>MY CINEMA MY CINEMA MY CINEMA MY CINEMA</span>
                                                </p>
                                                <div class="ticket-number">
                                                    <p>
                                                        #<%= BookingID %>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ticket-info">
                                            <p class="date">
                                                <span>TUESDAY</span>
                                                <span id="startDate" class="june-29"><%= ticket.getStartDate() %></span>
                                                <span>2024</span>
                                            </p>
                                            <div class="show-name">
                                                <h1><%= ticket.getMovieName() %>
                                                </h1>
                                                <h4 class="movie-language">${sessionScope.language}</h4>
                                            </div>
                                            <div class="time">
                                                <p><%= ticket.getStartTime() %> PM <span>ĐẾN</span> <%=endTimeStr%> PM</p>
                                                <p>PHÒNG: ${sessionScope.room.roomId} - GHẾ: <%= ticket.getSeatID() %>
                                                </p>
<%--                                                <%if(ticket.getComboId()!=null){%>--%>
<%--                                                <p>Combo: <%=ticket.getComboId().get(0).getName()%></p>--%>
<%--                                                <%}%>--%>
                                            </div>
                                            <p class="location"><span style="min-width: 150px;">MY CINEMA</span>
                                                <span class="separator">
                                                <img src="images/header/favicon.ico">
                                            </span><span>THẠCH THẤT - HÀ NỘI</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="right">
                                        <p class="admit-one">
                                            <span>MY CINEMA </span>
                                        </p>
                                        <div class="right-info-container">
                                            <div class="barcode">
                                                <input type="text" spellcheck="false" hidden="" id="<%= ticketID %>"
                                                       value="<%= BookingID %>"/>
                                                <div class="qrcode" id="<%= qrCodeID %>"></div>
                                            </div>
                                            <p class="ticket-number">
                                                #<%= BookingID %>
                                            </p>
                                                <p class="movie-price hidden-print-area">
                                                    <%= ConfimPrice %>
                                                </p>
                                        </div>
                                    </div>
                                </div>
                                <%
                                if(!combos.isEmpty() && list.indexOf(ticket) ==(list.size()-1)){
                                %>

                                <div class="ticket created-by-anniedotexe">
                                    <div class="left">
                                        <div class="image">
                                            <img src="<%= ticket.getImage() %>">
                                            <div class="image-overlay">
                                                <p class="admit-one">
                                                    <span>MY CINEMA MY CINEMA MY CINEMA MY CINEMA</span>
                                                </p>
                                                <div class="ticket-number">
                                                    <p>
                                                        #<%= BookingID %>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ticket-info">
                                            <p class="date">
                                                <span>TUESDAY</span>
                                                <span id="" class="june-29"><%= ticket.getStartDate() %></span>
                                                <span>2024</span>
                                            </p>
                                            <div class="show-name">
                                                <h1><%= ticket.getMovieName() %>
                                                </h1>
                                                <h4 class="movie-language">${sessionScope.language}</h4>
                                            </div>
                                            <div class="time">
                                                <p><%= ticket.getStartTime() %> PM <span>ĐẾN</span> <%=endTimeStr%> PM</p>
                                                <%
                                                for(Combo combo:combos){

                                                    %>
                                                <p>
                                                    <%=combo.getName()%>: <%=combo.getAmount()%> : <%= currencyFormat.format(combo.getPrice() * combo.getAmount()) %>
                                                </p>

                                                <%
                                                }
                                                %>

                                                <%if(ticket.getComboId()!=null){%>
                                                <p>Combo: <%=ticket.getComboId().get(0).getName()%></p>
                                                <%}%>
                                            </div>
                                            <p class="location"><span style="min-width: 150px;">MY CINEMA</span>
                                                <span class="separator">
                                                <img src="images/header/favicon.ico">
                                            </span><span>THẠCH THẤT - HÀ NỘI</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="right">
                                        <p class="admit-one">
                                            <span>MY CINEMA </span>
                                        </p>
                                        <div class="right-info-container">
                                            <div class="barcode">
                                                <input type="text" spellcheck="false" hidden="" id="<%= ticketID %>"
                                                       value="<%= BookingID %>"/>
                                                <div class="qrcode" id="<%= qrCodeID %>"></div>
                                            </div>
                                            <p class="ticket-number">
                                                #<%= BookingID %>
                                            </p>
                                            <p class="movie-price hidden-print-area">
                                                <%= ConfimPrice %>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                    <%

                            }

                             }
                                %>


                        </div>
                    </div>
                    <div class="st_bcc_ticket_boxes_bottom_wrapper float_left">
                        <p>Bạn có thể truy cập vé của mình từ Hồ sơ của bạn. </p>
<%--                        <ul>--%>
<%--                            <li><a href="#">MỜI BẠN BÈ</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- st bc End -->

<script>
    function printDiv(printableArea) {
        var printContents = document.getElementById(printableArea).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>

<%@include file="footer.jsp" %>
<!-- prs footer Wrapper End -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        <%
            ticketIndex = 0;
            for (Ticket ticket : list) {
                String qrCodeID = "qrcode_" + ticketIndex;
                String ticketID = "ticket_" + ticketIndex;
                ticketIndex++;
        %>
        var qr<%= ticketIndex %> = new QRCode(document.getElementById("<%= qrCodeID %>"));
        var textInput<%= ticketIndex %> = document.getElementById("<%= ticketID %>");
        textInput<%= ticketIndex %>.oninput = function (e) {
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
<script src="js/jquery.dlmenu.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.nice-select.min.js"></script>

<!--main js file end-->
</body>

</html>