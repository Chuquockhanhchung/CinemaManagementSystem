<%@ page import="dal.EventDAO" %>
<%@ page import="dal.DBContext" %>
<%@ page import="model.Event" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/2/2024
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <!-- Title -->
    <title>Sự Kiện | Manager</title>
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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>
    <style>
        i.fa-solid {
            line-height: unset !important;
        }
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
    <%@include file="../header.jsp" %>
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
        <div class="container-fluid">
            <div class="page-titles">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">CMS</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Event</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="mb-5">
                        <ul class="d-flex align-items-center flex-wrap">
                            <li><a href="add_event.jsp" class="btn btn-primary ">Thêm sự kiện mới</a></li>
                        </ul>
                    </div>
                    <div class="filter cm-content-box box-primary">
                        <div class="content-title SlideToolHeader">
                            <div class="cpa">
                                <i class="fa-solid fa-file-lines me-1"></i>Event List
                            </div>
                            <div class="tools">
                                <a href="javascript:void(0);" class="expand handle"><i
                                        class="fal fa-angle-down"></i></a>
                            </div>
                        </div>
                        <div class="cm-content-body  form excerpt">
                            <div class="card-body py-3">
                                <div class="table-responsive">
                                    <table class="table table-striped  table-condensed flip-content">
                                        <thead>
                                        <tr>
                                            <th class="text-black">E.ID</th>
                                            <th class="text-black">Banner</th>
                                            <th class="text-black">Tên Sự Kiện</th>
                                            <th class="text-black">Code Sự Kiện</th>
                                            <th class="text-black">Giảm Giá</th>
                                            <th class="text-black">Ngày Bắt Đầu</th>
                                            <th class="text-black">Ngày Kết Thúc</th>
                                            <th class="text-black">Trạng Thái</th>
                                            <th class="text-black text-end">Công Cụ</th>
                                        </tr>
                                        </thead>
                                        <tbody>
<%--                                        <%--%>
<%--                                            EventDAO d = new EventDAO(DBContext.getConn());--%>
<%--                                            List<Event> list = d.getAllEvent();--%>
<%--                                            for (Event event : list) {--%>
<%--                                                if (event.getStatus() == 1) {  // Chỉ lấy các sự kiện có Status = 1--%>
<%--                                        %>--%>
                                        <%
                                            EventDAO d = new EventDAO(DBContext.getConn());
                                            List<Event> list = d.getAllEvent();
                                            for (Event event : list) {
                                        %>
                                        <tr>
                                            <td><%= event.getEventID() %>
                                            </td>
                                            <td>
                                                <img src="<%= event.getEventImage() %>" width="100">
                                            </td>
                                            <td><%= event.getEventName() %>
                                            </td>
                                            <td><%= event.getEventCode() %>
                                            </td>
                                            <td><%= (int)(event.getDiscount() * 100) %>%
                                            </td>
                                            <td><%= event.getStartDate() %>
                                            </td>
                                            <td><%= event.getEndDate() %>
                                            </td>
                                            <td>
                                                <%= (event.getStatus() == 1) ? "Hoạt Động" : "Không Hoạt Động" %>
                                            </td>
                                            <td class="text-end">
                                                <a href="${pageContext.request.contextPath}/editevent?eventID=<%= event.getEventID() %>"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/deleteevent?eventID=<%= event.getEventID() %>"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa-solid fa-trash"></i>
                                                </a>
                                            </td>

                                        </tr>
                                        <% } %>
                                        </tbody>
                                    </table>
                                    <div class="d-flex align-items-center width-defult justify-content-xl-between justify-content-center flex-wrap py-3">
                                        <small>Page 1 of 5, showing 2 records out of 8 total, starting on record 1,
                                            ending on 2</small>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination my-2 my-md-0">
                                                <li class="page-item"><a class="page-link" href="javascript:void(0);"><i
                                                        class="fa-solid fa-angle-left"></i></a></li>
                                                <li class="page-item"><a class="page-link"
                                                                         href="javascript:void(0);">1</a></li>
                                                <li class="page-item"><a class="page-link"
                                                                         href="javascript:void(0);">2</a></li>
                                                <li class="page-item"><a class="page-link"
                                                                         href="javascript:void(0);">3</a></li>
                                                <li class="page-item"><a class="page-link "
                                                                         href="javascript:void(0);"><i
                                                        class="fa-solid fa-angle-right"></i></a></li>
                                            </ul>
                                        </nav>
                                    </div>
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
            <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/" target="_blank">MCN</a>
                2024</p>
        </div>
    </footer>
    <!--**********************************
Footer end
***********************************-->

</div>

<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>



<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>