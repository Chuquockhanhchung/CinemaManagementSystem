<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 7/10/2024
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>
<%@ page import="dal.CustomerDAO" %>
<%@ page import="dal.TicketDAO" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalTime" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tài Khoản MCN</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/user-info.css" rel="stylesheet">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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

    <link rel="stylesheet" type="text/css" href="css/confirmation_screen.css"/>


</head>

<body>
<%@include file="header.jsp" %>
<div class="container">
    <aside class="sidebar">
        <h4>TÀI KHOẢN MCN</h4>
        <a href="#thong-tin-chung" class="active" data-toggle="tab">Thông Tin Cá Nhân</a>
        <a href="#thong-tin-tai-khoan" data-toggle="tab">Thông Tin Tài Khoản</a>
        <a href="#lich-su-giao-dich" data-toggle="tab">Lịch Sử Giao Dịch</a>
    </aside>
    <main class="main-content">
        <%
            int CustomerID = Integer.parseInt(request.getParameter("CustomerID"));
            CustomerDAO dao = new CustomerDAO(DBContext.getConn());
            Customer cus = dao.getCustomerByID(CustomerID);
        %>
        <div class="tab-pane" id="thong-tin-chung" style="display: block;">
            <div class="profile">
                <div class="profile-image">
                    <img src="default-avatar.png" alt="Avatar">
                    <button>Thay đổi</button>
                </div>
                <div class="profile-info">
                    <p>Xin chào <%= cus.getName() %>
                    </p>
                    <p>Với trang này, bạn sẽ quản lý được tất cả thông tin tài khoản của mình.</p>
                    <div class="card-info">
                        <div class="card-info-item">
                            <p>Tổng Chi Tiêu</p>
                            <p>0 đ</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="account-info">
                <h2>Thông tin tài khoản</h2>
                <div class="account-info-item">
                    <p>LIÊN HỆ</p>
                    <button>Thay đổi</button>
                </div>
                <div class="account-info-details">
                    <p><strong>Tên:</strong> Nguyễn Tiến Đạt</p>
                    <p><strong>Email:</strong> datlacve2@gmail.com</p>
                    <p><strong>Điện thoại:</strong> 0968338829</p>
                </div>
            </div>
        </div>

        <div class="tab-pane" id="thong-tin-tai-khoan" style="display: none;">
            <form class="account-details-form" action="updateprofile" method="post" enctype="multipart/form-data"
                  onsubmit="return validateForm2()">
                <div class="profile-image">
                    <input type="file" class="form-control-file" id="profile-pic" name="profile-pic"
                           onchange="previewImage(event)">
                    <img id="profile-pic-preview" src="<%= cus.getPicture() %>>" alt="Profile Picture" class="mt-2"
                         style="width: 100px; height: 100px;">
                </div>
                <div class="form-group">
                    <label for="full-name">Tên *</label>
                    <input type="text" id="full-name" name="name" value="${sessionScope.user.name}" required>
                </div>
                <div class="form-group">
                    <label for="phone">Điện thoại *</label>
                    <input type="text" id="phone" name="phone" value="${sessionScope.user.phone}" required>
                </div>
                <%--                <div class="form-group">--%>
                <%--                    <label>Giới tính *</label>--%>
                <%--                    <div>--%>
                <%--                        <input type="radio" id="male" name="gender" value="male" checked>--%>
                <%--                        <label for="male">Nam</label>--%>
                <%--                        <input type="radio" id="female" name="gender" value="female">--%>
                <%--                        <label for="female">Nữ</label>--%>
                <%--                        <input type="radio" id="none" name="gender" value="none">--%>
                <%--                        <label for="none">None</label>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <%--                <div class="form-group">--%>
                <%--                    <label for="address">Địa chỉ *</label>--%>
                <%--                    <input type="text" id="address" value="No address 700" required>--%>
                <%--                </div>--%>
                <%--                <div class="form-group">--%>
                <%--                    <label for="birthday">Ngày sinh</label>--%>
                <%--                    <input type="text" id="birthday" value="${sessionScope.user.DOB}" disabled>--%>
                <%--                </div>--%>
                <div class="form-group">
                    <label for="email">Địa chỉ email *</label>
                    <input type="email" id="email" name="email" value="${sessionScope.user.email}" required>
                </div>
                <div class="form-group buttons">
                    <button type="submit">LƯU LẠI</button>
                </div>
            </form>
            <form action="resetPassword" method="post" onsubmit="return validateForm()">
                <%--                <div class="form-group">--%>
                <%--                    <label for="username">Tên Tài Khoản</label>--%>
                <%--                    <input type="text" class="form-control" name="email" id="username" value="${sessionScope.email}"--%>
                <%--                           readonly>--%>
                <%--                </div>--%>
                <div class="form-group">
                    <label for="current-password">Mật Khẩu Hiện Tại *</label>
                    <input type="password" class="form-control" id="current-password">
                </div>
                <div class="form-group">
                    <label for="new-password">Mật Khẩu Mới *</label>
                    <input type="password" class="form-control" name="newPassword" id="new-password">
                </div>
                <div class="form-group">
                    <label for="confirm-password">Xác Nhận Mật Khẩu Mới *</label>
                    <input type="password" class="form-control" id="confirm-password" name="confirm-password">
                </div>
                <div class="form-group buttons">
                    <button type="submit" class="btn btn-primary">Thay Đổi Mật Khẩu</button>
                </div>
            </form>
            <div class="required-note">
                * Thông tin bắt buộc
            </div>
        </div>

        <div class="tab-pane" id="lich-su-giao-dich" style="display: none;">
            <h3>LỊCH SỬ GIAO DỊCH</h3>
            <%
                TicketDAO ticketdao = new TicketDAO(DBContext.getConn());
                List<Ticket> ticketlist = ticketdao.getTicketByCustomer(CustomerID);
                int ticketCount = ticketdao.countTicketsByBooking(CustomerID);
                NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

                int ticketIndex = 0;
                for (Ticket ticket : ticketlist) {
                    String ticketID = "ticket_" + ticketIndex;
                    String qrCodeID = "qrcode_" + ticketIndex;
                    ticketIndex++;
            %>
            <%
                    float TicketPrice = ticket.getTicketPrice();
                    Movie movie = (Movie) session.getAttribute("movie");
                    String startTimeStr = ticket.getStartTime(); // Giả sử định dạng "HH:mm"
//                    int durationMinutes = movie.getDuration();

                    // Định dạng thời gian đầu vào
                    DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");

                    // Chuyển đổi chuỗi StartTime thành đối tượng LocalTime
                    LocalTime startTime = LocalTime.parse(startTimeStr, timeFormatter);

                    // Cộng thời lượng phim vào thời gian bắt đầu
//                    LocalTime endTime = startTime.plusMinutes(durationMinutes);

                    // Định dạng lại thời gian kết thúc thành chuỗi để hiển thị
//                    String endTimeStr = endTime.format(timeFormatter);
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
                                    #<%= ticket.getBookingID() %>
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
<%--                            <p><%= ticket.getStartTime() %> PM <span>ĐẾN</span> <%=endTimeStr%> PM</p>--%>
                            <p>PHÒNG: <%=ticket.getRoomID()%> - GHẾ: <%= ticket.getSeatID() %>
                            </p>
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
                        <span>MY CINEMA MY CINEMA MY CINEMA MY CINEMA</span>
                    </p>
                    <div class="right-info-container">
                        <div class="barcode">
                            <input type="text" spellcheck="false" hidden="" id="<%= ticket.getTicketID() %>"
                                   value="<%= ticket.getBookingID() %>"/>
                            <div class="qrcode" id="<%= qrCodeID %>"></div>
                        </div>
                        <p class="ticket-number">
                            #<%= ticket.getBookingID() %>
                        </p>
                        <p class="movie-price hidden-print-area">
                            <%= formattedPriceDisplay %>
                        </p>
                    </div>
                </div>
            </div>

            <%
                }
            %>
        </div>

    </main>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        // Handle click on sidebar links
        $('.sidebar a').on('click', function (e) {
            e.preventDefault();
            var target = $(this).attr('href');
            $('.sidebar a').removeClass('active');
            $(this).addClass('active');
            $('.tab-pane').css('display', 'none');
            $(target).css('display', 'block');
        });
    });
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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


<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<script>
    function previewImage(event) {
        var reader = new FileReader();
        reader.onload = function () {
            var output = document.getElementById('profile-pic-preview');
            output.src = reader.result;
        }
        reader.readAsDataURL(event.target.files[0]);
    }

    function checkPasswords() {
        var newPassword = document.getElementById('new-password').value;
        var confirmPassword = document.getElementById('confirm-password').value;
        var errorDiv = document.getElementById('password-error');

        if (newPassword !== confirmPassword) {
            errorDiv.textContent = 'Mật khẩu và xác nhận mật khẩu không khớp.';
            return false;
        }

        return true;
    }

    function validateForm() {
        // Get form elements
        const email = document.getElementById('username').value;
        const pass1 = document.querySelector('input[name="newPassword"]').value;
        const pass2 = document.querySelector('input[name="confirm-password"]').value;

        // Email regex pattern
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        // Phone regex pattern (assuming it should be 10-15 digits)
        const passPattern = /^\d{6}$/;
        if (!passPattern.test(pass1)) {
            alert("Hãy điền mật khẩu hợp lệ (6 chữ số).");
            return false;
        }
        // Validate email
        if (!emailPattern.test(email)) {
            alert("Hãy nhập địa chỉ email hợp lệ (abc@abc.abc)");
            return false;
        }


        // Validate name

        // Validate passwords
        if (pass1 === "" || pass2 === "") {
            alert("Hãy nhập mật khẩu.");
            return false;
        }

        if (pass1 !== pass2) {
            alert("Mật khẩu không trùng khớp.");
            return false;
        }

        return true;

    }

    function validateForm2() {
        // Get form elements
        const name = document.getElementById('full-name').value;
        const email = document.querySelector('input[name="email"]').value;
        const phone = document.querySelector('input[name="phone"]').value;

        // Email regex pattern
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        // Phone regex pattern (assuming it should be 10-15 digits)
        const phonePattern = /^\d{10}$/;

        // Validate email
        if (!emailPattern.test(email)) {
            alert("Hãy nhập địa chỉ email hợp lệ (abc@abc.abc)");
            return false;
        }
        // Validate name
        if (name.trim() === "") {
            alert("Hãy nhập tên.");
            return false;
        }
        //Validate phone
        if (!phonePattern.test(phone)) {
            alert("Hãy điền số điện thoại hợp lệ (10 chữ số).");
            return false;
        }
        return true;

    }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        <%
            ticketIndex = 0;
            for (Ticket ticket : ticketlist) {
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
</body>

</html>
