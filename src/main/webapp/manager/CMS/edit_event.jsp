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
    <title>Thêm Sự Kiện | Manager</title>
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
            width: 14em;
            padding: 0.75rem 0.75rem;
            margin: 0.75em;
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

        .card-footer.border-0.pt-0.text-end {
            height: 60px;
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
                    <li class="breadcrumb-item active"><a href="addEventMovie">Thêm sự kiện mới</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="mb-3">
                        <ul class="d-flex align-items-center flex-wrap">
                            <li><a href="eventMovie"
                                   class="btn btn-primary">Danh sách sự kiện</a></li>
                        </ul>
                    </div>
                    <form method="post" action="../../editevent" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-xl-8">

                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Tiêu Đề
                                        </div>

                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <input type="text" class="form-control" placeholder="Tiêu Đề"
                                                   name="EventName" value="${event.EventName}">

                                        </div>
                                    </div>
                                </div>

                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Tiêu Đề
                                        </div>

                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <textarea style="width: 100%; height: 130px;" name="EventDetail"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Code Sự Kiện
                                        </div>

                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <input type="text" id="randomEnventCode" class="form-control"
                                                   name="EventCode">
                                        </div>
                                    </div>
                                </div>

                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Giảm giá (%)
                                        </div>

                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <input type="number" class="form-control" name="Discount">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div class="right-sidebar-sticky">
                                    <div class="filter cm-content-box box-primary">
                                        <div class="content-title SlideToolHeader">
                                            <div class="cpa">
                                                Cài Đặt
                                            </div>

                                        </div>
                                        <div class="card-body py-3">
                                            <ul class="d-flex align-items-center mb-2">
                                                <li><a href="javascript:void(0);"><i class="fa-solid fa-eye"></i></a>
                                                </li>
                                                <li><a href="javascript:void(0);" class="ms-2">Trạng Thái:</a></li>
                                                <li><strong><a href="javascript:void(0);" id="statusDisplay"
                                                               class="mx-2">Hoạt Động</a></strong></li>
                                                <li><a href="javascript:void(0);" class="accordion accordion-primary"
                                                       id="headingtwo" data-bs-toggle="collapse"
                                                       data-bs-target="#collapsetwo" aria-controls="collapsetwo"
                                                       aria-expanded="true" role="button">Chỉnh sửa</a></li>
                                            </ul>
                                            <div id="collapsetwo" class="collapse" aria-labelledby="headingtwo"
                                                 data-bs-parent="#accordion-one">
                                                <div class="accordion-body-text p-3 border rounded">
                                                    <div class="basic-form">
                                                        <form>
                                                            <div class="mb-3 mb-0">
                                                                <div class="radio">
                                                                    <label class="form-check-label"><input type="radio"
                                                                                                           name="Status"
                                                                                                           value="1"
                                                                                                           class="form-check-input"
                                                                                                           checked> Hoạt
                                                                        Động</label>
                                                                </div>
                                                                <div class="radio">
                                                                    <label class="form-check-label"><input type="radio"
                                                                                                           name="Status"
                                                                                                           value="0"
                                                                                                           class="form-check-input">
                                                                        Không Hoạt Động</label>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div>
                                                        <button class="btn btn-primary btn-sm me-2" type="button"
                                                                onclick="updateStatus()" data-bs-toggle="collapse"
                                                                data-bs-target="#collapsetwo" aria-expanded="false"
                                                                aria-controls="collapsetwo">Ok
                                                        </button>
                                                        <button class="btn btn-danger light btn-sm" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapsetwo"
                                                                aria-expanded="false" aria-controls="collapsetwo">Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card-body py-3">
                                            <ul class="d-flex align-items-center mb-2 flex-column">
                                                <li class="w-100">
                                                    <i class="fa-solid fa-calendar-days"></i>
                                                    <a class="ms-2">Ngày Bắt Đầu & Kết Thúc Sự Kiện:</a>
                                                </li>
                                                <li class="w-100">
                                                    <div class="card-body d-flex" style="padding: 0">
                                                        <input class="picktime mb-2" type="text" name="StartDate" />
                                                        <input class="picktime" type="text" name="EndDate" />
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                    </div>

                                    <div class="filter cm-content-box box-primary">
                                        <div class="content-title SlideToolHeader">
                                            <div class="cpa">
                                                Banner
                                            </div>
                                        </div>
                                        <div class="cm-content-body publish-content form excerpt">
                                            <div class="card-body">
                                                <div class="avatar-upload d-flex align-items-center justify-content-center">
                                                    <div class=" position-relative ">
                                                        <div class="avatar-preview">
                                                            <div id="imagePreview"
                                                                 style="background-image: url(../../public/assets/images/no-img-avatar.png);">
                                                            </div>
                                                        </div>
                                                        <div class="change-btn d-flex align-items-center flex-wrap">
                                                            <input type='file' class="form-control d-none"
                                                                   id="imageUpload"
                                                                   accept=".png, .jpg, .jpeg"
                                                                   name="EventImage">
                                                            <label for="imageUpload" class="btn btn-primary ms-0">Chọn
                                                                Ảnh</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="card-footer border-0 pt-0 text-end">
                                            <input type="submit" class="btn btn-primary btn-sm d-flex"
                                                   style="margin: 0 auto;"
                                                   value="THÊM SỰ KIỆN">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

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
    function generateRandomString(length) {
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        let result = '';
        for (let i = 0; i < length; i++) {
            const randomIndex = Math.floor(Math.random() * characters.length);
            result += characters[randomIndex];
        }
        return result;
    }

    const randomString = generateRandomString(8);
    document.getElementById('randomEnventCode').value = randomString;
</script>
<script>
    ClassicEditor
        .create(document.querySelector('#ckeditor'))
        .catch(error => {
            console.error(error);
        });
</script>

<script>
    function updateStatus() {
        // Lấy tất cả các radio button có tên là 'Status'
        var radios = document.getElementsByName('Status');
        var selectedStatus;

        // Duyệt qua các radio button và lấy giá trị của radio button được chọn
        for (var i = 0; i < radios.length; i++) {
            if (radios[i].checked) {
                selectedStatus = radios[i].value;
                break;
            }
        }

        // Cập nhật nội dung của phần tử hiển thị trạng thái
        document.getElementById('statusDisplay').innerText = selectedStatus === "1" ? "Hoạt Động" : "Không Hoạt Động";
    }

    // Đặt giá trị mặc định cho trạng thái hiển thị khi tải trang
    window.onload = function () {
        document.getElementById('statusDisplay').innerText = "Hoạt Động";
    }
</script>
<script>
    $(function () {
        $('input[name="StartDate"]').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            timePicker: true,
            timePicker24Hour: true,
            timePickerSeconds: true,
            locale: {
                format: 'YYYY-MM-DD HH:mm:ss'
            },
            minYear: 1901,
            maxYear: parseInt(moment().format('YYYY'), 10)
        });
    });

    $(function () {
        $('input[name="EndDate"]').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            timePicker: true,
            timePicker24Hour: true,
            timePickerSeconds: true,
            locale: {
                format: 'YYYY-MM-DD HH:mm:ss'
            },
            minYear: 1901,
            maxYear: parseInt(moment().format('YYYY'), 10)
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