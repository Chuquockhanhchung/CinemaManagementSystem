<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/3/2024
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel= "stylesheet" href= "https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css" >
    <style>
        .nav-header .logo-abbr {
            width: 125px;
            margin: 0 auto;
            padding-top: 20px;
        }
    </style>
</head>
<body>
<!--**********************************
Nav header start
***********************************-->
<div class="nav-header">
    <a href="${pageContext.request.contextPath}/home" class="brand-logo">
        <img class="logo-abbr" src="${pageContext.request.contextPath}/images/header/logo.png">
    </a>
    <div class="nav-control">
        <div class="hamburger">
            <span class="line"></span><span class="line"></span><span class="line"></span>
        </div>
    </div>
</div>

<header class="header">
    <div class="header-content">
        <nav class="navbar navbar-expand">
            <div class="collapse navbar-collapse justify-content-between">
                <div class="header-left">
                    <a href="${pageContext.request.contextPath}/home"><i class="las la-home" style="font-size: 30px"></i></a>
                </div>
                <ul class="navbar-nav header-right">


                    <li class="nav-item dropdown notification_dropdown">
                        <select class="language-btn default-select">
                            <option data-display="ENGLISH">TIẾNG VIỆT</option>
                            <%--                            <option value="1">ENGLISH</option>--%>
                            <%--                            <option value="1">FRANCE</option>--%>
                            <%--                            <option value="2">CANADA</option>--%>
                            <%--                            <option value="3">GERMAN</option>--%>
                        </select>
                    </li>
                    <li class="nav-item dropdown header-profile">
                        <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                            <div class="header-info me-3">
                                <span class="fs-16 font-w600 ">${sessionScope.user.name}</span>
                                <small class="text-end fs-14 font-w400">Manager</small>
                            </div>
                            <img src="${sessionScope.user.picture}"
                                 width="20" alt="">
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <a href="${pageContext.request.contextPath}/Account.jsp?CustomerID=${sessionScope.user.idCustomer}"
                               class="dropdown-item ai-icon">
                                <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary"
                                     width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                                <span class="ms-2">Profile </span>
                            </a>

                            <a href="${pageContext.request.contextPath}/logout"
                               class="dropdown-item ai-icon">
                                <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger"
                                     width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                    <polyline points="16 17 21 12 16 7"></polyline>
                                    <line x1="21" y1="12" x2="9" y2="12"></line>
                                </svg>
                                <span class="ms-2">Logout </span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
</body>
</html>
