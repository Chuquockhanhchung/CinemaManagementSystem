
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
    <title>Manage Movie</title>
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
          href="public/assets/images/favicon.png">


    <link href="public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet" type="text/css"/>

    <link href="public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link class="main-css" href="public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

    <style>
        <%@ include file="../managerStyle.css"%>

        .form-container {
            display: flex;
            flex-wrap: wrap;
            gap: 10px; /* Khoảng cách giữa các phần tử */
        }
        .form-container > div {
            flex: 1 1 20%; /* Điều chỉnh kích thước cho mỗi phần tử */
            min-width: 150px; /* Đảm bảo kích thước tối thiểu cho mỗi phần tử */
        }
        .form-container .btn-container {
            display: flex;
            gap: 10px;
            flex: 1 1 30%; /* Điều chỉnh kích thước container chứa nút */
        }
        .form-container .btn-container > button {
            flex: 1;
            /* Để các nút có cùng kích thước */
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
                                                   placeholder="Title" name="title">
                                        </div>
                                        <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                            <select id="statusSelect" name="status" class="form-control default-select dashboard-select-2 h-auto wide"
                                                    aria-label="Default select example">
                                                <option value="">Select Status</option>
                                                <option value="Đang Chiếu">Đang Chiếu</option>
                                                <option value="Sắp Chiếu">Sắp Chiếu</option>

                                            </select>
                                        </div>
                                        <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3">
                                            <input class="form-control" name="date" type="text" id="datepicker">
                                        </div>
                                        <div class="col-xl-3 col-xxl-6 col-sm-6 mb-3 btn-container">
                                            <button class="btn btn-primary" title="Click here to Search" id="filterButton"><i
                                                    class="fa-sharp fa-solid fa-filter me-1" ></i>Filter
                                            </button>
                                            <button class="btn btn-danger light" title="Click here to remove filter"
                                                    type="button" id="removeFilterButton">Remove Filter
                                            </button>
                                        </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-5">
                        <a href="../../addmovie" class="btn btn-primary">Thêm Phim Mới</a>
                    </div>
                    <div class="filter cm-content-box box-primary">
                        <div class="content-title SlideToolHeader">
                            <div class="cpa">
                                <i class="fa-solid fa-file-lines me-1"></i>Danh Sách Phim
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
                                            <th class="text-black">Tên Phim</th>
                                            <th class="text-black">Trạng Thái</th>
                                            <th class="text-black">Ngày Đăng</th>
                                            <th class="text-black text-end">Hành Động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${sessionScope.movies}" var="m">
                                            <tr>
                                                <td>${m.getId()}</td>
                                                <td>${m.getName()}</td>
                                                <td>${m.getStatus()}</td>
                                                <td>${m.getReleaseDate()}</td>
                                                <td class="text-end">

                                                    <a href="${pageContext.request.contextPath}/editMovie?id=${m.getId()}"
                                                       class="btn btn-warning btn-sm content-icon">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                    <a href="javascript:void(0);"
                                                       class="btn btn-danger btn-sm content-icon">
                                                        <i class="fa fa-times"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                        </tbody>
                                    </table>
                                    <div class="d-lg-flex d-block align-items-center width-defult justify-content-between flex-wrap py-3">
                                        <small class="mb-lg-0 mb-3 d-inline-block">Page 1 of 5, showing 2 records out of
                                            8 total, starting on record 1, ending on 2</small>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination mb-2 mb-sm-0">
                                                <li class="page-item"><a class="page-link" href="javascript:void();"><i
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
<script src="public/assets/vendor/global/global.min.js"></script>
<script src="public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>


<script src="public/assets/vendor/bootstrap-datepicker-master/js/bootstrap-datepicker.min.js"></script>

<script src="public/assets/js/custom.min.js"></script>
<script src="public/assets/js/deznav-init.js"></script>
<script src="public/assets/js/demo.js"></script>
<script src="public/assets/js/styleSwitcher.js"></script>
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
<script>
    document.addEventListener('DOMContentLoaded', function() {
        console.log('DOM fully loaded and parsed');
        var filterButton = document.getElementById('filterButton');
        var removeFilterButton = document.getElementById('removeFilterButton');

        if (!filterButton) {
            console.error('Filter button not found');
        }

        if (!removeFilterButton) {
            console.error('Remove filter button not found');
        }

        filterButton.addEventListener('click', function() {
            console.log('Filter button clicked');

            var title = document.getElementById('exampleFormControlInput1').value;
            var status = document.getElementById('statusSelect').value;
            var date = document.getElementById('datepicker').value;

            console.log('Title:', title);
            console.log('Status:', status);
            console.log('Date:', date);
            var queryParams="";
            var titlev="title=";
            var statusv="status=";
            var datev="date=";
            if (title) {
                titlev+=title;
                queryParams=titlev;
            }
            if (status) {
                statusv+=status;
                if(title){
                    queryParams=queryParams+"&&"+statusv;
                }else{
                    queryParams=queryParams+statusv;
                }

            }
            if (date) {
                datev+=date;
                if(title || status){
                    queryParams=queryParams+"&&"+datev;
                }else{
                    queryParams=queryParams+datev;
                }

            }


            var newUrl = `http://localhost:9999/CinemaManageSystem_war_exploded/searchmovie?`+queryParams;
            console.log('Navigating to:', newUrl);

            // window.location.href = newUrl;
        });

        removeFilterButton.addEventListener('click', function() {
            console.log('Remove filter button clicked');

            document.getElementById('exampleFormControlInput1').value = '';
            document.getElementById('statusSelect').value = 'Select Status';
            document.getElementById('datepicker').value = '';
        });
    });
</script>
</html>