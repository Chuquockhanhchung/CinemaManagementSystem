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
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                    <li class="breadcrumb-item"><a href="javascript:void(0)">CMS</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Thêm sản phẩm mới</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="mb-3">
                        <ul class="d-flex align-items-center flex-wrap">
                            <li><a href="event.jsp"
                                   class="btn btn-primary">Danh sách sản phẩm</a></li>
                        </ul>
                    </div>
                    <form method="post" action="../../addproduct">
                        <div class="row">
                            <div class="mb-3 col-sm-8">
                                <label class="form-label">Tên Sản Phẩm</label>
                                <input type="text" class="form-control" placeholder="Tên Sản Phẩm" name="ProductName">
                            </div>
                            <div class="col-xl-8">
                                <div class="filter cm-content-box box-primary">
                                    <div class="content-title SlideToolHeader">
                                        <div class="cpa"> Thông Tin
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:void(0);" class="expand handle"><i
                                                    class="fal fa-angle-down"></i></a>
                                        </div>
                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Giá Sản Phẩm</label>
                                            <input type="text" class="form-control" name="ProductPrice">
                                        </div>
                                    </div>
                                    <div class="cm-content-body form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Thông Tin Sản Phẩm</label>
                                            <input type="text" class="form-control" name="Detail">
                                        </div>
                                    </div>
<%--                                    <select name="type">--%>
<%--                                        <c:if test="${requestScope.}"--%>
<%--                                    </select>--%>
                                    <input type="submit" class="btn btn-primary btn-sm" value="AddProduct">
                                </div>
                            </div>
<%--                            <div class="col-xl-4">--%>
<%--                                <div class="right-sidebar-sticky">--%>
<%--                                    <div class="filter cm-content-box box-primary">--%>
<%--                                        <div class="content-title SlideToolHeader">--%>
<%--                                            <div class="cpa">--%>
<%--                                                Cài Đặt--%>
<%--                                            </div>--%>
<%--                                            <div class="tools">--%>
<%--                                                <a href="javascript:void(0);" class="expand handle"><i--%>
<%--                                                        class="fal fa-angle-down"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="cm-content-body publish-content form excerpt">--%>
<%--                                            <div class="card-body py-3">--%>
<%--                                                <ul class="d-flex align-items-center mb-2">--%>
<%--                                                    <li><a href="javascript:void(0);"><i class="fa-solid fa-eye"></i></a>--%>
<%--                                                    </li>--%>
<%--                                                    <li><a href="javascript:void(0);" class="ms-2">Trạng Thái:</a></li>--%>
<%--                                                    <li><strong><a href="javascript:void(0);"--%>
<%--                                                                   class="mx-2">Hoạt Động</a></strong></li>--%>
<%--                                                    <li><a href="javascript:void(0);" class="accordion accordion-primary"--%>
<%--                                                           id="headingtwo" data-bs-toggle="collapse"--%>
<%--                                                           data-bs-target="#collapsetwo" aria-controls="collapsetwo"--%>
<%--                                                           aria-expanded="true" role="button">Chỉnh sửa</a></li>--%>
<%--                                                </ul>--%>
<%--                                                <div id="collapsetwo" class="collapse" aria-labelledby="headingtwo"--%>
<%--                                                     data-bs-parent="#accordion-one">--%>
<%--                                                    <div class="accordion-body-text p-3 border rounded">--%>
<%--                                                        <div class="basic-form">--%>
<%--                                                            <form>--%>
<%--                                                                <div class="mb-3 mb-0">--%>
<%--                                                                    <div class="radio">--%>
<%--                                                                        <label class="form-check-label"><input type="radio"--%>
<%--                                                                                                               name="optradio"--%>
<%--                                                                                                               class="form-check-input">--%>
<%--                                                                            Hoạt Động</label>--%>
<%--                                                                    </div>--%>
<%--                                                                    <div class="radio">--%>
<%--                                                                        <label class="form-check-label"><input type="radio"--%>
<%--                                                                                                               name="optradio"--%>
<%--                                                                                                               class="form-check-input">--%>
<%--                                                                            Không Hoạt Động</label>--%>
<%--                                                                    </div>--%>
<%--                                                                </div>--%>
<%--                                                            </form>--%>
<%--                                                        </div>--%>
<%--                                                        <div>--%>
<%--                                                            <button class="btn btn-primary btn-sm me-2" type="button"--%>
<%--                                                                    data-bs-toggle="collapse" data-bs-target="#collapsetwo"--%>
<%--                                                                    aria-expanded="false" aria-controls="collapsetwo">--%>
<%--                                                                Ok--%>
<%--                                                            </button>--%>
<%--                                                            <button class="btn btn-danger light btn-sm" type="button"--%>
<%--                                                                    data-bs-toggle="collapse" data-bs-target="#collapsetwo"--%>
<%--                                                                    aria-expanded="false" aria-controls="collapsetwo">--%>
<%--                                                                Cancel--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                                <ul class="d-flex align-items-center mb-2 flex-wrap">--%>
<%--                                                    <li><a href="javascript:void(0);"><i--%>
<%--                                                            class="fa-solid fa-calendar-days"></i></a></li>--%>
<%--                                                    <li><a href="javascript:void(0);" class="ms-2">Published</a></li>--%>
<%--                                                    <li><strong><a href="javascript:void(0);" class="mx-2">on :24-09-2023--%>
<%--                                                        16:22:52 </a></strong></li>--%>
<%--                                                    <li><a href="javascript:void(0);" class="accordion accordion-primary"--%>
<%--                                                           id="headingthree" data-bs-toggle="collapse"--%>
<%--                                                           data-bs-target="#collapsethree" aria-controls="collapsethree"--%>
<%--                                                           aria-expanded="true" role="button">Edit</a></li>--%>

<%--                                                </ul>--%>
<%--                                                <div id="collapsethree" class="collapse" aria-labelledby="headingthree"--%>
<%--                                                     data-bs-parent="#accordion-one">--%>
<%--                                                    <div class="accordion-body-text p-3 mb-3 border rounded">--%>
<%--                                                        <div class="basic-form mb-3">--%>
<%--                                                            <input type="date" name="datepicker" class=" form-control">--%>
<%--                                                        </div>--%>
<%--                                                        <button class="btn btn-primary btn-sm me-2" type="button"--%>
<%--                                                                data-bs-toggle="collapse" data-bs-target="#collapsethree"--%>
<%--                                                                aria-expanded="false" aria-controls="collapsethree">--%>
<%--                                                            Ok--%>
<%--                                                        </button>--%>
<%--                                                        <button class="btn btn-danger light btn-sm" type="button"--%>
<%--                                                                data-bs-toggle="collapse" data-bs-target="#collapsethree"--%>
<%--                                                                aria-expanded="false" aria-controls="collapsethree">--%>
<%--                                                            Cancel--%>
<%--                                                        </button>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="filter cm-content-box box-primary">--%>
<%--                                        <div class="content-title SlideToolHeader">--%>
<%--                                            <div class="cpa">--%>
<%--                                                Featured Image--%>
<%--                                            </div>--%>
<%--                                            <div class="tools">--%>
<%--                                                <a href="javascript:void(0);" class="expand handle"><i--%>
<%--                                                        class="fal fa-angle-down"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="cm-content-body publish-content form excerpt">--%>
<%--                                            <div class="card-body">--%>
<%--                                                <div class="avatar-upload d-flex align-items-center">--%>
<%--                                                    <div class=" position-relative ">--%>
<%--                                                        <div class="avatar-preview">--%>
<%--                                                            <div id="imagePreview"--%>
<%--                                                                 style="background-image: url(../../public/assets/images/no-img-avatar.png);">--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="change-btn d-flex align-items-center flex-wrap">--%>
<%--                                                            <input type='file' class="form-control d-none" id="imageUpload"--%>
<%--                                                                   accept=".png, .jpg, .jpeg"--%>
<%--                                                                   name="EventImage">--%>
<%--                                                            <label for="imageUpload" class="btn btn-primary ms-0">Select--%>
<%--                                                                Image</label>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <hr>--%>
<%--                                        <div class="card-footer border-0 pt-0 text-end">--%>
<%--                                            <input type="submit" class="btn btn-primary btn-sm" name="SUBMIT">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                    </form>
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
<script>
    var base_url = 'https://ventic.dexignzone.com/codeigniter/demo/';
</script>
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
        .create( document.querySelector( '#ckeditor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>
<script>
    $(function() {
        $('input[name="datetimes"]').daterangepicker({
            timePicker: true,
            startDate: moment().startOf('hour'),
            endDate: moment().startOf('hour').add(32, 'hour'),
            locale: {
                format: 'YYYY/MM/DD hh:mm'
            }
        });
    });

    $(function() {
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