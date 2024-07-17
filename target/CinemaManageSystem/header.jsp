<%-- 
    Document   : header
    Created on : May 16, 2024, 2:45:17 PM
    Author     : datla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%@page import="dal.DBContext" %>
<%@page import="controller.*" %>
<%@page import="model.*" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

</head>
<body>
<div class="prs_navigation_main_wrapper">
    <div class="container-fluid">
        <div id="search_open" class="gc_search_box">
            <input type="text" placeholder="Search here">
            <button><i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </div>
        <div class="prs_navi_left_main_wrapper">
            <div class="prs_logo_main_wrapper">
                <a href="home">
                    <img src="images/header/logo.png" alt="logo"/>
                </a>
            </div>
            <div class="prs_menu_main_wrapper">
                <nav class="navbar navbar-default">
                    <div id="dl-menu" class="xv-menuwrapper responsive-menu">
                        <button class="dl-trigger">
                            <img src="images/header/bars.png" alt="bar_png">
                        </button>
                        <div class="prs_mobail_searchbar_wrapper" id="search_button"><i class="fa fa-search"></i>
                        </div>
                        <div class="clearfix"></div>
                        <ul class="dl-menu">
                            <li class="parent"><a href="home">Trang chủ</a>
                            </li>
                            <li class="parent megamenu"><a href="#">Phim</a>
                                <ul class="lg-submenu">
                                    <c:forEach items="${type}" var="o">
                                        <li><a href="type?name=${o}">Phim ${o}</a>

                                        </li>
                                    </c:forEach>


                                </ul>
                            </li>
<%--                            <li class="parent megamenu"><a href="#">Thước phim</a>--%>
<%--                                <ul class="lg-submenu prs_navi_video_wrapper">--%>
<%--                                    <li>--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp1.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp2.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp3.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp4.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp5.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                    <li class="hidden-sm">--%>
<%--                                        <div class="prs_video_navi_img_main_wrapper">--%>
<%--                                            <img src="images/content/vp6.jpg" alt="video_img">--%>
<%--                                            <div class="prs_video_navi_overlay_wrapper"><a--%>
<%--                                                    class="test-popup-link button" rel='external'--%>
<%--                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'--%>
<%--                                                    title='title'><i class="fi fi-rr-play"></i></a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                            <li class="parent"><a href="#">Trang</a>--%>
<%--                                <ul class="lg-submenu">--%>
<%--                                    <li class="parent"><a href="#">Tin tức</a>--%>
<%--                                        <ul class="lg-submenu">--%>
<%--                                            <li><a href="blog_category.jsp">Blog-Category</a>--%>
<%--                                            </li>--%>
<%--                                            <li><a href="blog_single.jsp">Blog-Single</a>--%>
<%--                                            </li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="parent"><a href="#">Sự kiện</a>--%>
<%--                                        <ul class="lg-submenu">--%>
<%--                                            <li><a href="event_category.jsp">Loại sự kện</a>--%>
<%--                                            </li>--%>
<%--                                            <li><a href="event_single.jsp">Sự kiện đơn</a>--%>
<%--                                            </li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="parent"><a href="#">Phim</a>--%>
<%--                                        <ul class="lg-submenu">--%>
<%--                                            <li><a href="movie_category.jsp">Thể loại phim</a>--%>
<%--                                            </li>--%>
<%--                                            <li><a href="movie_single.jsp">Phim đơn</a>--%>
<%--                                            </li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="gallery.jsp">Phòng trưng bày</a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="payment.jsp">Loại đăng kí</a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="confirmation_screen.jsp">Màn hình xác nhận</a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="movie_booking.jsp">Đặt phim</a>--%>
<%--                                    </li>--%>
<%--                                    <li><a href="seat_booking.jsp">Đặt chỗ</a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
                            <li class="parent"><a href="contact.jsp">Liên hệ</a>
                            </li>
                            <c:if test="${sessionScope.user != null}">
                                <li>
                                    <a style="text-decoration: none;color: white" href="user_information.jsp?CustomerID=${sessionScope.user.idCustomer}"><i
                                            class="fa-solid fa-user"></i> ${sessionScope.user.name}</a>
                                </li>
                            </c:if>
                            <c:choose>
                                <c:when test="${sessionScope.user.getRole() == 4}">
                                    <li><a style="text-decoration: none; color: white" href="manager"><i style="margin-right: 5px" class="fa-solid fa-house"></i> Trang Quản Lí</a></li>
                                </c:when>
                                <c:when test="${sessionScope.user.getRole() == 2}">
                                    <li><a style="text-decoration: none; color: white" href="admin"><i style="margin-right: 5px" class="fa-solid fa-house"></i> Trang Admin</a></li>
                                </c:when>
                            </c:choose>

                        </ul>
                    </div>
                    <!-- /dl-menuwrapper -->
                </nav>
            </div>
        </div>
        <div class="prs_navi_right_main_wrapper">
            <div class="prs_slidebar_wrapper">
                <button class="second-nav-toggler" type="button">
                    <img src="images/header/bars.png" alt="bar_png">
                </button>
            </div>


            <c:choose>
                <c:when test="${not empty user}">
                    <div class="prs_top_login_btn_wrapper">
                        <div class="prs_animate_btn1">
                            <ul>
                                <li><a href="logout" class="button button--tamaya" data-text="Đăng Xuất"
                                ><span>Đăng Xuất</span></a></li>
                            </ul>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="prs_top_login_btn_wrapper">
                        <div class="prs_animate_btn1">
                            <ul>
                                <li><a href="#" class="button button--tamaya" data-text="ĐĂNG NHẬP" data-toggle="modal"
                                       data-target="#myModal"><span>Đăng Nhập</span></a></li>
                            </ul>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>

            <div class="product-heading">
                <div class="con">
                    <select>
                        <option>Tên Phim</option>

                    </select>
                    <input type="text" placeholder="Tìm phim" id="query">
                    <button type="submit" onclick="submitForm()"><i class="fi fi-bs-search"></i>
                    </button>
                </div>

                <script>
                    function submitForm() {

                        const query = document.getElementById("query").value;
                        var link = 'search2?Search=' + query;
                        window.location.href = link;
                    }
                </script>
            </div>
        </div>
        <div id="mobile-nav" data-prevent-default="true" data-mouse-events="true">
            <div class="mobail_nav_overlay"></div>
            <div class="mobile-nav-box">
                <div class="mobile-logo">
                    <a href="home" class="mobile-main-logo">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                             xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="46.996px"
                             height="40px" viewBox="0 0 46.996 40" enable-background="new 0 0 46.996 40"
                             xml:space="preserve">
                                <g>
                                    <g>
                                        <path d="M39.919,19.833C39.919,8.88,30.984,0,19.959,0C8.937,0,0,8.88,0,19.833
                                      c0,10.954,8.937,19.834,19.959,19.834C30.984,39.666,39.919,30.787,39.919,19.833z M35.675,14.425
                                      c0.379,0,0.686,0.307,0.686,0.683s-0.305,0.683-0.686,0.683c-0.38,0-0.688-0.307-0.688-0.683S35.295,14.425,35.675,14.425z
                                      M34.482,20.461c0,0.491-0.025,0.976-0.071,1.452l-11.214-4.512l6.396-7.733C32.592,12.311,34.482,16.167,34.482,20.461z
                                      M19.083,2.277c0.379,0,0.687,0.305,0.687,0.682c0,0.378-0.306,0.684-0.687,0.684c-0.378,0-0.686-0.306-0.686-0.684
                                      C18.396,2.584,18.704,2.277,19.083,2.277z M19.959,6.031c1.916,0,3.743,0.372,5.416,1.042l-6.335,7.662l-6.252-6.82
                                      C14.906,6.718,17.351,6.031,19.959,6.031z M3.128,16.473c-0.378,0-0.687-0.306-0.687-0.684c0-0.377,0.307-0.682,0.687-0.682
                                      c0.38,0,0.686,0.305,0.686,0.682C3.814,16.167,3.508,16.473,3.128,16.473z M5.535,22.119c-0.063-0.545-0.098-1.098-0.098-1.658
                                      c0-3.612,1.339-6.911,3.547-9.444l6.502,7.095L5.535,22.119z M10.462,35.354c-0.379,0-0.687-0.306-0.687-0.683
                                      s0.307-0.682,0.687-0.682c0.379,0,0.687,0.305,0.687,0.682S10.842,35.354,10.462,35.354z M6.925,26.828l10.4-4.186l0.239,12.052
                                      C12.88,33.921,8.956,30.922,6.925,26.828z M19.513,22.326c-1.529,0-2.771-1.232-2.771-2.752c0-1.521,1.241-2.753,2.771-2.753
                                      c1.53,0,2.771,1.232,2.771,2.753C22.284,21.096,21.043,22.326,19.513,22.326z M29.939,33.99c-0.378,0-0.686-0.308-0.686-0.683
                                      c0-0.377,0.307-0.683,0.686-0.683s0.688,0.306,0.688,0.683C30.626,33.683,30.319,33.99,29.939,33.99z M22.482,34.672
                                      l-0.246-12.388l10.846,4.365C31.098,30.799,27.177,33.854,22.482,34.672z M35.314,34.585c-1.837,1.531-6.061,4.306-6.061,4.306
                                      C37.652,36.448,45.953,40,45.953,40l1.043-8.658C41.41,30.454,38.125,32.244,35.314,34.585z"/>
                                    </g>
                                </g>
                                </svg>
                        <span>Phim chuyên nghiệp</span>
                    </a>
                    <a href="#" class="manu-close"><i class="fa fa-times"></i></a>
                </div>
                <ul class="mobile-list-nav">
                    <li><a href="about.jsp">Tổng quan</a>
                    </li>
                    <li><a href="movie_single.jsp">Phim</a>
                    </li>
                    <li><a href="event_single.jsp">Sự kiện</a>
                    </li>
                    <li><a href="gallery.jsp">Thư viện</a>
                    </li>
                    <li><a href="blog_single.jsp">Tin tức</a>
                    </li>
                    <li><a href="contact.jsp">Liên hệ</a>
                    </li>
                </ul>
                <div class="product-heading prs_slidebar_searchbar_wrapper">
                    <div class="con">
                        <select>
                            <option>Tất cả danh mục</option>
                            <option>Phim</option>
<%--                            <option>Thước phim</option>--%>
                            <option>Nhạc</option>
                        </select>
                        <input type="text" placeholder="Search Movie , Video , Music">
                        <button type="submit"><i class="flaticon-tool"></i>
                        </button>
                    </div>
                </div>
                <div class="achivement-blog">
                    <ul class="flat-list">
                        <li>
                            <a href="#"> <i class="fa fa-facebook"></i>
                                <h6>Facebook</h6>
                                <span class="counter">12546</span>
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fa fa-twitter"></i>
                                <h6>Twiter</h6>
                                <span class="counter">12546</span>
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fa fa-pinterest"></i>
                                <h6>Pinterest</h6>
                                <span class="counter">12546</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="prs_top_login_btn_wrapper prs_slidebar_searchbar_btn_wrapper">
                    <div class="prs_animate_btn1">
                        <ul>
                            <li><a href="#" class="button button--tamaya" data-text="sign up" data-toggle="modal"
                                   data-target="#myModal"><span>sign up</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Form Login -->
<form action="login" method="post" id="form">
    <div class="modal fade st_pop_form_wrapper" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Đăng Nhập</h3>
                </div>
                <c:if test="${not empty err}">
                    <div class="text-danger">${err}.</div>
                    <c:remove var="failMess" scope="session"/>
                </c:if>
                <div class="st_profile_input float_left">
                    <label>Email / Số điện thoại</label>
                    <input value="${requestScope.email}" name="email" type="text" placeholder="Email / Số điện thoại">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Mật khẩu</label>
                    <input value="${requestScope.pass}" name="pass" type="password" placeholder="Mật khẩu">
                </div>

                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Bạn quên mật khẩu?</a>
                    </h3>
                </div>
                <div class="g-recaptcha float_left" data-sitekey="6LclJOUpAAAAABir2gwq1sKVfC1zD_Gygchg7m-g"></div>
                <div id="error"></div>

                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="ĐĂNG NHẬP"/>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>Hoặc</h4>
                </div>
                <div class="click st_form_pop_gmail_btn float_left">
                    <a href="https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force"
                       class="link">
                        <img src="images/content/google.png" alt=""> Đăng nhập bằng Google</a>
                </div>
                <div class="st_form_pop_signin_btn float_left">
                    <h4>Bạn chưa có tài khoản? <a href="#" data-toggle="modal" data-target="#myModa3"
                                                  target="_blank">Đăng Ký</a></h4>
                    <h5>Tôi đồng ý với <a href="#">Điều khoản & Dịch vụ</a> & <a href="#">của chúnng tôi</a></h5>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const form = document.querySelector('#form');
        const emailInput = form.querySelector('input[name="email"]');
        const passwordInput = form.querySelector('input[name="pass"]');
        const errorDiv = document.getElementById("error");

        // Retrieve the existing emails and passwords from JSTL
        const existingAccounts = [
            <%-- Server-side rendering of existing emails and passwords --%>
            <c:forEach var="account" items="${listAcc}" varStatus="status">
            {
                email: "${account.getEmail().toLowerCase()}",
                password: "${account.getPassword()}",
                status: "${account.getStatus()}"// Assuming passwords are stored this way
            }<c:if test="${!status.last}">, </c:if>
            </c:forEach>
        ];

        console.log("Existing Accounts:", existingAccounts);

        form.addEventListener('submit', (event) => {
            event.preventDefault(); // Prevent the default form submission

            const email = emailInput.value.trim().toLowerCase();
            const password = passwordInput.value;
            const response = grecaptcha.getResponse();
            if (!response) {
                errorDiv.innerHTML = "Please check reCAPTCHA!";
                return;
            }
            // Perform client-side validation
            if (!email) {
                alert('Email không được để trống.');
                return;
            }

            if (!password) {
                alert('Mật khẩu không được để trống.');
                return;
            }

            // Check if the email exists and the password is correct
            const account = existingAccounts.find(acc => acc.email === email);
            if (!account) {
                alert('Email không tồn tại. Vui lòng sử dụng một email khác.');
                return;
            }
            if (account.status === "unactive") {
                alert('Tài khoản chưa được kích hoạt!');
                return;
            }
            if (account.password !== password) {
                alert('Sai mật khẩu. Vui lòng nhập lại mật khẩu.');
                return;
            }

            // Perform reCAPTCHA validation


            console.log("Email and password validation passed. Submitting form...");
            // If all validations pass, submit the form
            form.submit();
        });

        document.querySelector('.click').addEventListener('click', (e) => {
            const response = grecaptcha.getResponse();
            if (!response) {
                e.preventDefault();
                errorDiv.innerHTML = "Please check reCAPTCHA!";
            } else {
                window.location.href = 'https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force';
            }
        });
    });
</script>

<!-- Form Forgot Password -->
<div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">

    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="st_pop_form_heading_wrapper float_left">
                <h3>QUÊN MẬT KHẨU</h3>
            </div>
            <c:if test="${not empty err}">
                <div class="text-danger">${err}.</div>
                <c:remove var="failMess" scope="session"/>
            </c:if>
            <div class="st_profile_input float_left">
                <label>Địa chỉ Email</label>
                <input id="emailInput" name="email" type="text">
            </div>
            <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href="" id="verifyButton">Xác
                Nhận</a>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#verifyButton').on('click', function (event) {
            event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>

            var email = $('#emailInput').val(); // Lấy giá trị từ input

            if (email) {
                $.ajax({
                    url: 'sendEmail',
                    method: 'POST',
                    data: {email: email},
                    success: function (response) {
                        alert("View your email to verify");
                    },
                    error: function (xhr, status, error) {
                        alert("An error occurred: " + xhr.responseText);
                    }
                });
            } else {
                alert("Please enter your email address.");
            }
        });
    });
</script>
<!-- Form Sign Up -->
<form action="signup" method="post" onsubmit="return validateForm()" id="formSignUp">
    <div class="modal fade st_pop_form_wrapper" id="myModa3" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Đăng Ký</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Địa Chỉ Email</label>
                    <input type="text" id="emailInput2" name="email" placeholder="example@gmail.com">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Số Điện Thoại</label>
                    <input type="text" placeholder="Số Điện Thoại" name="phone">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Họ Và Tên</label>
                    <input type="text" placeholder="Họ Và Tên" name="name">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Họ Và Tên</label>
                    <input type="date" placeholder="Ngày Sinh" name="DOB">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Mật Khẩu</label>
                    <input type="password" placeholder="Mật Khẩu" name="pass1">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <label>Xác Nhận Mật Khẩu</label>
                    <input type="password" placeholder="Xác Nhận Mật Khẩu" name="pass2">
                </div>
                <div class="st_form_pop_login_btn float_left">
                    <input type="submit" value="Đăng Ký">
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const form = document.querySelector('#formSignUp');
            const emailInput = form.querySelector('input[name="email"]');
            const phoneInput = form.querySelector('input[name="phone"]');
            const errorDiv = document.getElementById("error");

            // Retrieve the existing emails and passwords from JSTL
            const existingAccounts = [
                <%-- Server-side rendering of existing emails and passwords --%>
                <c:forEach var="customer" items="${listCus}" varStatus="status">
                {
                    email: "${customer.getEmail().toLowerCase()}",
                    phone: "${customer.getPhone()}",

                }<c:if test="${!status.last}">, </c:if>
                </c:forEach>
            ];

            console.log("Existing Accounts:", existingAccounts);

            form.addEventListener('submit', (event) => {
                event.preventDefault(); // Prevent the default form submission

                const email = emailInput.value.trim().toLowerCase();
                const phone = phoneInput.value;

                // Perform client-side validation


                // Check if the email exists and the password is correct
                const account = existingAccounts.find(acc => acc.email === email);
                if (account) {
                    alert('Email đã tồn tại. Vui lòng sử dụng một email khác.');
                    return;
                }
                const phones = existingAccounts.find(acc => acc.phone === phone);
                if (phones) {
                    alert('Số điện thoại đã tồn tại. Vui lòng sử dụng một số khác.');
                    return;
                }


                console.log("Email and password validation passed. Submitting form...");
                // If all validations pass, submit the form
                form.submit();
            });

            document.querySelector('.click').addEventListener('click', (e) => {
                const response = grecaptcha.getResponse();
                if (!response) {
                    e.preventDefault();
                    errorDiv.innerHTML = "Please check reCAPTCHA!";
                } else {
                    window.location.href = 'https://accounts.google.com/o/oauth2/auth?&scope=email+profile&redirect_uri=http://localhost:9999/CinemaManageSystem/loginbygoogle&response_type=code&client_id=962105997781-r3en06a8vrbe2ecetg9jdjadomka2ei4.apps.googleusercontent.com&approval_prompt=force';
                }
            });
        });
    </script>


    <!-- Form Forgot Password -->
    <div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">

        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper st_pop_form_heading_wrapper_fpass float_left">
                    <h3>Quên Mật Khẩu</h3>
                    <p>Chúng tôi sẽ giúp bạn! Tất cả những gì bạn phải làm là nhập địa chỉ Email và làm theo hướng
                        dẫn</p>
                </div>
                <div class="st_profile_input float_left">
                    <label>Địa Chỉ Email</label>
                    <input id="emailInput" name="email" type="text">
                </div>
                <div class="send st_form_pop_fpass_btn float_left" data-target="#verifyButton"><a href=""
                                                                                                  id="verifyButton">Xác
                    Nhận</a>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    function showAlert(message) {
        alert(message);
    }
</script>
<% if ("true".equals(request.getParameter("success"))) { %>
<script>
    alert("Đã gửi email xác thực tài khoản");
</script>
<% } %>
<script>
    function validateForm() {
        // Get form elements
        const email = document.getElementById('emailInput2').value;
        const phone = document.querySelector('input[name="phone"]').value;
        const name = document.querySelector('input[name="name"]').value;
        const pass1 = document.querySelector('input[name="pass1"]').value;
        const pass2 = document.querySelector('input[name="pass2"]').value;

        // Email regex pattern
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        // Phone regex pattern (assuming it should be 10-15 digits)
        const phonePattern = /^\d{10}$/;
        const passPattern = /^\d{6}$/;

        // Validate email
        if (!emailPattern.test(email)) {
            alert("Hãy nhập địa chỉ email của bạn");
            return false;
        }

        // Validate phone
        if (!phonePattern.test(phone)) {
            alert("Hãy điền số điện thoại hợp lệ (10 chữ số).");
            return false;
        }
        if (!passPattern.test(pass1)) {
            alert("Hãy điền mật khẩu hợp lệ (6 chữ số).");
            return false;
        }

        // Validate name
        if (name.trim() === "") {
            alert("Hãy nhập tên.");
            return false;
        }

        // Validate passwords
        if (pass1 === "" || pass2 === "") {
            alert("Hãy nhập mật khẩu.");
            return false;
        }

        if (pass1 !== pass2) {
            alert("Mật khẩu không trùng khớp.");
            return false;
        }

        return true;
    }
</script>

<script src="js/jquery.nice-select.min.js"></script>

</body>
</html>
