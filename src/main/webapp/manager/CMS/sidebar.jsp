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

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rr-dashboard-monitor"></i>
                <span class="nav-text">Dashboard</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="../dashboard/orders_list.jsp">Orders list</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/event">Event</a></li
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/analytics">Analytics</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/reviews">Reviews</a></li>
                </ul>

            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rr-apps-add"></i>
                <span class="nav-text">Apps</span>
            </a>
                <ul aria-expanded="false">

                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Email</a>
                        <ul aria-expanded="false">
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_compose">Compose</a>
                            </li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_inbox">Inbox</a></li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_read">Read</a></li>
                        </ul>
                    </li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/app_calender">Calendar</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-sr-clapperboard-play"></i>
                <span class="nav-text">CMS<span class="badge badge-danger badge-xs ms-1"> MANAGER</span></span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="movies.jsp">Movies</a></li>
                    <li><a href="add_movies.jsp">Add Movie</a></li>
                    <li><a href="add_email.jsp">Add Email</a></li>
                    <li><a href="event.jsp">Event</a></li>
                    <li><a href="add_event.jsp">Add Event</a></li>
                    <li><a href="event_category.jsp">Event Category</a>
                    </li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-sr-chart-mixed-up-circle-dollar"></i>
                <span class="nav-text">Charts</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/flot">Flot</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/morris">Morris</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/chartjs">Chartjs</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/chartist">Chartist</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/sparkline">Sparkline</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/peity">Peity</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-sr-star"></i>
                <span class="nav-text">Bootstrap</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/accordion">Accordion</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/alert">Alert</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/badge">Badge</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/button">Button</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/modal">Modal</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/button_group">Button Group</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/list_group">List Group</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/card">Cards</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/carousel">Carousel</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/dropdown">Dropdown</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/popover">Popover</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/progressbar">Progressbar</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/tab">Tab</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/typography">Typography</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/pagination">Pagination</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/grid">Grid</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-sr-heart"></i>
                <span class="nav-text">Plugins</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/select2">Select 2</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/nestable">Nestable</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/noui_slider">Noui Slider</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/sweetalert">Sweet Alert</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/toastr">Toastr</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/map_jqvmap">Jqv Map</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/lightgallery">Light Gallery</a></li>
                </ul>
            </li>
            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/widget_basic" class="ai-icon"
                   aria-expanded="false">
                <i class="fi fi-rs-checklist-task-budget"></i>
                <span class="nav-text">Widget</span>
            </a>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rs-form"></i>
                <span class="nav-text">Forms</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_element">Form Elements</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_wizard">Wizard</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_ckeditor">CKeditor</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_pickers">Pickers</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_validation_jquery">Form
                        Validate</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rs-table-list"></i>
                <span class="nav-text">Table</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/table_bootstrap">Bootstrap</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/table_datatable">Datatable</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="fi fi-rs-browser"></i>
                <span class="nav-text">Pages</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_login">Page Login</a></li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_register">Register</a></li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                        <ul aria-expanded="false">
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_400">Error
                                400</a></li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_403">Error
                                403</a></li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_404">Error
                                404</a></li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_500">Error
                                500</a></li>
                            <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_503">Error
                                503</a></li>
                        </ul>
                    </li>
                    <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_lock_screen">Lock Screen</a>
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
