<%--
  Created by IntelliJ IDEA.
  User: Chi
  Date: 7/4/2024
  Time: 12:17 AM
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
    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
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
                    <li class="breadcrumb-item"><a href="manager">CMS</a></li>
                    <li class="breadcrumb-item active"><a href="combo">Combo</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">


                    <div class="mb-5">
                        <a href="addCombo" class="btn btn-primary">Thêm combo</a>
                    </div>
                    <div class="filter cm-content-box box-primary">
                        <div class="content-title SlideToolHeader">
                            <div class="cpa">
                                <i class="fa-solid fa-file-lines me-1"></i>Danh Sách Combo
                            </div>

                        </div>
                        <div class="cm-content-body form excerpt">
                            <div class="card-body py-3">
                                <div class="table-responsive">
                                    <table class="table table-striped table-condensed dataTablesCard flip-content"
                                           id="movieTable">
                                        <thead>
                                        <tr>
                                            <th class="text-black">Combo.No</th>
                                            <th class="text-black">Tên combo</th>
                                            <th class="text-black">Ảnh</th>
                                            <th class="text-black">Chi tiết</th>
                                            <th class="text-black">Gía Combo</th>
                                            <th class="text-black">Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${sessionScope.combos}" var="m">
                                            <tr>
                                                <td>${m.getId()}</td>
                                                <td>${m.getName()}</td>
                                                <td><img  height="100" width="100" src=${m.getImg()}  /> </td>
                                                <td>${m.getDescription()}</td>
                                                <td>${m.getPrice()}</td>

                                                <td class="text-end">

                                                    <a href="${pageContext.request.contextPath}/editCombo?id=${m.getId()}"
                                                       class="btn btn-warning btn-sm content-icon">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                    <a onclick="DeleteC(${m.getId()})"
                                                       class="btn btn-danger btn-sm content-icon">
                                                        <i class="fa fa-times"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                        </tbody>
                                    </table>

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
<script src="${pageContext.request.contextPath}/public/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/datatables.init.js"></script>
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
<script>
    document.addEventListener('DOMContentLoaded', function () {
        console.log('DOM fully loaded and parsed');
        var filterButton = document.getElementById('filterButton');
        var removeFilterButton = document.getElementById('removeFilterButton');

        if (!filterButton) {
            console.error('Filter button not found');
        }

        if (!removeFilterButton) {
            console.error('Remove filter button not found');
        }

        filterButton.addEventListener('click', function () {
            console.log('Filter button clicked');

            var title = document.getElementById('exampleFormControlInput1').value;
            var status = document.getElementById('statusSelect').value;
            var date = document.getElementById('datepicker').value;

            console.log('Title:', title);
            console.log('Status:', status);
            console.log('Date:', date);
            var queryParams = "";
            var titlev = "title=";
            var statusv = "status=";
            var datev = "date=";
            if (title) {
                titlev += title;
                queryParams = titlev;
            }
            if (status) {
                statusv += status;
                if (title) {
                    queryParams = queryParams + "&&" + statusv;
                } else {
                    queryParams = queryParams + statusv;
                }

            }
            if (date) {
                datev += date;
                if (title || status) {
                    queryParams = queryParams + "&&" + datev;
                } else {
                    queryParams = queryParams + datev;
                }

            }


            var newUrl = `http://localhost:9999/CinemaManageSystem_war_exploded/searchmovie?` + queryParams;
            console.log('Navigating to:', newUrl);

            // window.location.href = newUrl;
        });

        removeFilterButton.addEventListener('click', function () {
            console.log('Remove filter button clicked');

            document.getElementById('exampleFormControlInput1').value = '';
            document.getElementById('statusSelect').value = 'Select Status';
            document.getElementById('datepicker').value = '';
        });
    });
</script>
<script>
    (function($) {

        var table = $('#example5').DataTable({
            searching: false,
            paging: true,
            select: false,
            //info: false,
            lengthChange: false,
            responsive: true

        });
        $('#example tbody').on('click', 'tr', function() {
            var data = table.row(this).data();

        });

    })(jQuery);
</script>

<script>
    function DeleteC(id){
        let confirmDelete = window.confirm("Bạn muốn xóa combo" + id +"?")
        if(confirmDelete){
            window.location = "deleteCombo?id=" + id
        }
    }
</script>
</html>
