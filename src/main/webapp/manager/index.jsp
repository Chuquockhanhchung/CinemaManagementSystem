<%-- 
    Document   : index
    Created on : May 26, 2024, 9:18:04 PM
    Author     : datla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <!-- Title -->
    <title>chu chung</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon icon -->

    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/public/assets/images/favicon.png">
    <link href="${pageContext.request.contextPath}/public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

    <style>
        <%@ include file="managerStyle.css"%>
    </style>
</head>

<body>

<!--*******************
    Preloader start
********************-->
<div id="preloader">
    <div class="loader">
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--dot"></div>
        <div class="loader--text"></div>
    </div>
</div>
<!--*******************
    Preloader end
********************-->

<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">
    <!--**********************************
Nav header start
***********************************-->
    <%@include file="header.jsp" %>
    <!--**********************************
    Header end
***********************************-->
    <!--**********************************
Sidebar start
***********************************-->
    <%@include file="sidebar.jsp" %>
    <!--**********************************
Sidebar end
***********************************-->
    <!--**********************************
    Content body start
***********************************-->
    <div class=" content-body default-height">
        <!-- row -->
        <div class="container-fluid">
            <div class="form-head mb-4 d-flex flex-wrap align-items-center">
                <div class="me-auto">
                    <h2 class="font-w600 mb-0">Dashboard</h2>
                    <p>Lorem ipsum dolor sit amet </p>
                </div>
                <div class="input-group search-area2 d-xl-inline-flex mb-2 me-lg-4 me-md-2">
                    <button class="input-group-text"><i class="flaticon-381-search-2 text-primary"></i></button>
                    <input type="text" class="form-control" placeholder="Search here...">
                </div>
                <div class="dropdown custom-dropdown mb-2 period-btn">
                    <div class="btn btn-sm  d-flex align-items-center" data-bs-toggle="dropdown"
                         aria-expanded="false" role="button">
                        <svg class="primary-icon" width="28" height="28" viewBox="0 0 28 28" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path
                                    d="M22.167 5.83362H21.0003V3.50028C21.0003 3.19087 20.8774 2.89412 20.6586 2.67533C20.4398 2.45653 20.143 2.33362 19.8336 2.33362C19.5242 2.33362 19.2275 2.45653 19.0087 2.67533C18.7899 2.89412 18.667 3.19087 18.667 3.50028V5.83362H9.33362V3.50028C9.33362 3.19087 9.2107 2.89412 8.99191 2.67533C8.77312 2.45653 8.47637 2.33362 8.16695 2.33362C7.85753 2.33362 7.56079 2.45653 7.34199 2.67533C7.1232 2.89412 7.00028 3.19087 7.00028 3.50028V5.83362H5.83362C4.90536 5.83362 4.01512 6.20237 3.35874 6.85874C2.70237 7.51512 2.33362 8.40536 2.33362 9.33362V10.5003H25.667V9.33362C25.667 8.40536 25.2982 7.51512 24.6418 6.85874C23.9854 6.20237 23.0952 5.83362 22.167 5.83362Z"
                                    fill="#0E8A74"/>
                            <path
                                    d="M2.33362 22.1669C2.33362 23.0952 2.70237 23.9854 3.35874 24.6418C4.01512 25.2982 4.90536 25.6669 5.83362 25.6669H22.167C23.0952 25.6669 23.9854 25.2982 24.6418 24.6418C25.2982 23.9854 25.667 23.0952 25.667 22.1669V12.8336H2.33362V22.1669Z"
                                    fill="#0E8A74"/>
                        </svg>
                        <div class="text-start ms-3 flex-1">
                            <span class="d-block text-black">Change Periode</span>
                            <small class="d-block text-muted">August 28th - October 28th, 2021</small>
                        </div>
                        <i class="fa fa-caret-down text-light scale5 ms-3"></i>
                    </div>
                    <div class="dropdown-menu dropdown-menu-end">
                        <a class="dropdown-item" href="javascript:void(0);">October 29th - November 29th, 2021</a>
                        <a class="dropdown-item" href="javascript:void(0);">July 27th - Auguts 27th, 2021</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-xl-3 col-xxl-3 col-sm-6 ">
                            <div class="card chart-bx">
                                <div class="card-header border-0 pb-0">
                                    <div class="d-flex align-items-center">
                                        <h2 class="chart-num font-w600 mb-0">215</h2>
                                        <svg class="ms-2 primary-icon" width="19" height="12" viewBox="0 0 19 12"
                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                    fill="#0E8A74"/>
                                        </svg>
                                    </div>
                                    <div>
                                        <h5 class="text-black font-w500 mb-0">Tickets</h5>
                                    </div>
                                </div>
                                <div class="card-body pt-0 chart-body-wrapper">
                                    <div id="widgetChart1" class="chart-primary"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6 ">
                            <div class="card chart-bx">
                                <div class="card-header border-0 pb-0">
                                    <div class="d-flex align-items-center">
                                        <h2 class="chart-num font-w600 mb-0">$536k</h2>
                                        <svg class="ms-2" width="19" height="12" viewBox="0 0 19 12" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    d="M2.00401 -4.76837e-06C0.222201 -4.76837e-06 -0.670134 2.15428 0.589795 3.41421L7.78218 10.6066C8.56323 11.3876 9.82956 11.3876 10.6106 10.6066L17.803 3.41421C19.0629 2.15428 18.1706 -4.76837e-06 16.3888 -4.76837e-06H2.00401Z"
                                                    fill="#FF3131"/>
                                        </svg>
                                    </div>
                                    <div>
                                        <h5 class="text-black font-w500 mb-0">Revenue</h5>
                                    </div>
                                </div>
                                <div class="card-body pt-0 chart-body-wrapper">
                                    <div id="widgetChart2">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6 ">
                            <div class="card chart-bx">
                                <div class="card-header border-0 pb-0">
                                    <div class="d-flex align-items-center">
                                        <h2 class="chart-num font-w600 mb-0">652</h2>
                                        <svg class="ms-2 primary-icon" width="19" height="12" viewBox="0 0 19 12"
                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                    d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                    fill="#0E8A74"/>
                                        </svg>
                                    </div>
                                    <div>
                                        <h5 class="text-black font-w500 mb-0">Sales</h5>
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <canvas id="widgetChart3" height="60"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6 ">
                            <div class="card chart-bx">
                                <div
                                        class="card-body pt-sm-4 pt-3 d-flex align-items-center justify-content-between">
                                    <div class="me-3">
                                        <div class="d-flex align-items-center">
                                            <h2 class="chart-num font-w600 mb-0">45242</h2>
                                        </div>
                                        <div>
                                            <h5 class="text-black font-w500 mb-3 mt-2">Event Held</h5>
                                        </div>
                                        <div>
                                            <p class="text-primary fs-14 mb-0">
                                                <svg class="me-2 primary-icon" width="19" height="12"
                                                     viewBox="0 0 19 12" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                            d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                            fill="#0E8A74"/>
                                                </svg>
                                                2.4%
                                                <span class="op-6 text-muted">than Last Week</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="d-inline-block position-relative donut-chart-sale">
                                                    <span class="donut1"
                                                          data-peity='{ "fill": ["var(--primary)", "rgba(240, 240, 240)"],   "innerRadius": 35, "radius": 10}'>5/8</span>
                                            <small class="text-black">66%</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card">
                                <div class="card-header border-0 pb-0 flex-wrap">
                                    <h4 class="fs-20 card-title font-w500">Best Selling</h4>
                                    <div class="card-action coin-tabs">
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-bs-toggle="tab" href="#Monthly">
                                                    Monthly
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link " data-bs-toggle="tab" href="#Weekly">
                                                    Weekly
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link " data-bs-toggle="tab" href="#Daily">
                                                    Daily
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body pt-2">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active show" id="Monthly">
                                            <div
                                                    class="d-sm-flex d-block align-items-center justify-content-center">
                                                <div class="col-xl-6 col-xxl-5 text-center">
                                                    <div id="donutChart2" class="donutChart2 d-inline-block"></div>
                                                </div>
                                                <div class="col-xl-6 col-xxl-7">
                                                    <p class="fs-14 mt-3">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                        et dolore magna aliqua.</p>
                                                    <div class="d-flex  mt-4">
                                                        <div class="me-4">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#FB3E7A"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">21,512</h4>
                                                            <span class="fs-14">Ticket Left</span>
                                                        </div>
                                                        <div class="me-4">
                                                            <svg class="primary-icon" width="20" height="8"
                                                                 viewBox="0 0 20 8" fill="none"
                                                                 xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#0E8A74"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">45,612</h4>
                                                            <span class="fs-14">Ticket Sold</span>
                                                        </div>
                                                        <div class="">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#C8C8C8"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">275</h4>
                                                            <span class="fs-14">Event Held</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="Weekly">
                                            <div
                                                    class="d-sm-flex d-block align-items-center justify-content-center">
                                                <div class="col-xl-6 col-xxl-5 text-center">
                                                    <div id="donutChart3" class="donutChart2 d-inline-block"></div>
                                                </div>
                                                <div class="col-xl-6 col-xxl-7">
                                                    <p class="fs-14 mt-3">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                        et dolore magna aliqua.</p>
                                                    <div class="d-flex  mt-4">
                                                        <div class="me-4">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#FB3E7A"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">21,512</h4>
                                                            <span class="fs-14">Ticket Left</span>
                                                        </div>
                                                        <div class="me-4">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#0E8A74"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">45,612</h4>
                                                            <span class="fs-14">Ticket Sold</span>
                                                        </div>
                                                        <div class="">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#C8C8C8"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">275</h4>
                                                            <span class="fs-14">Event Held</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="Daily">
                                            <div
                                                    class="d-sm-flex d-block align-items-center justify-content-center">
                                                <div class="col-xl-6 col-xxl-5 text-center">
                                                    <div id="donutChart4" class="donutChart2 d-inline-block"></div>
                                                </div>
                                                <div class="col-xl-6 col-xxl-7">
                                                    <p class="fs-14 mt-3">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                        et dolore magna aliqua.</p>
                                                    <div class="d-flex  mt-4">
                                                        <div class="me-4">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#FB3E7A"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">21,512</h4>
                                                            <span class="fs-14">Ticket Left</span>
                                                        </div>
                                                        <div class="me-4">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#0E8A74"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">45,612</h4>
                                                            <span class="fs-14">Ticket Sold</span>
                                                        </div>
                                                        <div class="">
                                                            <svg width="20" height="8" viewBox="0 0 20 8"
                                                                 fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <rect width="20" height="8" rx="4" fill="#C8C8C8"/>
                                                            </svg>
                                                            <h4 class="fs-18 text-black mb-0 font-w600">275</h4>
                                                            <span class="fs-14">Event Held</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card bg-primary">
                                <div class="card-body">
                                    <div class="d-sm-flex d-block pb-sm-3 align-items-end mb-2">
                                        <div class="me-auto pe-3 mb-3 mb-sm-0">
                                                    <span
                                                            class="chart-num-3 font-w200 d-block mb-sm-3 mb-2 text-white">Ticket
                                                        Sold Today</span>
                                            <h2 class="chart-num-2 text-white mb-0">456,502<span
                                                    class="fs-18 me-2 ms-3">pcs</span></h2>
                                        </div>
                                        <div class="d-flex flex-wrap mb-3 mb-sm-0">
                                            <svg width="87" height="58" viewBox="0 0 87 58" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                        d="M18.4571 37.6458C11.9375 44.6715 4.81049 52.3964 2 55.7162H68.8125C77.6491 55.7162 84.8125 48.5528 84.8125 39.7162V2L61.531 31.9333C56.8486 37.9536 48.5677 39.832 41.746 36.4211L37.3481 34.2222C30.9901 31.0432 23.2924 32.4352 18.4571 37.6458Z"
                                                        fill="url(#paint0_linear)"/>
                                                <path
                                                        d="M2 55.7162C4.81049 52.3964 11.9375 44.6715 18.4571 37.6458C23.2924 32.4352 30.9901 31.0432 37.3481 34.2222L41.746 36.4211C48.5677 39.832 56.8486 37.9536 61.531 31.9333L84.8125 2"
                                                        stroke="white" stroke-width="4" stroke-linecap="round"/>
                                                <defs>
                                                    <linearGradient id="paint0_linear" x1="43.4062" y1="8.71453"
                                                                    x2="46.7635" y2="55.7162"
                                                                    gradientUnits="userSpaceOnUse">
                                                        <stop stop-color="white" offset="0"/>
                                                        <stop offset="1" stop-color="white" stop-opacity="0"/>
                                                    </linearGradient>
                                                </defs>
                                            </svg>
                                            <div class="ms-3">
                                                <p class="fs-20 mb-0 font-w500 text-white">+4%</p>
                                                <span class="fs-12 text-white">than last day</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress style-1" style="height:15px;">
                                        <div class="progress-bar bg-white progress-animated"
                                             style="width: 55%; height:15px;" role="progressbar">
                                            <span class="sr-only">55% Complete</span>
                                            <span class="bg-white arrow"></span>
                                            <span class="font-w600 counter-bx text-black"><strong
                                                    class="counter font-w400">985pcs Left</strong></span>
                                        </div>
                                    </div>
                                    <p class="fs-12 text-white pt-4">Lorem ipsum dolor sit amet, consectetur
                                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                        aliqua. Ut enim ad mini</p>
                                    <a href="javascript:void(0);" class="text-white">View Detail<i
                                            class="las la-long-arrow-alt-right scale5 ms-3"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-xxl-8">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card event-bx">
                                <div class="card-header border-0 mb-0">
                                    <h4 class="fs-20 card-title">Recent Movie List</h4>
                                    <div class="dropdown custom-dropdown mb-0 tbl-orders-style">
                                        <div class="btn sharp tp-btn" data-bs-toggle="dropdown">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                        d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                                <path
                                                        d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                                <path
                                                        d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                            </svg>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Details</a>
                                            <a class="dropdown-item text-danger"
                                               href="javascript:void(0);">Cancel</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body dz-scroll loadmore-content pt-0" id="EventListContent">
                                    <div class="media event-list pb-3 border-bottom mb-3">
                                        <div class="image">
                                            <img src="public/assets/images/card/Untitled-15.jpg"
                                                 alt="">
                                            <i class="las la-film image-icon"></i>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="fs-18 mb-sm-0 mb-2"><a href="javascript:void(0);"
                                                                              class="text-black"> Envato International
                                                Online Meetup 2020</a>
                                            </h4>
                                            <span class="fs-14 d-block mb-sm-2 mb-2 text-secondary">Medan,
                                                        Indonesia</span>
                                            <p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                                aliqua. Ut enim ad mini</p>
                                        </div>
                                        <div class="media-footer">
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-usd" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">$124,00</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-ticket" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">561 pcs Left</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">24 June 2020</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media event-list pb-3 border-bottom mb-3">
                                        <div class="image">
                                            <img src="public/assets/images/card/Untitled-16.jpg"
                                                 alt="">
                                            <i class="fa fa-music image-icon"></i>

                                        </div>
                                        <div class="media-body">
                                            <h4 class="fs-18 mb-sm-0 mb-2"><a href="javascript:void(0);"
                                                                              class="text-black">Google I/O Developer
                                                Conference</a></h4>
                                            <span class="fs-14 d-block mb-sm-2 mb-2 text-secondary">Medan,
                                                        Indonesia</span>
                                            <p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                                aliqua. Ut enim ad mini</p>
                                        </div>
                                        <div class="media-footer">
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-usd" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">$124,00</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3 disabled">
                                                            <i class="fa fa-ticket" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">561 pcs Left</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">24 June 2020</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media event-list pb-3 border-bottom mb-3">
                                        <div class="image">
                                            <img src="public/assets/images/card/Untitled-17.jpg"
                                                 alt="">
                                            <i class="fa fa-music image-icon"></i>

                                        </div>
                                        <div class="media-body">
                                            <h4 class="fs-18 mb-sm-0 mb-2"><a href="javascript:void(0);"
                                                                              class="text-black">Apple Worldwide
                                                Developers Conference
                                                (WWDC)</a></h4>
                                            <span class="fs-14 d-block mb-sm-2 mb-2 text-secondary">Medan,
                                                        Indonesia</span>
                                            <p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                                aliqua. Ut enim ad mini</p>
                                        </div>
                                        <div class="media-footer">
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-usd" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">$124,00</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3 disabled">
                                                            <i class="fa fa-ticket" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">561 pcs Left</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 disabled mb-3">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">24 June 2020</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media event-list pb-3 border-bottom mb-3">
                                        <div class="image">
                                            <img src="public/assets/images/card/Untitled-15.jpg"
                                                 alt="">
                                            <i class="fa fa-music image-icon"></i>

                                        </div>
                                        <div class="media-body">
                                            <h4 class="fs-18 mb-sm-0 mb-2"><a href="javascript:void(0);"
                                                                              class="text-black"> TED Global Summit
                                                2020</a></h4>
                                            <span class="fs-14 d-block mb-sm-2 mb-2 text-secondary">Medan,
                                                        Indonesia</span>
                                            <p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                                aliqua. Ut enim ad mini</p>
                                        </div>
                                        <div class="media-footer">
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-usd" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">$124,00</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3 disabled">
                                                            <i class="fa fa-ticket" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">561 pcs Left</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 disabled mb-3">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">24 June 2020</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media event-list pb-3 border-bottom mb-3">
                                        <div class="image">
                                            <img src="public/assets/images/card/Untitled-16.jpg"
                                                 alt="">
                                            <i class="fa fa-music image-icon"></i>

                                        </div>
                                        <div class="media-body">
                                            <h4 class="fs-18 mb-sm-0 mb-2"><a href="javascript:void(0);"
                                                                              class="text-black"> Adobe MAX Creative
                                                Conference</a></h4>
                                            <span class="fs-14 d-block mb-sm-2 mb-2 text-secondary">Medan,
                                                        Indonesia</span>
                                            <p class="fs-12">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                                aliqua. Ut enim ad mini</p>
                                        </div>
                                        <div class="media-footer">
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3">
                                                            <i class="fa fa-usd text-primary" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">$124,00</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 mb-3 disabled">
                                                            <i class="fa fa-ticket" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">561 pcs Left</div>
                                            </div>
                                            <div class="text-center">
                                                        <span class="ticket-icon-1 disabled mb-3">
                                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                                        </span>
                                                <div class="fs-12 text-primary">24 June 2020</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-center pt-0 border-0">
                                    <a href="javascript:void(0);"
                                       class="btn btn-secondary btn-lg  text-white dz-load-more" id="EventList"
                                       rel="public/assets/ajax/event-list.jsp">Load
                                        More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-xxl-12">
                            <div class="card latest-sales-bx">
                                <div class="card-header border-0 mb-0">
                                    <h4 class="fs-20 card-title">Latest Sales</h4>
                                    <div class="dropdown custom-dropdown mb-0 tbl-orders-style">
                                        <div class="btn sharp tp-btn" data-bs-toggle="dropdown">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                        d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                                <path
                                                        d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                                <path
                                                        d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                        stroke="#194039" stroke-width="2" stroke-linecap="round"
                                                        stroke-linejoin="round"/>
                                            </svg>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Details</a>
                                            <a class="dropdown-item text-danger"
                                               href="javascript:void(0);">Cancel</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pb-0 dz-scroll loadmore-content pt-0" id="LatestSalesContent">
                                    <div class="media pb-3 border-bottom mb-3 align-items-center">
                                        <div class="media-image me-2">
                                            <img src="public/assets/images/contacts/pic1.jpg"
                                                 alt="">
                                        </div>
                                        <div class="media-body">
                                            <h6 class="fs-16 mb-0">Olivia Johanson</h6>
                                            <div class="d-flex">
                                                        <span class="fs-14 me-auto text-secondary"><i
                                                                class="fa fa-ticket me-1"></i>High Performance Conert
                                                            2020..</span>
                                                <span class="fs-14 text-nowrap">2m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media pb-3 border-bottom mb-3 align-items-center">
                                        <div class="media-image me-2">
                                            <img src="public/assets/images/contacts/pic2.jpg"
                                                 alt="">
                                        </div>
                                        <div class="media-body">
                                            <h6 class="fs-16 mb-0">Griezerman</h6>
                                            <div class="d-flex">
                                                        <span class="fs-14 me-auto text-secondary"><i
                                                                class="fa fa-ticket me-1"></i>Fireworks Show New Year
                                                            2020</span>
                                                <span class="fs-14 text-nowrap">5m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media pb-3 border-bottom mb-3 align-items-center">
                                        <div class="media-image me-2">
                                            <img src="public/assets/images/contacts/pic3.jpg"
                                                 alt="">
                                        </div>
                                        <div class="media-body">
                                            <h6 class="fs-16 mb-0">Uli Trumb</h6>
                                            <div class="d-flex">
                                                        <span class="fs-14 me-auto text-secondary"><i
                                                                class="fa fa-ticket me-1"></i>High Performance Conert
                                                            2020..</span>
                                                <span class="fs-14 text-nowrap">8m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media pb-3 border-bottom mb-3 align-items-center">
                                        <div class="media-image me-2">
                                            <img src="public/assets/images/contacts/pic1.jpg"
                                                 alt="">
                                        </div>
                                        <div class="media-body">
                                            <h6 class="fs-16 mb-0">Oconner</h6>
                                            <div class="d-flex">
                                                        <span class="fs-14 me-auto text-secondary"><i
                                                                class="fa fa-ticket me-1"></i>High Performance Conert
                                                            2020..</span>
                                                <span class="fs-14 text-nowrap">9m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media pb-3 border-bottom mb-3 align-items-center">
                                        <div class="media-image me-2">
                                            <img src="public/assets/images/contacts/pic1.jpg"
                                                 alt="">
                                        </div>
                                        <div class="media-body">
                                            <h6 class="fs-16 mb-0">Oconner</h6>
                                            <div class="d-flex">
                                                        <span class="fs-14 me-auto text-secondary"><i
                                                                class="fa fa-ticket me-1"></i>High Performance Conert
                                                            2020..</span>
                                                <span class="fs-14 text-nowrap">9m ago</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer style-1 border-0 px-0">
                                    <a href="javascript:void();"
                                       class="dz-load-more fa fa-long-arrow-down text-secondary" id="LatestSales"
                                       rel="public/assets/ajax/latest-sales.jsp"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-xxl-12">
                            <div class="card">
                                <div class="card-header border-0 flex-wrap pb-0">
                                    <h4 class="fs-20 font-w500 card-title">Sales Revenue</h4>
                                    <div class="card-action coin-tabs">
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-bs-toggle="tab" href="#Monthly1">
                                                    Monthly
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link " data-bs-toggle="tab" href="#Weekly1">
                                                    Weekly
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link " data-bs-toggle="tab" href="#Daily1">
                                                    Daily
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body pb-2">
                                    <div class="tab-content">
                                        <div class="tab-pane fade active show" id="Monthly1">
                                            <div id="salesChart" class="chart-primary"></div>
                                        </div>
                                        <div class="tab-pane fade" id="Weekly1">
                                            <div id="salesChart1" class="chart-primary"></div>

                                        </div>
                                        <div class="tab-pane fade" id="Daily1">
                                            <div id="salesChart2" class="chart-primary"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-xxl-4">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body text-center event-calender pb-2 px-2 pt-2">
                                    <input type='text' class="form-control d-none" id='datetimepicker1'>
                                </div>
                                <div class="card-header py-0 border-0">
                                    <h4 class="text-black fs-20">Upcoming Movies</h4>
                                </div>
                                <div class="card-body pb-0 loadmore-content height450 dz-scroll"
                                     id="UpcomingEventContent">
                                    <div class="media mb-5 align-items-center event-list">
                                        <div class="p-3 text-center me-3 date-bx bgl-primary">
                                            <h2 class="mb-0 text-secondary fs-28 font-w600">3</h2>
                                            <h5 class="mb-1 text-black">Wed</h5>
                                        </div>
                                        <div class="media-body px-0">
                                            <h6 class="mt-0 mb-3 fs-14"><a class="text-black"
                                                                           href="https://ventic.dexignzone.com/codeigniter/demo/event">Live
                                                Concert Choir Charity Event 2020</a></h6>
                                            <ul class="fs-14 list-inline mb-2 d-flex justify-content-between">
                                                <li>Ticket Sold</li>
                                                <li>561/650</li>
                                            </ul>
                                            <div class="progress mb-0" style="height:4px; width:100%;">
                                                <div class="progress-bar bg-warning progress-animated"
                                                     style="width:60%;" role="progressbar">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media mb-5 align-items-center event-list">
                                        <div class="p-3 text-center me-3 date-bx bgl-primary">
                                            <h2 class="mb-0 text-secondary fs-28 font-w600">16</h2>
                                            <h5 class="mb-1 text-black">Wed</h5>
                                        </div>
                                        <div class="media-body px-0">
                                            <h6 class="mt-0 mb-3 fs-14"><a class="text-black"
                                                                           href="https://ventic.dexignzone.com/codeigniter/demo/event">Live
                                                Concert Choir Charity Event 2020</a></h6>
                                            <ul class="fs-14 list-inline mb-2 d-flex justify-content-between">
                                                <li>Ticket Sold</li>
                                                <li>431/650</li>
                                            </ul>
                                            <div class="progress mb-0" style="height:4px; width:100%;">
                                                <div class="progress-bar bg-warning progress-animated"
                                                     style="width:50%;" role="progressbar">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="media mb-5 align-items-center event-list">
                                        <div class="p-3 text-center me-3 date-bx bgl-primary">
                                            <h2 class="mb-0 text-primary fs-28 font-w600">28</h2>
                                            <h5 class="mb-1 text-black">Wed</h5>
                                        </div>
                                        <div class="media-body px-0">
                                            <h6 class="mt-0 mb-3 fs-14"><a class="text-black"
                                                                           href="https://ventic.dexignzone.com/codeigniter/demo/event">Live
                                                Concert Choir Charity Event 2020</a></h6>
                                            <ul class="fs-14 list-inline mb-2 d-flex justify-content-between">
                                                <li>Ticket Sold</li>
                                                <li>650/650</li>
                                            </ul>
                                            <div class="progress mb-0" style="height:4px; width:100%;">
                                                <div class="progress-bar bg-warning progress-animated"
                                                     style="width:100%;" role="progressbar">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer pt-0 border-0">
                                    <a href="javascript:void(0);"
                                       class="btn btn-secondary btn-block text-white dz-load-more"
                                       id="UpcomingEvent"
                                       rel="public/assets/ajax/upcoming-event.jsp">Load
                                        More</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--**********************************
    Content body end
***********************************-->
    <!--**********************************
Footer start
***********************************-->
    <footer class="footer">
        <div class="copyright">
            <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/"
                                                          target="_blank">MCN</a> 2024</p>
        </div>
    </footer>
    <!--**********************************
Footer end
***********************************-->

</div>

<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/vendor/chartjs/chart.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datetimepicker/js/moment.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/peity/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/apexchart/apexchart.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/dashboard/dashboard-1.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>


<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>
