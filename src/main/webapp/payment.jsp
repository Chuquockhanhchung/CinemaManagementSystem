<%@ page import="dal.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="model.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="description" content="Movie Pro"/>
    <meta name="keywords" content="Movie Pro"/>
    <meta name="MobileOptimized" content="320"/>
    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico"/>
    <link rel="stylesheet" href="css/QR_Code/Styles/style.css">
    <link rel="stylesheet" href="css/QR_Code/Styles/custom.bundles.css">

    <style>
        <%@include file="css/payment.css" %>
    </style>
</head>

<body class="booking_type_back">
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="images/header/horoscope.gif" id="preloader_image" alt="loader">
    </div>
</div>

<%-- Header Start --%>
<%@include file="header.jsp" %>
<%-- Header End --%>

<%
    Customer us = (Customer) session.getAttribute("user");
    Ticket ticket = (Ticket) session.getAttribute("ticket");

    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(new Locale("vi", "VN"));

    // Tạo một định dạng tùy chỉnh để loại bỏ dấu chấm giữa các số
    DecimalFormat customFormat = new DecimalFormat("#########");

    // Hàm này sẽ áp dụng định dạng tùy chỉnh cho giá trị và loại bỏ dấu chấm giữa các số
    String customCurrency = customFormat.format(ticket.getTicketPrice());
%>

<!-- st top header Start -->
<div class=" st_bt_top_header_wrapper float_left">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
                <div class="st_bt_top_back_btn float_left"><a href="seat?showtimeId=${sessionScope.time}"><i
                        class="fas fa-long-arrow-alt-left"></i> &nbsp;Trở lại</a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="st_bt_top_center_heading float_left">
                    <h3>${sessionScope.movie.getName()} - ${sessionScope.language} - (${sessionScope.movie.getDuration()} phút)</h3>
                    <h4>${sessionScope.date}</h4>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- st dtts section Start -->
<form action="payment" method="post">
    <input type="text" value="${sessionScope.user.idCustomer}" name="idCustomer" hidden="">
    <input type="text" value="${sessionScope.time}" name="showtimeID" hidden="">

    <div class="st_dtts_wrapper float_left">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="st_dtts_left_main_wrapper float_left">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="st_dtts_ineer_box float_left">
                                    <div class="st_cherity_img">
                                        <img src="${sessionScope.movie.getImage()}" alt="img">
                                    </div>

                                    <ul>
                                        <li><span name=""
                                                  class="dtts1">Ngày:</span> <%= ticket != null ? ticket.getBookingDate() : "N/A" %>
                                        </li>
                                        <li><span
                                                class="dtts1">Giờ:</span> <%= ticket != null ? ticket.getStartTime() : "N/A" %>
                                        </li>
                                        <li>
                                            <span class="dtts1">Ghế Ngồi:</span>
                                            <h5> <%= ticket.getSeatID() %></h5>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>


                    <section class="payment-section">
                        <form>
                            <h2 class="payment-method-text">Phương thức thanh toán</h2>

                            <div class="row-payment g-4 mb-7 payment-method">
                                <div class="col-12" style="margin: 0 auto; margin-top: 20px">
                                    <div class="row-payment justify-content-center gx-lg-11">
                                        <div class="col-12 col-md-auto ">
                                            <div class="form-check" style="margin-right: 20px;">
                                                <input class="form-check-input" id="coupon" type="radio"
                                                       name="paymentMethod" checked="checked"/>
                                                <label class="form-check-label fs-8 text-body" for="coupon">Thẻ ngân hàng </label>
                                                <span class="badge badge-phoenix badge-phoenix-warning ms-2 ms-lg-4 ms-xl-2">Popular</span>
                                            </div>
                                        </div>

                                        <div class="col-12 col-md-auto">
                                            <div class="form-check">
                                                <input class="form-check-input" id="paypal" type="radio"
                                                       name="paymentMethod" disabled/>
                                                <label class="form-check-label fs-8 text-body"
                                                       for="paypal">Paypal </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="main main-layout-lg layout-bills">


                                    <div class="main-wrap">
                                        <div class="main-inner main-inner-page">
                                            <div class="box box-main">
                                                <!-- _custom.headerMobile -->

                                                <div class="box__header header-box header-box-simple">
                                                    <div class="box__header-inner">
                                                        <div class="section">
                                                            <div class="row-payment justify-content-center align-items-center">
                                                                <div class="col-md-auto header-box-top">
                                                                    <div class="row-payment align-items-center justify-content-center">
                                                                        <div class="col-md-auto col logo-group-wrap w-100">
                                                                            <div class="row-payment justify-content-between align-items-center">
                                                                                <div class="col-md-auto col"
                                                                                     style="margin-right: 410px;">
                                                                                    <div class="logo d-block">
                                                                                        <img src="css/QR_Code/images/brands/logo.svg"
                                                                                             alt="VNPAY">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-auto col">
                                                                                    <div class="logo d-block text-right">
                                                                                        <img src="css/QR_Code/images/merchant/vban.png"
                                                                                             alt="Merchant Logo">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-auto show-mobile box-ic-holder-col">
                                                                            <div class="box-ic-holder"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end _custom.headerMobile -->
                                                <div class="box__body ubg-white">
                                                    <div class="list-mb24">
                                                        <div class="layout-bills-inner box-section">
                                                            <div class="row-payment list-mb24 list-crop">
                                                                <div class="col-12 main-title-mobile show-mobile h3 text-center">
                                                                    Thanh toán qua ứng dụng Ngân hàng/ Ví điện
                                                                    tử
                                                                </div>

                                                                <div class="col-md-5 bills-col">
                                                                    <div class="bills">
                                                                        <div class="bills-header h2 show-desktop">
                                                                            Thông tin đơn hàng
                                                                        </div>
                                                                        <div class="bills-header-mobile show-mobile list-mb12 list-last-mb"
                                                                             data-bs-toggle="collapse"
                                                                             data-bs-target="#accordionBill"
                                                                             aria-expanded="true"
                                                                             aria-controls="accordionBill">
                                                                            <div class="title weight5">
                                                                                Thanh toán đơn hàng 182098
                                                                            </div>
                                                                            <div class="row-payment color-primary align-items-center">
                                                                                <div class="col h2">
                                                                                        <span id="totalAmountMb">
                                                                                           <%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "")%>
                                                                                        </span><sup>VND</sup>
                                                                                </div>
                                                                                <div class="col-auto">
                                                                                    <!-- button.button -->
                                                                                    <div
                                                                                            class="ubg-transparent ubox-size-button-xs ubg-hover ubg-active ubtn">
                                                                                        <div class="ubtn-inner">
                                                                                                <span class="ubtn-text color-primary">
                                                                                                    Xem chi tiết
                                                                                                </span>
                                                                                            <span class="ubtn-ic ubtn-ic-right">
                                                                                                    <img src="css/QR_Code/images/icons-color/primary/default/24x24-chevrondown.svg"
                                                                                                         alt=""
                                                                                                         class="ic-default">
                                                                                                </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <!-- end button.button -->
                                                                                </div>
                                                                            </div>
                                                                        </div>


                                                                        <div class="bills-body accordion-collapse collapse"
                                                                             id="accordionBill">
                                                                            <div>
                                                                                <div class="bills-list list-mb24 list-last-mb">
                                                                                    <div class="bills-list-item show-desktop">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Số tiền thanh toán
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right color-primary h2">
                                                                                                        <span id="totalAmountDt">
                                                                                                                <%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "")%>
                                                                                                        </span><sup>VND</sup>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="bills-list-item">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Giá trị đơn hàng
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right">
                                                                                                    <%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "")%>
                                                                                                    <sup>VND</sup>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="bills-list-item">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Phí giao dịch
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right ">
                                                                                                    0<sup>VND</sup>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="bills-list-item"
                                                                                         id="discountAmountItem"
                                                                                         style="display: none">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Số tiền khuyến mại
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right">
                                                                                                    <span id="discountAmount">0</span><sup>VND</sup>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="bills-list-item show-desktop">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Mã đơn hàng
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right h3">
                                                                                                    ${userobj.name}
                                                                                                    - ${userobj.id}
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="bills-list-item">
                                                                                        <div class="row-payment">
                                                                                            <div class="col-md-12 col-5 mb4">
                                                                                                <div class="sub-title color-sub-default">
                                                                                                    Nhà cung cấp
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-12 col">
                                                                                                <div class="title text-left-md-right h3">
                                                                                                    MC CTT VNPAY
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md right-bill-col">
                                                                    <div class="right-bill-col-inner">
                                                                        <div class="main-title h2 text-center show-desktop mb24">
                                                                            Quét mã qua ứng dụng Ngân hàng/ Ví điện tử
                                                                        </div>
                                                                        <div class="qr-section">
                                                                            <div class="qr-section-inner list-mb24 list-last-mb">
                                                                                <a href="#"
                                                                                   data-bs-toggle="modal"
                                                                                   data-bs-target="#modalHuongDan"
                                                                                   class="link weight5 link-style-default show-desktop">
                                                                                    <img src="css/QR_Code/images/icons-color/info/default/24x24-information-circle.svg"
                                                                                         alt=""
                                                                                         class="ic-default">
                                                                                    Hướng dẫn thanh toán
                                                                                </a>
                                                                                <div class="qr qr-size-default"
                                                                                     data-bs-toggle="modal"
                                                                                     data-bs-target="#modalQR">
                                                                                    <div class="qr-inner"
                                                                                         style="background-image: url('css/QR_Code/images/qr-frame.svg')">
                                                                                        <img class="qrcodeimg-modal"
                                                                                             src="https://img.vietqr.io/image/vietinbank-104877396758-qr_only.jpg?amount=<%= customCurrency %>&addInfo=${sessionScope.user.name}%20${sessionScope.user.idCustomer}"
                                                                                             alt="QR CODE">
                                                                                    </div>
                                                                                </div>
                                                                                <div
                                                                                        class="section d-flex justify-content-center align-items-center w-100 show-mobile">
                                                                                    <a href="Transaction/DownloadQR.html"
                                                                                       class="link weight5 link-style-default">
                                                                                        <img src="css/QR_Code/images/icons-color/info/default/24x24-download.svg"
                                                                                             alt=""
                                                                                             class="ic-default">
                                                                                        Tải mã
                                                                                    </a>
                                                                                    <a data-bs-toggle="modal"
                                                                                       data-bs-target="#modalHuongDanMobile"
                                                                                       class="link link-underline weight5"
                                                                                       style="margin-left:15px;">
                                                                                        <img src="css/QR_Code/images/icons-color/info/default/24x24-question-circle.svg"
                                                                                             alt=""
                                                                                             class="ic-md">
                                                                                        Hướng dẫn
                                                                                    </a>
                                                                                </div>


                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="box-section show-desktop">
                                                            <div class="list-bank-promo">
                                                                <div class="list-mb24 list-last-mb">
                                                                    <div class="list-bank-promo-section list-mb16">
                                                                        <div class="row-payment row-16 align-items-center">
                                                                            <div class="col">
                                                                                <div class="weight5">
                                                                                    Danh sách Ngân hàng/ Ví điện
                                                                                    tử khác hỗ trợ thanh toán
                                                                                    <span class="vnpay-logo b">
                                                                                            <span class="vnpay-red">VN</span><span
                                                                                            class="vnpay-blue">PAY</span>
                                                                                            <sup class="vnpay-red">QR</sup>
                                                                                        </span>


                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="list-bank list-bank-grid-8">
                                                                            <div class="list-mb24 list-last-mb">
                                                                                <div class="list-bank-main list-bank-main-unclickable">
                                                                                    <div class="row-payment row-8 list-mb8 list-crop">

                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/vietinbank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/vietcombank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/bidv.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/agribank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/techcombank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/mbbank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/vpbank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/tpbank.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/acb.svg)">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-item col-4 col-md-auto">
                                                                                            <div class="list-bank-item">
                                                                                                <div class="list-bank-item-inner"
                                                                                                     style="background-image: url(css/QR_Code/images/img/logos/bank/big/viettelmoney.svg)">
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
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- _custom.footerBox -->
                                                <div class="box__footer footer-box">
                                                    <div class="box__footer-inner">
                                                        <div class="section">
                                                            <div class="row-payment row-32 list-mb24 list-crop align-items-center justify-content-between">

                                                                <div class="col-sm show-desktop">
                                                                    <div class="row-payment row-32 align-items-center">
                                                                        <div class="col-auto">
                                                                            <!-- button.button -->
                                                                            <a href="tel:0968338829"
                                                                               class="ubg-ghost ubox-size-button-default ubg-hover ubg-active ubtn">
                                                                                <div class="ubtn-inner">
                                                                                    <div
                                                                                            class="ubg-line-porcelain-dark ubox-size-ic-md ubox-square ubox ubox-ic">
                                                                                        <img src="css/QR_Code/images/icons-color/default2/default/24x24-phone.svg"
                                                                                             alt=""
                                                                                             class="ic-default">
                                                                                    </div>
                                                                                    <span
                                                                                            class="ubtn-text h3 color-info u pl12">0968.33.88.29</span>
                                                                                </div>
                                                                            </a>
                                                                            <!-- end button.button -->
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <!-- button.button -->
                                                                            <a href="mailto:datlacve2@gmail.com"
                                                                               class="ubg-ghost ubox-size-button-default ubg-hover ubg-active ubtn">
                                                                                <div class="ubtn-inner">
                                                                                    <div
                                                                                            class="ubg-line-porcelain-dark ubox-size-ic-md ubox-square ubox ubox-ic">
                                                                                        <img src="css/QR_Code/images/icons-color/default2/default/24x24-email.svg"
                                                                                             alt=""
                                                                                             class="ic-default">
                                                                                    </div>
                                                                                    <span
                                                                                            class="ubtn-text h3 color-info u pl12">datlacve2@gmail.com</span>
                                                                                </div>
                                                                            </a>
                                                                            <!-- end button.button -->
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-auto">
                                                                    <div class="row-payment row-8 justify-content-center">
                                                                        <div class="col-auto">
                                                                            <a href="https://profile.globalsign.com/SiteSeal/siteSeal/profile/profile.do?p1=e797f6ab&amp;p2=a06dada7520ada559537452c666a510c95706240fc2dfde64d4c864bf735462b7a370908847a6060a26daeac4f549d0bc8&amp;p3=7b58e9c169b0b0ff3eb932a37330cc91d466b871"
                                                                               target="_blank"
                                                                               class="footer-logos">
                                                                                <img src="css/QR_Code/images/img/logos/global-sign.svg"
                                                                                     height="40">
                                                                            </a>
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <a href="https://seal.controlcase.com/index.php?page=showCert&amp;cId=3865876849"
                                                                               target="_blank"
                                                                               class="footer-logos">
                                                                                <img src="css/QR_Code/images/img/logos/pcidss.svg"
                                                                                     height="40">
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end _custom.footerBox -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6" style="display: none">
                                        <label class="form-label fs-8 text-body-highlight ps-0 text-transform-none"
                                               for="selectCard">Select card</label>
                                        <select class="form-select text-body-emphasis" id="selectCard">
                                            <option selected="selected">select a card</option>
                                            <option value="visa">Visa</option>
                                            <option value="discover">Discover</option>
                                            <option value="mastercard">Mastercard</option>
                                            <option value="american-express">American Express</option>
                                        </select>
                                    </div>
                                    <div style="display: none" class="col-md-6"><label
                                            class="form-label fs-8 text-body-highlight ps-0 text-transform-none"
                                            for="inputCardNumber">Card number</label><input class="form-control"
                                                                                            id="inputCardNumber"
                                                                                            type="number"
                                                                                            placeholder="Enter card number"
                                                                                            aria-label="Card number"/>
                                    </div>
                                    <div style="display: none" class="col-12"><label
                                            class="form-label fs-8 text-body-highlight ps-0 text-transform-none"
                                            for="inputName">Full name</label><input class="form-control"
                                                                                    id="inputName" type="text"
                                                                                    placeholder="Ansolo Lazinatov"
                                                                                    aria-label="Full name"/></div>
                                    <div style="display: none" class="col-md-6"><label
                                            class="form-label fs-8 text-body-highlight ps-0 text-transform-none">Expires
                                        on</label>
                                        <div class="d-flex"><select class="form-select text-body-emphasis me-3">
                                            <option selected="selected">Month</option>
                                            <option>January</option>
                                            <option>February</option>
                                            <option>March</option>
                                        </select><select class="form-select text-body-emphasis">
                                            <option selected="selected">Year</option>
                                            <option value="1990">1990</option>

                                        </select></div>
                                    </div>
                                    <div style="display: none" class="col-md-6"><label
                                            class="form-label fs-8 text-body-highlight ps-0 text-transform-none"
                                            for="inputCardCVC">CVC</label><input class="form-control"
                                                                                 id="inputCardCVC" type="number"
                                                                                 placeholder="Enter a valid CVC"
                                                                                 aria-label="CVC"/></div>
                                    <div style="display: none" class="col-12">
                                        <div class="form-check"><input class="form-check-input" id="gridCheck"
                                                                       type="checkbox"/><label
                                                class="form-check-label text-body-emphasis fs-8" for="gridCheck">Save
                                            Card Details</label></div>
                                    </div>


                                </div>
                                <div class="row g-2 mb-5 mb-lg-0" style="display: none">
                                    <div class="col-md-8 col-lg-9 d-grid">
                                        <button class="btn btn-primary" type="submit">Pay $695.20</button>
                                    </div>
                                    <div class="col-md-4 col-lg-3 d-grid">
                                        <button class="btn btn-phoenix-secondary text-nowrap" type="submit">Save
                                            Order and Exit
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </section>

                </div>
                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="st_dtts_bs_wrapper float_left">
                                <div class="st_dtts_bs_heading float_left">
                                    <p>Tóm tắt đặt vé</p>
                                </div>
                                <div class="st_dtts_sb_ul float_left">
                                    <ul>
                                        <li> <%= ticket.getSeatID() %>
                                            <span><%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "") %></span>
                                        </li>
                                        <%--                                    <li>Internet handling fees <span>Rs.70.80</span></li>--%>
                                    </ul>
                                    <%--                                <p>Booking Fees <span>Rs.60.00</span></p>--%>
                                    <%--                                <p>Integrated GST (IGST) @ 18% <span>Rs.60.00</span></p>--%>
                                </div>
                                <div class="st_dtts_sb_h2 float_left">
                                    <h3>Tổng
                                        <span><%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "")%></span>
                                    </h3>
                                    <%--                                <h4>Current State is <span>Kerala</span></h4>--%>
                                    <h5>Số tiền cần thanh toán
                                        <span><%= currencyFormat.format(ticket.getTicketPrice()).replace("₫", "")%></span>
                                    </h5>
                                    <input type="text" value="<%= customCurrency %>" name="ticketPrice" hidden="">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="st_cherity_btn float_left">
                                    <ul>
                                        <li><a  class="payment-process" style="cursor: pointer;">Tiến hành thanh toán</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="flash-sale-time">
                                <div class="sale-time">
                                    <h2>Thời gian thanh toán</h2>
                                    <div class="countdown">


                                        <div class="container-segment">
                                            <div class="segment">
                                                <div class="flip-card" data-hours-tens>
                                                    <div class="top">2</div>
                                                    <div class="bottom">2</div>
                                                </div>
                                                <div class="flip-card" data-hours-ones>
                                                    <div class="top">4</div>
                                                    <div class="bottom">4</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="container-segment">
                                            <div class="segment">
                                                <div class="flip-card" data-minutes-tens>
                                                    <div class="top">0</div>
                                                    <div class="bottom">0</div>
                                                </div>
                                                <div class="flip-card" data-minutes-ones>
                                                    <div class="top">0</div>
                                                    <div class="bottom">0</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="container-segment">
                                            <div class="segment">
                                                <div class="flip-card" data-seconds-tens>
                                                    <div class="top">0</div>
                                                    <div class="bottom">0</div>
                                                </div>
                                                <div class="flip-card" data-seconds-ones>
                                                    <div class="top">0</div>
                                                    <div class="bottom">0</div>
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
        </div>
    </div>
    <!--main js file start-->
</form>

<script>
    const payment_process = document.querySelector('.payment-process');
    const paid_content = "123";
    const paid_price = "<%= customCurrency %>";

    console.log(paid_content);
    console.log(paid_price);

    payment_process.addEventListener('click', () => {
        setInterval(() => {
            checkPaid(paid_content, paid_price);
        }, 3000);
    });

    let paidSuccess = false;
    let alertShown = false;

    async function checkPaid(content, price) {
        if(paidSuccess) {
            return;
        } else {
            try {
                const response = await fetch(
                    "https://script.google.com/macros/s/AKfycbxVVi9V7W28MhMyCgYECnPssLc_qQgrkkyjY6LrsWO5o8d6ZUoeq3UgB5CqxXAaSpce/exec"
                );
                const data = await response.json();
                const lastPaid = data.data[data.data.length - 1];

                lastContent = lastPaid["Mô tả"];
                lastPrice = lastPaid["Giá trị"];

                if (lastContent.includes(content) && lastPrice >= price) {
                    Swal.fire({
                        title: "Chúc Mừng!",
                        text: "Thanh toán thành công!",
                        icon: "success",
                        allowOutsideClick: false, // Ngăn người dùng đóng alert bằng cách bấm bên ngoài
                        showCancelButton: false, // Ẩn nút Cancel
                        confirmButtonText: "OK"
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Chuyển hướng trang sau khi nhấn OK
                            document.querySelector('form').submit(); // Thay đổi đường dẫn tới trang mới
                        }
                    });
                } else {
                    if (!alertShown) {
                        Swal.fire({
                            icon: "error",
                            title: "Oops...",
                            text: "Thanh toán không thành công!",
                            footer: '<a href="#">Liên hệ với chúng tôi!</a>'
                        });
                        alertShown = true;
                        // Optionally redirect to an error page
                        // window.location.href = "error.jsp";
                    }
                }
            } catch (error) {
                console.error(error);
            }
        }
    }
</script>

<script src="countdown.js"></script>

<script src="js/jquery_min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dlmenu.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.nice-select.min.js"></script>

<%--SweetAlert2--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%--SweetAlert2--%>

</body>

</html>
