<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/2/2024
  Time: 11:48 AM
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
    <link href="${pageContext.request.contextPath}/public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/select2/css/select2.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/tagify/tagify.css" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet" type="text/css"/>

    <%--Date Picker--%>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
    <%--Date Picker--%>
    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>

    <style>
        .picktime {
            display: block;
            width: 100%;
            padding: 0.375rem 0.75rem;
            font-size: 0.875rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            appearance: none;
            background-color: var(--bs-body-bg);
            background-clip: padding-box;
            border: var(--bs-border-width) solid #E6E6E6;
            border-radius: var(--bs-border-radius);
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
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
Nav header end
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
                    <li class="breadcrumb-item"><a href="manager">Quản Lý</a></li>
                    <li class="breadcrumb-item"><a href="voucher">Danh sách vouvher phim</a></li>
                    <li class="breadcrumb-item active"><a href="addvoucher">Thêm Voucher Phim</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="mb-3">
                        <ul class="d-flex align-items-center flex-wrap">
                            <li><a href="voucher"
                                   class="btn btn-primary">Danh sách Voucher</a></li>
                        </ul>
                    </div>

                    <%--                    --------------------BẮT ĐẦU LÀM TỪ ĐÂY-----------------------------%>
                    <%--                    --------------------tự tạo servlet có url patten là addvoucher-----------------------------%>


                    <form method="post" action="../../addvoucher">
                        <div class="row">
                            <div class="mb-3 col-sm-8">
                                <label class="form-label">Tên Voucher</label>
                                <input type="text" class="form-control" placeholder="Tên Voucher" name="VoucherName">
                            </div>
                            <div class="col-xl-8">
                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Thông Tin Voucher</div>
                                        <div class="tools">
                                            <a href="javascript:void(0);" class="expand handle">
                                                <i class="fal fa-angle-down"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Giá Trị Voucher</label>
                                            <input type="number" class="form-control" name="VoucherPrice" min="1"
                                                   max="100">
                                        </div>
                                    </div>
                                    <%--Có thể sẽ lỗi ở đây vì định dạng ngày ở đây là tháng/ngày/năm còn tròn database là năm/tháng/ngày--%>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Hạn Sử Dụng</label>
                                            <input type="date" class="form-control" name="ExpirationDate">
                                        </div>
                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Thông Tin Chi Tiết</label>
                                            <input type="text" class="form-control" name="Detail">
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary btn-sm" value="Thêm Voucher">
                                </div>
                            </div>

                        </div>
                    </form>
                    <!-- Display message using JSTL -->
                    <c:if test="${not empty message}">
                        <div class="alert alert-info">
                                ${message}
                        </div>
                    </c:if>
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
<script data-cfasync="false"
        src="${pageContext.request.contextPath}/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/vendor/tagify/tagify.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/select2/js/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/select2-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/datatables.init.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>

<%--Date Picker--%>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<%--Date Picker--%>

<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>

<script>
    ClassicEditor
        .create(document.querySelector('#ckeditor'))
        .catch(error => {
            console.error(error);
        });
</script>
<script>
    $(function () {
        $('input[name="datetimes"]').daterangepicker({
            timePicker: true,
            startDate: moment().startOf('hour'),
            endDate: moment().startOf('hour').add(32, 'hour'),
            locale: {
                format: 'YYYY/MM/DD hh:mm'
            }
        });
    });

    $(function () {
        $('input[name="EndDate"]').daterangepicker({
            timePicker: true,
            startDate: moment().startOf('hour'),
            endDate: moment().startOf('hour').add(32, 'hour'),
            locale: {
                format: 'YYYY/MM/DD hh:mm'
            }
        });
    });
</script>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imagePreview').css('background-image', 'url(' + e.target.result + ')');
                $('#imagePreview').hide();
                $('#imagePreview').fadeIn(650);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imageUpload").on('change', function () {

        readURL(this);
    });
    $('.remove-img').on('click', function () {
        var imageUrl = "${pageContext.request.contextPath}/public/assets/images/no-img-avatar.png";
        $('.avatar-preview, #imagePreview').removeAttr('style');
        $('#imagePreview').css('background-image', 'url(' + imageUrl + ')');
    });
    <!-- tagify.js -->

    if (jQuery('input[name=tagify]').length > 0) {
        // The DOM element you wish to replace with Tagify
        var input = document.querySelector('input[name=tagify]');
        // initialize Tagify on the above input node reference
        new Tagify(input);
    }
</script>

<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>