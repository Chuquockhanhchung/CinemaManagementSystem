<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2024/06/25
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tài Khoản MCN</title>
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

    <!-- Uicons - Flaticon -->
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-straight/css/uicons-bold-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-solid-straight/css/uicons-solid-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .sidebar {
            width: 200px;
            background-color: #e9ecef;
            padding: 20px;
        }
        .sidebar a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #000;
        }
        .sidebar a.active {
            background-color: #dc3545;
            color: white;
        }
        .sidebar a:hover {
            background-color: #ddd;
        }
        .profile {
            display: flex;
            align-items: center;
        }
        .profile img {
            border-radius: 50%;
            margin-right: 10px;
        }
        .barcode {
            text-align: center;
        }
        .tab-content {
            margin-top: 20px;
        }
        .ticket {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
        }
        .ticket img {
            width: 100px;
            height: 150px;
        }
        .ticket-info {
            flex: 1;
            margin-left: 15px;
        }
        .ticket-qr {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
<%@include file="header.jsp"%>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 sidebar">
            <h2>TÀI KHOẢN MCN</h2>
            <a href="#thong-tin-chung" class="active" data-toggle="tab">Thông Tin Cá Nhân</a>
            <a href="#thong-tin-tai-khoan" data-toggle="tab">Thông Tin Tài Khoản</a>
            <a href="#lich-su-giao-dich" data-toggle="tab">Lịch Sử Giao Dịch</a>
        </div>
        <div class="col-md-9">
            <div class="tab-content">
                <!-- Thông Tin Cá Nhân -->
                <div class="tab-pane fade show active" id="thong-tin-chung">
                    <h2>THÔNG TIN CHUNG</h2>
                    <form action="updateprofile" method="post" enctype="multipart/form-data"  onsubmit="return validateForm2()">
                        <div class="form-group">
                            <label for="profile-pic">Ảnh</label>
                            <input type="file" class="form-control-file" id="profile-pic" name="profile-pic" onchange="previewImage(event)">
                            <img id="profile-pic-preview" src="${sessionScope.user.picture}" alt="Profile Picture" class="mt-2" style="width: 100px; height: 100px;">
                        </div>
                        <div class="form-group">
                            <label for="full-name">Họ và Tên</label>
                            <input type="text" class="form-control" id="full-name" name="name" value="${sessionScope.user.name}">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user.email}">
                        </div>
                        <div class="form-group">
                            <label for="phone">Điện thoại</label>
                            <input type="text" class="form-control" id="phone" name="phone" value="${sessionScope.user.phone}">
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label for="dob">Ngày Sinh</label>--%>
<%--                            <input type="date" class="form-control" id="dob" name="dob" >--%>
<%--                        </div>--%>
                        <button type="submit" class="btn btn-primary">Thay Đổi Thông Tin</button>
                    </form>
<%--                    <div class="barcode mt-3">--%>
<%--                        <img src="https://barcode.tec-it.com/barcode.ashx?data=9992467919866941" alt="Thẻ thành viên">--%>
<%--                        <p>Thẻ thành viên</p>--%>
<%--                    </div>--%>
                </div>
                <!-- Thông Tin Tài Khoản -->
                <div class="tab-pane fade" id="thong-tin-tai-khoan">
                    <h2>THÔNG TIN TÀI KHOẢN</h2>
                    <form action="resetPassword" method="post" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="username">Tên Tài Khoản</label>
                            <input type="text" class="form-control" name="email" id="username" value="${sessionScope.email}" readonly>
                        </div>
                        <div class="form-group">
                            <label for="current-password">Mật Khẩu Hiện Tại</label>
                            <input type="password" class="form-control" value="${sessionScope.email}" id="current-password">
                        </div>
                        <div class="form-group">
                            <label for="new-password">Mật Khẩu Mới</label>
                            <input type="password" class="form-control" name="newPassword" id="new-password">
                        </div>
                        <div class="form-group">
                            <label for="confirm-password">Xác Nhận Mật Khẩu Mới</label>
                            <input type="password" class="form-control" id="confirm-password" name="confirm-password">
                        </div>
                        <button type="submit" class="btn btn-primary">Thay Đổi Mật Khẩu</button>
                    </form>
                </div>
                <!-- Lịch Sử Giao Dịch -->
                <div class="tab-pane fade" id="lich-su-giao-dich">
                    <h2>LỊCH SỬ GIAO DỊCH</h2>
                    <!-- Ticket example -->
                    <div class="ticket">
                        <img src="https://via.placeholder.com/100x150" alt="Movie Poster">
                        <div class="ticket-info">
                            <h4>Njan Prakashan</h4>
                            <p>Malayalam, 2D</p>
                            <p>Mon, 31 Dec | 09.30PM</p>
                            <p>Carnival: Artech Central Mall, Trivandrum Audi-5</p>
                            <p><strong>Total Amount: ₹373.00</strong></p>
                        </div>
                        <div class="ticket-qr">
                            <p>2 TICKETS</p>
                            <p>EXECUTIV - K1, K2</p>
                            <img src="https://via.placeholder.com/100" alt="QR Code">
                            <p>Booking ID SSST0000310644</p>
                        </div>
                    </div>
                    <!-- Repeat ticket divs for more tickets -->
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function previewImage(event) {
        var reader = new FileReader();
        reader.onload = function(){
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
</body>
</html>

