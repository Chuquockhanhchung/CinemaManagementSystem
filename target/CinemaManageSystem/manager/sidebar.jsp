<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/2/2024
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-solid-rounded/css/uicons-solid-rounded.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-regular-straight/css/uicons-regular-straight.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-thin-straight/css/uicons-thin-straight.css'>
    <style>
        .badge-danger {
            bottom: 15px;
            position: absolute;
        }
    </style>
</head>
<body>
<div class="deznav">
    <div class="deznav-scroll">
        <ul class="metismenu" id="menu">

            <li><a class="has-arrow ai-icon" href="javascript:void(0)" aria-expanded="false">
                <i class="fi fi-rr-dashboard-monitor"></i>
                <span class="nav-text">Bảng Điều Khiển</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="dashboard/orders_list.jsp">Danh Sách Vé Đã Đặt</a></li>
<%--                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/event">Sự Kiện</a></li--%>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/analytics">Phân Tích</a></li>
                </ul>

            </li>


            <li><a class="has-arrow ai-icon" href="javascript:void(0)" aria-expanded="false">
                <i class="fi fi-sr-clapperboard-play"></i>
                <span class="nav-text">CMS<span class="badge badge-danger badge-xs ms-1"> QUẢN LÝ</span></span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/movies.jsp">Danh Sách Phim</a></li>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/add_movies.jsp">Thêm Phim Mới</a></li>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/event.jsp">Sự Kiện</a></li>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/add_event.jsp">Thêm Sự Kiện</a></li>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/product.jsp">Sản Phẩm</a>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/add_product.jsp">Thêm Sản Phẩm</a>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/voucher.jsp">Voucher</a>
                    <li><a href="${pageContext.request.contextPath}/manager/CMS/add_voucher.jsp">Thêm Voucher</a>
                    </li>
                </ul>
            </li>

        </ul>
        <div class="plus-box">
            <p class="fs-16 font-w500 mb-3">MyCinema</p>
            <a class="text-white fs-14" href="#">Xem thêm</a>
        </div>

    </div>
</div>
</body>
</html>
