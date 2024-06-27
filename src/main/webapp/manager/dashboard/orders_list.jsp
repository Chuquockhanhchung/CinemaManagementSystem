<%@ page import="dal.TicketDAO" %>
<%@ page import="dal.DBContext" %>
<%@ page import="model.Ticket" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/16/2024
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <!-- Title -->
    <title>Ventic - CodeIgniter Event Ticketing Admin Dashboard Template</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon icon -->

    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/public/assets/images/favicon.png">
    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet" type="text/css"/>
    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

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
        <!-- row -->
        <div class="container-fluid">
            <div class="row page-titles">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Order List</a></li>
                </ol>
            </div>
            <div class="form-head mb-4 d-flex flex-wrap align-items-center">
                <div class="me-auto">
                    <h2 class="font-w600 mb-0">Order List</h2>
                    <%--                    <p>Lorem ipsum dolor sit amet </p>--%>
                </div>
                <div class="input-group search-area2 d-xl-inline-flex mb-2 me-lg-4 me-md-2">
                    <button class="input-group-text"><i class="flaticon-381-search-2 text-primary"></i></button>
                    <input type="text" class="form-control" placeholder="Search here...">
                </div>
                <div class="dropdown custom-dropdown mb-2 period-btn">
                    <div class="btn btn-sm  d-flex align-items-center" data-bs-toggle="dropdown" aria-expanded="false"
                         role="button">
                        <svg class="primary-icon" width="28" height="28" viewBox="0 0 28 28" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <path d="M22.167 5.83362H21.0003V3.50028C21.0003 3.19087 20.8774 2.89412 20.6586 2.67533C20.4398 2.45653 20.143 2.33362 19.8336 2.33362C19.5242 2.33362 19.2275 2.45653 19.0087 2.67533C18.7899 2.89412 18.667 3.19087 18.667 3.50028V5.83362H9.33362V3.50028C9.33362 3.19087 9.2107 2.89412 8.99191 2.67533C8.77312 2.45653 8.47637 2.33362 8.16695 2.33362C7.85753 2.33362 7.56079 2.45653 7.34199 2.67533C7.1232 2.89412 7.00028 3.19087 7.00028 3.50028V5.83362H5.83362C4.90536 5.83362 4.01512 6.20237 3.35874 6.85874C2.70237 7.51512 2.33362 8.40536 2.33362 9.33362V10.5003H25.667V9.33362C25.667 8.40536 25.2982 7.51512 24.6418 6.85874C23.9854 6.20237 23.0952 5.83362 22.167 5.83362Z"
                                  fill="#0E8A74"/>
                            <path d="M2.33362 22.1669C2.33362 23.0952 2.70237 23.9854 3.35874 24.6418C4.01512 25.2982 4.90536 25.6669 5.83362 25.6669H22.167C23.0952 25.6669 23.9854 25.2982 24.6418 24.6418C25.2982 23.9854 25.667 23.0952 25.667 22.1669V12.8336H2.33362V22.1669Z"
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
            <div class="row mb-4 align-items-center">
                <div class="col-xl-9">
                    <div class="card m-0 ">
                        <div class="card-body px-4 py-3 py-lg-2">
                            <div class="row align-items-center">
                                <div class="col-xl-3 col-xxl-12 col-lg-12 my-2">
                                    <%--                                    <p class="mb-0 fs-14">Lorem Ipsum is simply dummy text of the printing and</p>--%>
                                </div>
                                <div class="col-xl-7 col-xxl-10 col-lg-12">
                                    <div class="row align-items-center">
                                        <div class="col-xl-4 col-md-4 col-sm-4 my-2">
                                            <div class="media align-items-center style-2">
                                                    <span class="me-3">
												<svg width="25" height="26" viewBox="0 0 25 26" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
													<rect width="3.54545" height="26" rx="1.77273"
                                                          transform="matrix(-1 0 0 1 24.8181 0)" fill="#FB3E7A"/>
													<rect width="3.54545" height="18.9091" rx="1.77273"
                                                          transform="matrix(-1 0 0 1 17.7272 7.09088)" fill="#FB3E7A"/>
													<rect width="3.54545" height="8.27273" rx="1.77273"
                                                          transform="matrix(-1 0 0 1 10.6362 17.7273)" fill="#FB3E7A"/>
													<rect width="4" height="16" rx="2" transform="matrix(-1 0 0 1 4 10)"
                                                          fill="#FB3E7A"/>
												</svg>
											</span>
                                                <div class="media-body ml-1">
                                                    <p class="mb-0 fs-12">Income</p>
                                                    <h4 class="mb-0 font-w600  fs-22">$126,000</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-md-4 col-sm-4 my-2">
                                            <div class="media align-items-center style-2">
                                                    <span class="me-3">
												<svg width="30" height="19" viewBox="0 0 30 19" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd"
                                                          d="M29.3124 0.990819C30.1459 1.71561 30.234 2.97887 29.5092 3.81239L20.7578 13.8765C19.359 15.4851 16.9444 15.7141 15.2681 14.397L11.1176 11.1359L3.87074 17.9564C3.06639 18.7135 1.80064 18.6751 1.04361 17.8708C0.286573 17.0664 0.324929 15.8007 1.12928 15.0436L8.3761 8.22309C9.817 6.86695 12.0329 6.76812 13.5888 7.99062L17.7394 11.2518L26.4908 1.18767C27.2156 0.354158 28.4788 0.266024 29.3124 0.990819Z"
                                                          fill="#FB3E7A"/>
												</svg>
											</span>
                                                <div class="media-body ml-1">
                                                    <p class="mb-0 fs-12">Customer</p>
                                                    <h4 class="mb-0 font-w600  fs-22">765 Person</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-md-4 col-sm-4 my-2">
                                            <div class="media align-items-center style-2">
                                                    <span class="me-3">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd"
                                                          d="M12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20ZM12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
                                                          fill="#C8C8C8"/>
													<path fill-rule="evenodd" clip-rule="evenodd"
                                                          d="M15.9999 0.686289C14.7205 0.233951 13.3682 0 11.9999 0V3.93696C13.4442 3.93696 14.8619 4.32489 16.105 5.06021C17.3481 5.79553 18.3708 6.85124 19.0664 8.117C19.7619 9.38277 20.1047 10.8121 20.0589 12.2557C20.0131 13.6992 19.5804 15.104 18.806 16.3231C18.0317 17.5422 16.9441 18.531 15.6569 19.186C14.3697 19.8411 12.9302 20.1384 11.4888 20.0468C10.0475 19.9553 8.65715 19.4783 7.46319 18.6656C6.26922 17.853 5.31544 16.7346 4.70154 15.4273L1.13794 17.1007C1.71955 18.3393 2.50612 19.4639 3.45939 20.4297C4.00364 20.9811 4.60223 21.4807 5.24803 21.9203C7.02498 23.1297 9.09416 23.8396 11.2393 23.9759C13.3845 24.1121 15.5268 23.6697 17.4425 22.6948C19.3582 21.7199 20.9768 20.2483 22.1293 18.4339C23.2818 16.6195 23.9257 14.5289 23.9939 12.3805C24.062 10.2321 23.5519 8.10484 22.5167 6.22104C21.4816 4.33724 19.9595 2.76605 18.1094 1.6717C17.4371 1.27398 16.7304 0.944541 15.9999 0.686289Z"
                                                          fill="#FB3E7A"/>
												</svg>
											</span>
                                                <div class="media-body ml-1">
                                                    <p class="mb-0 fs-12">Than last week</p>
                                                    <h4 class="mb-0 font-w600 fs-22">72%
                                                        <svg class="ml-2" width="12" height="6" viewBox="0 0 12 6"
                                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M0 6L6 2.62268e-07L12 6" fill="#13B497"></path>
                                                        </svg>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 col-xxl-2 my-2">
                                    <div class="dropdown d-inline-block">
                                        <div class="dropdown-toggle mb-0 fs-18 " data-bs-toggle="dropdown">
                                            <span class="font-w400 text-primary">This Week</span>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-left">
                                            <a class="dropdown-item" href="javascript:void(0);">Newest</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Old</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 mt-3 mt-xl-0 Generate">
                    <a href="#" class="btn btn-secondary d-block" data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                            class="fa fa-file-text-o scale5 me-3"></i>Generate Order Report</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive table-hover fs-14">
                        <table class="table mb-4 dataTablesCard card-table" id="orderTable">
                            <thead>
                            <tr>
                                <th>
                                    <div class="form-check checkbox-secondary">
                                        <input class="form-check-input" type="checkbox" value="" id="checkAll">
                                        <label class="form-check-label" for="checkAll">
                                        </label>
                                    </div>
                                </th>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Movie Name</th>
                                <th>Customer Name</th>
                                <th>Location</th>
                                <th>Sold Ticket</th>
                                <th>Status</th>
                                <th>Refund</th>
                                <th>Totle Revenue</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                TicketDAO d = new TicketDAO(DBContext.getConn());
                                List<Ticket> list = d.getAllTicket();
                                for (Ticket ticket : list) {
                            %>
                            <tr>
                                <td>
                                    <div class="form-check checkbox-secondary">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                                        <label class="form-check-label" for="flexCheckDefault2">
                                        </label>
                                    </div>
                                </td>
                                <td>#<%= ticket.getTicketID() %>
                                </td>
                                <td><%= ticket.getBookingDate() %>
                                </td>
                                <td class="wspace-no"><%= ticket.getMovieName() %>
                                </td>
                                <td><%= ticket.getFullName() %>
                                </td>
                                <td></td>
                                <td>1 pcs</td>
                                <td><%= ticket.getStatus() %>
                                </td>
                                <td class="text-black"><strong>NO</strong></td>
                                <td><a href="javascript:void(0);"
                                       class="btn btn-secondary light btn-sm"><%= ticket.getTicketPrice() %>
                                </a></td>

                            </tr>

                            <%
                                }
                            %>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--**********************************
Content body end
***********************************-->

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Order Report</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">Order ID</label>
                                    <input type="number" class="form-control" id="exampleFormControlInput1"
                                           placeholder="#0012451">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput2" class="form-label">Customer Name</label>
                                    <input type="text" class="form-control" id="exampleFormControlInput2"
                                           placeholder="Frank Azire">
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput3" class="form-label">Event NAME</label>
                                    <input type="email" class="form-control" id="exampleFormControlInput3"
                                           placeholder="UI Design Workshop With Best Author Envato 2020">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
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

<script src="${pageContext.request.contextPath}/public/assets/vendor/chartjs/chart.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/datatables.init.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>
<script>
    (function ($) {

        var table = $('#example5').DataTable({
            searching: false,
            paging: true,
            select: false,
            //info: false,         
            lengthChange: false,
            responsive: true

        });
        $('#example tbody').on('click', 'tr', function () {
            var data = table.row(this).data();

        });

    })(jQuery);
</script>


<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>
