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
<%@ page import="dal.ComboDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Cá Nhân</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/user-info.css" rel="stylesheet">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/fonts.css"/>
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="css/dl-menu.css"/>
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>


    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>
    <link rel="stylesheet" type="text/css" href="css/confirmation_screen.css"/>
    <!-- SweetAlert2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <!-- SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body>

<c:if test="${not empty succMess}">
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            Swal.fire({
                title: "Chúc Mừng!",
                text: "${succMess}",
                icon: "success",
                allowOutsideClick: true,
                showCancelButton: false,
                confirmButtonText: "OK"
            });
        });
    </script>
    <c:remove var="succMess" scope="session"/>
</c:if>

<c:if test="${not empty failMess}">
    <p style="padding: 10px" class="text-center text-danger">${failMess}</p>
    <c:remove var="failMess" scope="session"/>
</c:if>

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
            int totalSpending = dao.getTotalSpendingByCustomerId(CustomerID);
            NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

        %>
        <div class="tab-pane" id="thong-tin-chung" style="display: block;">
            <div class="profile">
                <div class="profile-image">
                    <img src="<%= cus.getPicture() %>" alt="Avatar">
                </div>
                <div class="profile-info">
                    <p>Xin chào <%= cus.getName() %>
                    </p>
                    <p>Với trang này, bạn sẽ quản lý được tất cả thông tin tài khoản của mình.</p>
                    <div class="card-info">
                        <div class="card-info-item">
                            <p>Tổng Chi Tiêu</p>
                            <p><%= currencyFormat.format(totalSpending) %>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="account-info">
                <h2>Thông tin tài khoản</h2>
                <div class="account-info-item">
                    <p>LIÊN HỆ</p>
                </div>
                <div class="account-info-details">
                    <p><strong>Tên:</strong> <%= cus.getName() %>
                    </p>
                    <p><strong>Email:</strong> <%= cus.getEmail() %>
                    </p>
                    <p><strong>Điện thoại:</strong> <%= cus.getPhone() %>
                    </p>
                </div>
            </div>
        </div>

        <div class="tab-pane" id="thong-tin-tai-khoan" style="display: none;">
            <form class="account-details-form" action="updateprofile" method="post" enctype="multipart/form-data" onsubmit="return validateProfileForm()">
                <input type="hidden" value="<%= CustomerID %>" name="CustomerID">
                <div class="profile-image">
                    <input type="file" class="form-control-file" id="profile-pic" name="profile-pic" onchange="previewImage(event)" accept="image/png, image/jpeg, image/jpg">
                    <img id="profile-pic-preview" src="<%= cus.getPicture() %>" alt="Profile Picture" class="mt-2" style="width: 100px; height: 100px;">
                </div>
                <div class="form-group">
                    <label for="full-name">Họ và Tên *</label>
                    <input type="text" id="full-name" name="name" value="<%= cus.getName() %>" required>
                </div>
                <div class="form-group">
                    <label for="email">Địa chỉ email *</label>
                    <input type="email" id="email" name="email" value="<%= cus.getEmail() %>" required>
                </div>
                <div class="form-group">
                    <label for="phone">Điện thoại *</label>
                    <input type="text" id="phone" name="phone" value="<%= cus.getPhone() %>" required>
                </div>
                <div class="form-group">
                    <label>Giới tính</label>
                    <div>
                        <input type="radio" id="male" name="gender" value="male" <%= "male".equals(cus.getGender()) ? "checked" : "" %>>
                        <label for="male">Nam</label>
                        <input type="radio" id="female" name="gender" value="female" <%= "female".equals(cus.getGender()) ? "checked" : "" %>>
                        <label for="female">Nữ</label>
                        <input type="radio" id="other" name="gender" value="other" <%= "other".equals(cus.getGender()) ? "checked" : "" %>>
                        <label for="other">Khác</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" id="address" name="address" value="<%= (cus.getAddress() != null && !cus.getAddress().isEmpty()) ? cus.getAddress() : "Chưa có địa chỉ" %>">
                </div>
                <div class="form-group">
                    <label for="birthday">Ngày sinh *</label>
                    <input type="date" id="birthday" name="dob" value="<%= cus.getDOB() %>">
                </div>
                <div class="form-group buttons">
                    <button type="submit">LƯU LẠI</button>
                </div>
            </form>
            <form action="changePassword" method="post" onsubmit="return validatePasswords()">
                <div id="password-error" style="color: red;"></div>
                <div class="form-group">
                    <label for="current-password">Mật Khẩu Hiện Tại *</label>
                    <input type="password" class="form-control" name="currentPassword" id="current-password" required>
                </div>
                <div class="form-group">
                    <label for="new-password">Mật Khẩu Mới *</label>
                    <input type="password" class="form-control" name="newPassword" id="new-password" required>
                </div>
                <div class="form-group">
                    <label for="confirm-password">Xác Nhận Mật Khẩu Mới *</label>
                    <input type="password" class="form-control" name="confirmPassword" id="confirm-password" required>
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

                ComboDAO cdao = new ComboDAO(DBContext.getConn());
                List<Ticket> list = ticketdao.getTicketByBooking(CustomerID);
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
                            <input type="text" spellcheck="false" hidden="" id="<%= ticketID %>"
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
                ArrayList<Combo> combos = cdao.getComboByTicketID(list.get(list.size()-1).getTicketID());
                if(!combos.isEmpty() ){
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
                            <span id="" class="june-29"><%= ticket.getStartDate() %></span>
                            <span>2024</span>
                        </p>
                        <div class="show-name">
                            <h1><%= ticket.getMovieName() %>
                            </h1>
                            <h4 class="movie-language">${sessionScope.language}</h4>
                        </div>
                        <div class="time">
<%--                            <p><%= ticket.getStartTime() %> PM <span>ĐẾN</span> <%=endTimeStr%> PM</p>--%>
                            <%
                                for(Combo combo:combos){

                            %>
                            <p>
                                <%=combo.getName()%>: <%=combo.getAmount()%>:<%=combo.getPrice()%>
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
</script>
<script>
    function validateProfileForm() {
        // Lấy giá trị từ các trường nhập liệu
        var name = document.getElementById('full-name').value;
        var phone = document.getElementById('phone').value;
        var address = document.getElementById('address').value;
        var dob = document.getElementById('birthday').value;

        // Validate full name
        var namePattern = /^[\p{L} \-]+$/u;
        if (!namePattern.test(name)) {
            alert("Tên không được chứa số hoặc ký tự đặc biệt.");
            return false;
        } else if (name.trim() === "") {
            alert("Họ và Tên không được để trống.");
            return false;
        }

        // Validate email
        var email = document.getElementById('email').value;
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(email)) {
            alert("Địa chỉ email không hợp lệ.");
            return false;
        }

        // Validate phone
        var phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
            alert("Số điện thoại không hợp lệ.");
            return false;
        }

        // Validate gender
        var genderSelected = document.querySelector('input[name="gender"]:checked');
        if (!genderSelected) {
            alert("Hãy chọn giới tính.");
            return false;
        }

        // Validate date of birth
        if (dob === "") {
            alert("Ngày sinh không được để trống.");
            return false;
        }

        return true;
    }

    document.addEventListener('DOMContentLoaded', function () {
        const form = document.querySelector('form');
        form.onsubmit = function () {
            return validateProfileForm();
        }
    });
</script>
<script>
    function validatePasswords() {
        var currentPassword = document.getElementById('current-password').value;
        var newPassword = document.getElementById('new-password').value;
        var confirmPassword = document.getElementById('confirm-password').value;
        var errorDiv = document.getElementById('password-error');

        // Clear any previous error messages
        errorDiv.textContent = '';

        // Validate current password is not empty
        if (currentPassword === '' || <%= cus.getPass()%> != currentPassword) {
            errorDiv.textContent = 'Mật khẩu hiện tại không đúng.';
            return false;
        }

        // Validate new password meets criteria
        const passPattern = /^.{6,}$/; // At least 6 characters
        if (!passPattern.test(newPassword)) {
            errorDiv.textContent = 'Hãy điền mật khẩu hợp lệ (ít nhất 6 số).';
            return false;
        }

        // Validate passwords match
        if (newPassword !== confirmPassword) {
            errorDiv.textContent = 'Mật khẩu và xác nhận mật khẩu không khớp.';
            return false;
        }

        return true;
    }

    document.addEventListener('DOMContentLoaded', function () {
        const form = document.querySelector('form');
        form.onsubmit = function () {
            return validatePasswords();
        }
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
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
