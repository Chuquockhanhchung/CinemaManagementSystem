<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/3/2024
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.4.0/uicons-solid-rounded/css/uicons-solid-rounded.css'>

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

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rr-dashboard-monitor"></i>
                <span class="nav-text">Dashboard</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="index.jsp">Dashboard</a></li>
                    <li><a href="dashboard/orders_list.jsp">Orders list</a></li>
                    <li><a href="dashboard/event.jsp">Event</a></li>
                    <li><a href="dashboard/customers.jsp">Customers</a></li>

                </ul>

            </li>


            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-sr-clapperboard-play"></i>
                <span class="nav-text">CMS<span class="badge badge-danger badge-xs ms-1">Admin</span></span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/content">Movies</a></li>

                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/add_email">Add Email</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/blog">Event</a></li>

                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/blog_category">Event Category</a>
                    </li>
                </ul>
            </li>


        </ul>
        <div class="plus-box">
            <p class="fs-16 font-w500 mb-3">Ticket Sales Weekly Report</p>
            <a class="text-white fs-14" href="https://ventic.dexignzone.com/codeigniter/demo/analytics">Learn
                more</a>
        </div>

    </div>
</div>
</body>
</html>
