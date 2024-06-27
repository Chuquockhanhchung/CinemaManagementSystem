<%--
  Created by IntelliJ IDEA.
  User: Chi
  Date: 6/26/2024
  Time: 1:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/2/2024
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          href="public/assets/images/favicon.png">
    <link href="public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
          rel="stylesheet" type="text/css"/>
    <link href="public/assets/vendor/select2/css/select2.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link href="public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link class="main-css" href="public/assets/css/style.css" rel="stylesheet"
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
                    <li class="breadcrumb-item"><a href="manageMovie">Danh sách phim</a></li>
                    <li class="breadcrumb-item active"><a href="addmovie">Thêm phim mới</a></li>
                </ol>
            </div>
            <!-- Row -->
            <div class="row">
                <div class="col-xl-12">


                    <div class="row">
                        <div class="col-xl-11">
                            <form action="addType" method="post">
                                <div class="filter cm-content-box box-primary">


                                </div>
                                <div class="filter cm-content-box box-primary">

                                    <div class="cm-content-body   form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Tên Thể Loại</label>
                                            <input type="text" value="${sessionScope.typeM.getTypeName()}" name="name" class="form-control mb-3" placeholder="Tên phim">

                                        </div>
                                    </div>
                                </div>


                                <div class="filter cm-content-box box-primary">

                                    <div class="cm-content-body   form excerpt">
                                        <div class="card-body">
                                            <label class="form-label">Mô tả</label>
                                            <input type="text" value="${sessionScope.typeM.getTypeDescription()}" name="des" class="form-control mb-3" placeholder="Mô tả">

                                        </div>
                                    </div>
                                </div>

                                <c:if test="${requestScope.err != null}">
                                    <div class="alert alert-danger" role="alert">
                                            ${requestScope.err}
                                    </div>
                                </c:if>
                                <div>
                                    <input type="submit" class="btn btn-primary mb-3" value="Thêm Thể Loại film" >

                                </div>

                            </form>


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
<script data-cfasync="false"
        src="${pageContext.request.contextPath}/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script>
    var base_url = 'https://ventic.dexignzone.com/codeigniter/demo/';
</script>
<script src="public/assets/vendor/global/global.min.js"></script>
<script src="public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>


<script src="public/assets/vendor/select2/js/select2.full.min.js"></script>
<script src="public/assets/js/plugins-init/select2-init.js"></script>
<script src="public/assets/vendor/ckeditor/ckeditor.js"></script>

<script src="public/assets/js/custom.min.js"></script>
<script src="public/assets/js/deznav-init.js"></script>
<script src="public/assets/js/demo.js"></script>
<script src="public/assets/js/styleSwitcher.js"></script>
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

    function checkValidateForm() {
        const name = document.querySelector('input[name="name"]').value;
        const des = document.querySelector('input[name="des"]').value;
        const dir = document.querySelector('input[name="dir"]').value;
        const actor = document.querySelector('input[name="actor"]').value;
        const date = document.querySelector('input[name="date"]').value;
        const time = document.querySelector('input[name="time"]').value;
        const lan = document.querySelector('select[name="language"]').value;
        const img = document.querySelector('input[name="img"]').value;
        const status = document.querySelector('input[name="status"]').value;
        const price = document.querySelector('input[name="price"]').value;
        const otherType = document.querySelector('input[name="otherType"]').value;
        var checkboxes = document.querySelectorAll('input[name="type"]:checked');
        if (name.trim() === "" || des.trim() === "" || dir.trim() === "" || actor.trim() === "" || date.trim() === "" || time.trim() === "" || lan.trim() === "" || img.trim() === "" || status.trim() === "" || price.trim() === "") {
            alert("Vui lòng điền đầy đủ thông tin!");
            return false;
        }
        if (otherType.trim() === "" && checkboxes.length === 0) {
            alert("Vui lòng điền đầy đủ thông tin!");
            return false;

        }
        if (parseInt(price) <= 0 || isNaN(price) || isNaN(parseInt(price))) {
            alert("Giá vé phải lớn hơn 0 và phải là số nguyên!");
            return false;
        }

        if (parseInt(time) <= 0 || isNaN(time) || isNaN(parseInt(time))) {
            alert("Thời lượng phim phải là số nguyên và không đượng nhỏ hơn 0!");
            return false;
        }

        return true;

    }
</script>


<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>
