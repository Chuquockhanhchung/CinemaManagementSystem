<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/2/2024
  Time: 11:41 AM
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
    <meta name="author" content="DexignZone">
    <meta name="robots" content="">

    <meta name="keywords"
          content="admin, admin panel, admin dashboard, admin template, administration, analytics, bootstrap, bootstrap admin, coupon, deal, modern, responsive admin dashboard, ticket, ticket dashboard, ticket system">
    <meta name="description"
          content="Enhance your event management with Ventic - the ultimate Event Ticketing CodeIgniter Admin Template. Streamline ticket sales, track attendance, and manage your events effortlessly with this powerful and user-friendly template. Elevate your event experience today!">
    <meta property="og:title" content="Ventic - CodeIgniter Event Ticketing Admin Dashboard Template">
    <meta property="og:description"
          content="Enhance your event management with Ventic - the ultimate Event Ticketing CodeIgniter Admin Template. Streamline ticket sales, track attendance, and manage your events effortlessly with this powerful and user-friendly template. Elevate your event experience today! ">
    <meta property="og:image" content="https://ventic.w3itexpert.com/codeigniter/social-image.png">
    <meta name="format-detection" content="telephone=no">

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
          rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

    <style>
        <%@ include file="../managerStyle.css"%>
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
    <%@include file="../sidebar.jsp" %>
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
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Movies</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="filter cm-content-box box-primary">
                        <div class="content-title SlideToolHeader">
                            <h4 class="cpa card-title">
                                <i class="fa-sharp fa-solid fa-filter me-2"></i>Filter
                            </h4>
                            <div class="tools">
                                <a href="javascript:void(0);" class="expand handle"><i
                                        class="fal fa-angle-down"></i></a>
                            </div>
                        </div>
                        <div class="cm-content-body  form excerpt">
                            <div class="card-body pb-2">
                                <div class="row">
                                    <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                        <input type="text" class="form-control" id="exampleFormControlInput1"
                                               placeholder="Title">
                                    </div>
                                    <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                        <select class="form-control default-select dashboard-select-2 h-auto wide"
                                                aria-label="Default select example">
                                            <option selected>Select Status</option>
                                            <option value="1">Published</option>
                                            <option value="2">Draft</option>
                                            <option value="3">Trash</option>
                                            <option value="4">Private</option>
                                            <option value="5">Pending</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                        <input class="form-control" type="text" id="datepicker">
                                    </div>
                                    <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                        <button class="btn btn-primary" title="Click here to Search" type="button"><i
                                                class="fa-sharp fa-solid fa-filter me-1"></i>Filter
                                        </button>
                                        <button class="btn btn-danger light" title="Click here to remove filter"
                                                type="button">Remove Filter
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-5">
                        <a href="add_movies.jsp" class="btn btn-primary">Add
                            Movies</a>
                    </div>
                    <div class="filter cm-content-box box-primary">
                        <div class="content-title SlideToolHeader">
                            <div class="cpa">
                                <i class="fa-solid fa-file-lines me-1"></i>Movie List
                            </div>
                            <div class="tools">
                                <a href="javascript:void(0);" class="expand handle"><i
                                        class="fal fa-angle-down"></i></a>
                            </div>
                        </div>
                        <div class="cm-content-body form excerpt">
                            <div class="card-body py-3">
                                <div class="table-responsive">
                                    <table class="table table-striped table-condensed flip-content">
                                        <thead>
                                        <tr>
                                            <th class="text-black">M.No</th>
                                            <th class="text-black">Title</th>
                                            <th class="text-black">Status</th>
                                            <th class="text-black">Modified</th>
                                            <th class="text-black text-end">Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>About Us</td>
                                            <td>Published</td>
                                            <td>18 Feb, 2024</td>
                                            <td class="text-end">

                                                <a href="javascript:void(0);"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>FAQ</td>
                                            <td>Published</td>
                                            <td>13 Jan, 2024</td>
                                            <td class="text-end">

                                                <a href="javascript:void(0);"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Pricing</td>
                                            <td>Published</td>
                                            <td>13 Jan, 2024</td>
                                            <td class="text-end">

                                                <a href="javascript:void(0);"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Schedule</td>
                                            <td>Published</td>
                                            <td>13 Jan, 2024</td>
                                            <td class="text-end">

                                                <a href="javascript:void(0);"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Under Maintenance</td>
                                            <td>Published</td>
                                            <td>25 Jan, 2024</td>
                                            <td class="text-end">

                                                <a href="javascript:void(0);"
                                                   class="btn btn-warning btn-sm content-icon">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="btn btn-danger btn-sm content-icon">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="d-lg-flex d-block align-items-center width-defult justify-content-between flex-wrap py-3">
                                        <small class="mb-lg-0 mb-3 d-inline-block">Page 1 of 5, showing 2 records out of
                                            8 total, starting on record 1, ending on 2</small>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination mb-2 mb-sm-0">
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
            <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/" target="_blank">DexignZone</a>
                2023</p>
        </div>
    </footer>
    <!--**********************************
Footer end
***********************************-->

</div>
<script>
    var base_url = 'https://ventic.dexignzone.com/codeigniter/demo/';
</script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>


<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/js/bootstrap-datepicker.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>
<script>
    $(function () {
        $("#datepicker").datepicker({
            autoclose: true,
            todayHighlight: true
        }).datepicker('update', new Date());

    });
</script>


<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>