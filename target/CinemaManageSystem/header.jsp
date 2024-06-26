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
                            <li class="parent megamenu"><a href="#">Thước phim</a>
                                <ul class="lg-submenu prs_navi_video_wrapper">
                                    <li>
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp1.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp2.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp3.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp4.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp5.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="hidden-sm">
                                        <div class="prs_video_navi_img_main_wrapper">
                                            <img src="images/content/vp6.jpg" alt="video_img">
                                            <div class="prs_video_navi_overlay_wrapper"><a
                                                    class="test-popup-link button" rel='external'
                                                    href='https://www.youtube.com/embed/ryzOXAO0Ss0'
                                                    title='title'><i class="fi fi-rr-play"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="parent"><a href="#">Trang</a>
                                <ul class="lg-submenu">
                                    <li class="parent"><a href="#">Tin tức</a>
                                        <ul class="lg-submenu">
                                            <li><a href="blog_category.jsp">Blog-Category</a>
                                            </li>
                                            <li><a href="blog_single.jsp">Blog-Single</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="parent"><a href="#">Sự kiện</a>
                                        <ul class="lg-submenu">
                                            <li><a href="event_category.jsp">Loại sự kện</a>
                                            </li>
                                            <li><a href="event_single.jsp">Sự kiện đơn</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="parent"><a href="#">Phim</a>
                                        <ul class="lg-submenu">
                                            <li><a href="movie_category.jsp">Thể loại phim</a>
                                            </li>
                                            <li><a href="movie_single.jsp">Phim đơn</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="gallery.jsp">Phòng trưng bày</a>
                                    </li>
                                    <li><a href="payment.jsp">Loại đăng kí</a>
                                    </li>
                                    <li><a href="confirmation_screen.jsp">Màn hình xác nhận</a>
                                    </li>
                                    <li><a href="movie_booking.jsp">Đặt phim</a>
                                    </li>
                                    <li><a href="seat_booking.jsp">Đặt chỗ</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="parent"><a href="contact.jsp">Liên hệ</a>
                            </li>
                            <c:if test="${sessionScope.user != null}">
                                <li>
                                    <a style="text-decoration: none;color: white" href="Account.jsp?CustomerID=${sessionScope.user.idCustomer}"><i
                                            class="fa-solid fa-user"></i> ${sessionScope.user.name}</a>
                                </li>   
                            </c:if>
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
                        var link = 'searchmovie?Search=' + query;
                        window.location.href = link;
                    }
                </script>
            </div>
        </div>
        <div id="mobile-nav" data-prevent-default="true" data-mouse-events="true">
            <div class="mobail_nav_overlay"></div>
            <div class="mobile-nav-box">
                <div class="mobile-logo">
                    <a href="index.jsp" class="mobile-main-logo">
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
                            <option>Thước phim</option>
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
</body>
</html>
