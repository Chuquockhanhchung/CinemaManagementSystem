<%@ page import="java.util.ArrayList" %>
<%@ page import="dal.EventDAO" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8"/>
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <!--Template style -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="css/flaticon.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css"/>
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css"/>
    <link rel="stylesheet" type="text/css" href="css/dl-menu.css"/>
    <link rel="stylesheet" type="text/css" href="css/nice-select.css"/>
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="css/venobox.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/responsive.css"/>
    <link rel="stylesheet" id="theme-color" type="text/css" href="#"/>

    <link rel="stylesheet" type="text/css" href="css/movie_single.css"/>
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico"/>
    <link rel='stylesheet'
          href='https://cdn-uicons.flaticon.com/2.3.0/uicons-solid-straight/css/uicons-solid-straight.css'>

    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status">
        <img src="images/header/horoscope.gif" id="preloader_image" alt="loader">
    </div>
</div>

<!-- prs navigation Start -->
<%@include file="header.jsp" %>
<!-- prs navigation End -->
<!-- prs video top Start -->
<div class="prs_top_video_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="st_video_slider_inner_wrapper float_left">
                    <div class="st_video_slider_overlay"></div>
                    <div class="st_video_slide_sec float_left">
                        <a rel='external' href='h${sessionScope.movie.getTrailer()}' title='title'
                           class="test-popup-link">
                            <img src="${sessionScope.movie.getImage()}" alt="img" style="width: 150px; height: auto;">
                        </a>
                        <h3>${sessionScope.movie.getName()}</h3>
                        <p>${sessionScope.movie.getName()}</p>
                        <h4>${sessionScope.language}</h4>
                        <h5><span>2d</span> <span>3d</span> <span>D 4DX</span> <span>Imax 3D</span></h5>
                    </div>
                    <div class="st_video_slide_social float_left">
                        <%--                            <div class="st_slider_rating_btn_heart st_slider_rating_btn_heart_5th">--%>
                        <%--                                <h5><i class="fa fa-heart"></i> 85%</h5>--%>
                        <%--                                <h4>52,291 votes</h4>--%>
                        <%--                            </div>--%>

                        <div class="st_video_slide_social_right float_left">
                            <ul>
                                <li data-animation="animated fadeInUp" class=""><i
                                        class="far fa-calendar-alt"></i> ${sessionScope.date}</li>
                                <li data-animation="animated fadeInUp" class=""><i
                                        class="far fa-clock"></i> ${sessionScope.movie.getDuration()} phút
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    Customer us = (Customer) session.getAttribute("user");
%>
<!-- prs video top End -->
<div class="container mt-5">
    <!-- Modal -->
    <div id="reviewModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Đánh giá ${sessionScope.movie.getName()}</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form id="reviewForm" action="added" method="post">
                    <div class="modal-body">
                        <div class="d-flex">
                            <img src="${sessionScope.movie.getImage()}" style="width: 100px; margin-right: 20px;">
                            <div>
                                <div class="stars">
                                    <input type="radio" id="star1.5" name="rating" value="5">
                                    <label for="star1.5">&#9733;</label>
                                    <input type="radio" id="star1.4" name="rating" value="4">
                                    <label for="star1.4">&#9733;</label>
                                    <input type="radio" id="star1.3" name="rating" value="3">
                                    <label for="star1.3">&#9733;</label>
                                    <input type="radio" id="star1.2" name="rating" value="2">
                                    <label for="star1.2">&#9733;</label>
                                    <input type="radio" id="star1.1" name="rating" value="1">
                                    <label for="star1.1">&#9733;</label>

                                </div>
                                <textarea id="reviewText"
                                          placeholder="Đánh giá của bạn về ${sessionScope.movie.getName()}"></textarea>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <%
                            if (us == null) {
                        %>
                        <button  class="btn btn-primary"><a href="#"
                                                                         onclick="alert('Please log in to book tickets.'); return false;">
                            <i class="btn btn-primary">Đăng</i>
                        </a></button>

                        <% } else { %>
                        <button type="submit" class="btn btn-primary">Đăng</button>
                        <% } %>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script>
    document.getElementById('reviewForm').addEventListener('submit', function (event) {
        event.preventDefault(); // Ngăn chặn form submit mặc định
        function isUserLoggedIn() {
            // Thực hiện kiểm tra session (có thể dựa trên cookie, local storage, hoặc API)
            // Giả sử chúng ta sử dụng localStorage để lưu trạng thái đăng nhập
            return document.cookie.split(';').some((item) => item.trim().startsWith('em='));
        }

        if (!isUserLoggedIn()) {
            alert('Bạn cần đăng nhập để thực hiện thao tác này.');
            // Hiển thị popup đăng nhập hoặc chuyển hướng đến trang đăng nhập

            return false;
        }
        var rating = document.querySelector('input[name="rating"]:checked');
        var ratingValue = rating ? rating.value : null;
        var review = document.getElementById('reviewText').value;

        if (ratingValue && review) {
            // Tạo một chuỗi query parameter từ dữ liệu form
            var queryParams = 'rating=' + encodeURIComponent(ratingValue) + '&review=' + encodeURIComponent(review);

            // Tạo URL mới để chuyển hướng đến
            var redirectUrl = 'added?' + queryParams;

            // Chuyển hướng trang
            window.location.href = redirectUrl;
        } else {
            alert('Vui lòng chọn đánh giá và viết nhận xét của bạn.');
        }
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const stars = document.querySelectorAll('.stars label');

        stars.forEach(star => {
            star.addEventListener('click', function () {
                // Remove checked class from all stars
                stars.forEach(s => s.classList.remove('checked'));

                // Get the value of the selected star
                const ratingValue = this.previousElementSibling.value;

                // Add checked class to the selected star and all previous stars
                stars.forEach(s => {
                    if (s.previousElementSibling.value <= ratingValue) {
                        s.classList.add('checked');
                    }
                });
            });
        });
    });
</script>
<!-- st slider rating wrapper Start -->
<div class="st_slider_rating_main_wrapper float_left">
    <div class="container">
        <div class="col-md-7 st_slider_rating_left">
            <div class="st_rating_box">
                <fieldset class="rating">
                    <h3 id="ratingDisplay">${sessionScope.rating}</h3>
                    <input type="radio" name="rating" id="star5" value="5"/><label for="star5" class="full"
                                                                                   title="5 stars"></label>
                    <input type="radio" name="rating" id="star4half" value="4.5"/><label for="star4half" class="half"
                                                                                         title="4.5 stars"></label>
                    <input type="radio" name="rating" id="star4" value="4"/><label for="star4" class="full"
                                                                                   title="4 stars"></label>
                    <input type="radio" name="rating" id="star3half" value="3.5"/><label for="star3half" class="half"
                                                                                         title="3.5 stars"></label>
                    <input type="radio" name="rating" id="star3" value="3"/><label for="star3" class="full"
                                                                                   title="3 stars"></label>
                    <input type="radio" name="rating" id="star2half" value="2.5"/><label for="star2half" class="half"
                                                                                         title="2.5 stars"></label>
                    <input type="radio" name="rating" id="star2" value="2"/><label for="star2" class="full"
                                                                                   title="2 stars"></label>
                    <input type="radio" name="rating" id="star1half" value="1.5"/><label for="star1half" class="half"
                                                                                         title="1.5 stars"></label>
                    <input type="radio" name="rating" id="star1" value="1"/><label for="star1" class="full"
                                                                                   title="1 star"></label>
                    <input type="radio" name="rating" id="starhalf" value="0.5"/><label for="starhalf" class="half"
                                                                                        title="0.5 stars"></label>

                </fieldset>
                <script>
                    // Lấy giá trị rating từ sessionScope.rating
                    var rating = ${sessionScope.rating}; // Chú ý: cần phải truyền giá trị đúng từ server

                    // Hiển thị giá trị rating
                    document.getElementById('ratingDisplay').textContent = rating;

                    // Thiết lập trạng thái checked cho các radio button dựa trên giá trị rating
                    var radios = document.querySelectorAll('input[name="rating"]');
                    radios.forEach(function (radio) {
                        if (radio.value >= rating) {
                            radio.checked = true;
                        }
                    });

                    function filterMovie(date) {
                        const movies = document.querySelectorAll('.movie');
                        movies.forEach(movie => {
                            if (movie.getAttribute('data-date') === date) {
                                movie.classList.add('display');
                            } else {
                                movie.classList.remove('display');
                            }
                        })
                    }
                </script>
                <h4>Đánh Giá Của Khách Hàng</h4>

            <div class="st_rating_box st_rating_box2" hidden="">
                <fieldset class="rating">
                    <h3>4.5&nbsp;&nbsp;</h3>
                    <input type="radio" name="rating" value="5"/>
                    <label class="full" title="5 stars"></label>
                    <input type="radio" name="rating" value="4 and a half"/>
                    <label class="half" title="4.5 stars"></label>
                    <input type="radio" name="rating" value="4"/>
                    <label class="full" title="4 stars"></label>
                    <input type="radio" name="rating" value="3 and a half"/>
                    <label class="half" title="3.5 stars"></label>
                    <input type="radio" name="rating" value="3"/>
                    <label class="full" title="3 stars"></label>
                    <input type="radio" name="rating" value="2 and a half"/>
                    <label class="half" title="2.5 stars"></label>
                    <input type="radio" name="rating" value="2"/>
                    <label class="full" title="2 stars"></label>
                    <input type="radio" name="rating" value="1 and a half"/>
                    <label class="half" title="1.5 stars"></label>
                    <input type="radio" name="rating" value="1"/>
                    <label class="full" title="1 star"></label>
                    <input type="radio" name="rating" value="half"/>
                    <label class="half" title="0.5 stars"></label>
                </fieldset>
                <h4>USERS RATING</h4>
            </div>
            <div class="st_rating_box st_rating_box2" hidden="">
                <fieldset class="rating">
                    <h3>0&nbsp;&nbsp;</h3>
                    <input type="radio" name="rating" value="5"/>
                    <label class="full" title="5 stars"></label>
                    <input type="radio" name="rating" value="4 and a half"/>
                    <label class="half" title="4.5 stars"></label>
                    <input type="radio" name="rating" value="4"/>
                    <label class="full" title="4 stars"></label>
                    <input type="radio" name="rating" value="3 and a half"/>
                    <label class="half" title="3.5 stars"></label>
                    <input type="radio" name="rating" value="3"/>
                    <label class="full" title="3 stars"></label>
                    <input type="radio" name="rating" value="2 and a half"/>
                    <label class="half" title="2.5 stars"></label>
                    <input type="radio" name="rating" value="2"/>
                    <label class="full" title="2 stars"></label>
                    <input type="radio" name="rating" value="1 and a half"/>
                    <label class="half" title="1.5 stars"></label>
                    <input type="radio" name="rating" value="1"/>
                    <label class="full" title="1 star"></label>
                    <input type="radio" name="rating" value="half"/>
                    <label class="half" title="0.5 stars"></label>
                </fieldset>
                <h4>RATE IT</h4>
            </div>
            <button type="button" class="btn btn-primary2" style="color: white; margin-left: 10px;" data-toggle="modal"
                    data-target="#reviewModal">
                Đánh Giá
            </button>
        </div>


            <%--                <div class="st_slider_rating_btn prs_animate_btn1">--%>
            <%--                    <ul>--%>
            <%--                        <li data-animation="animated fadeInUp"><a onclick="bookMovie()" href="booking_movie?id=${sessionScope.movie.getId()}" class="button button--tamaya prs_upcom_main_btn" data-text="Đặt Vé Ngay"><span>Đặt Vé Ngay</span></a>--%>
            <%--                        </li>--%>
            <%--                    </ul>--%>
            <%--                </div>--%>
            <%--                <div class="st_slider_rating_btn_heart">--%>
            <%--                    <h5><i class="fa fa-heart"></i> 85%</h5>--%>
            <%--                    <h4>52,291 lượt bình chọn</h4>--%>
            <%--                </div>--%>
        </div>
        <div class="col-md-5 st_slider_rating_right">
            <div class="st_calender_tabs">
                <ul class="nav nav-tabs">

                    <c:choose>
                        <c:when test="${sessionScope.time != null && sessionScope.user != null}">
                            <c:forEach items="${sessionScope.time}" var="i">
                                <li class="schedule" onclick="filterMovie('${i.getTime()}')"
                                    style="border: 1px solid #ff4444; background-color: #ff4444; border-radius: 5px">
                                    <a data-toggle="tab"><span>${i.getDayName()}</span>
                                        <br> ${i.getDay()}/${i.getMonth()}</a>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${sessionScope.time}" var="i">
                                <li class="" onclick="alert('Vui lòng đăng nhập để đặt vé!');"
                                    style="border: 1px solid #555555; background-color: #555555; border-radius: 5px">
                                    <a data-toggle="tab"><span>${i.getDayName()}</span>
                                        <br> ${i.getDay()}/${i.getMonth()}</a>
                                </li>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </ul>
                <ul style="display:flex; list-style: none;flex-wrap:wrap ">
                    <c:if test="${sessionScope.showtime != null}">
                        <c:forEach items="${sessionScope.showtime}" var="i">
                            <li class="movie" data-date="${i.getDate()}"
                                style="border: 1px solid #fff; padding: 15px; margin: 15px 15px 0 0; background-color: white;border-radius: 8px;">
                                <p style="cursor: pointer" onclick="goToBooking('${i.getShowTimeID()}', '${sessionScope.movie.age}', '${sessionScope.user.DOB}')" >${i.getTime()}</p>
                                    <%--                                href="seat?showtimeId=${i.getShowTimeID()}"--%>
                            </li>
                        </c:forEach>

                    </c:if>



                </ul>

            </div>
        </div>

    </div>
</div>
<script>
    function bookMovie(movieID) {
        window.location.href = 'booking_movie?id=' + movieID;
    }
    function goToBooking(id,movie,age){
        let ageUser = getAge(age)
        let ageRequire = parseInt(movie.substring(1))
        if(ageRequire > ageUser){
            alert("Your age isn't enough")
        }
        else{
            window.location = "seat?showtimeId="+id
        }


    }
    function getAge(dateString)
    {

        var birthdate = new Date(dateString);

        var cur = new Date();
        var diff = cur-birthdate; // This is the difference in milliseconds
        var age = Math.floor(diff/31557600000);
        return age;
    }
</script>
<!-- st slider rating wrapper End -->
<!-- st slider sidebar wrapper Start -->

<div class="st_slider_index_sidebar_main_wrapper st_slider_index_sidebar_main_wrapper_md float_left">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="st_indx_slider_main_container float_left">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tab-content">
                                <div id="home1" class="tab-pane active">
                                    <c:if test="${sessionScope.movie != null}">
                                        <h1 style="font-size: 34px; font-family: inherit; color: #333333; margin-bottom: 20px; font-weight: 700">${sessionScope.movie.getName()}</h1>
                                        <ul style="display: flex; " class="blog-info">

                                            <c:forEach items="${sessionScope.movietype}" var="i">
                                                <li style="margin-right: 10px;"><i
                                                        style="font-size: 18px; color: #555555;"
                                                        class="fa fa-tags"></i> ${i.getType()} </li>
                                            </c:forEach>
                                            <li style="margin-right: 10px;"><i style="font-size: 18px; color: #555555;"
                                                                               class="fa fa-clock-o"></i>${sessionScope.movie.getDuration()}p
                                            </li>
                                        </ul>
                                        <ul style="display: flex;" class="blog-info">

                                        </ul>
                                    </c:if>


                                </div>

                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="prs_upcome_tabs_wrapper prs_upcome_tabs_wrapper_mss float_left">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#home" aria-controls="best"
                                                                              role="tab" data-toggle="tab">Nội Dung
                                        Chính</a>
                                    </li>
                                    <li role="presentation"><a href="#menu2" aria-controls="trand" role="tab"
                                                               data-toggle="tab">Bình Luận & Phản Hồi</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="tab-content">
                                <div id="home" class="tab-pane active">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="st_md_summ_pera float_left">
                                                <h5>Nội Dung Chính</h5>
                                                <p>${sessionScope.movie.getDescription()}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="st_md_actor_slider float_left">
                                                <h5 class="title">Dàn Diễn Viên</h5>
                                                <div class="owl-carousel owl-theme">

                                                    <%
                                                        ArrayList<Actor> actors = (ArrayList<Actor>) session.getAttribute("actors");
                                                        for (Actor actor : actors) {


                                                    %>

                                                    <div class="item">
                                                        <div class="st_summ_slider_cont float_left">
                                                            <img src="<%=actor.getPicture()%>" alt="img"
                                                                 style="width: 100% ;height: 50%; object-fit: cover">
                                                            <div class="detail">
                                                                <h4>
                                                                    <a href="#"><%=actor.getName()%>
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%
                                                        }
                                                    %>


                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div id="menu2" class="tab-pane fade">
                                    <c:choose>
                                        <c:when test="${not empty listf}">
                                            <c:forEach items="${listf}" var="f">
                                                <c:if test="${f.getRate() > 0}">
                                                    <div class="comment">
                                                        <div class="comment-header">
                                                            <img src="${f.getCustomerID().getPicture()}"
                                                                 alt="User Avatar">
                                                            <span>${f.getCustomerID().getName()}</span>
                                                            <span>${f.getRate()}</span>
                                                        </div>

                                                        <div class="comment-body">
                                                                ${f.getFeedback()}
                                                        </div>
                                                        <div class="replies-toggle-btn reply-btn"
                                                             onclick="toggleReplyForm(${f.getFeedbackID()})">Phản hồi
                                                        </div>


                                                        <div class="reply-form" id="reply-form-${f.getFeedbackID()}"
                                                             style="display: none;">
                                                            <textarea id="reply-text-${f.getFeedbackID()}" rows="3"
                                                                      cols="50"
                                                                      placeholder="Viết phản hồi của bạn..."></textarea><br>
                                                            <button type="button"
                                                                    onclick="submitReply(${f.getFeedbackID()})">Đăng
                                                            </button>
                                                        </div>

                                                        <!-- Button to toggle replies section -->
                                                        <c:if test="${f.getRelpies() != null}">
                                                            <div class="replies-toggle-btn reply-btn"
                                                                 onclick="toggleReplies(${f.getFeedbackID()})">Hiển
                                                                thị/Tắt phản hồi
                                                            </div>
                                                        </c:if>

                                                        <c:if test="${f.getCustomerID().getIdCustomer() eq sessionScope.user.getIdCustomer()}">
                                                            <div class="replies-toggle-btn reply-btn"
                                                                 onclick="deleteFeedback(${f.getFeedbackID()})">Xóa
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${f.getCustomerID().getIdCustomer() eq sessionScope.user.getIdCustomer()}">
                                                            <div class="replies-toggle-btn reply-btn"
                                                                 onclick="editFeedback(${f.getFeedbackID()})">Sửa
                                                            </div>
                                                        </c:if>
                                                        <!-- Replies section -->
                                                        <c:set var="replies" value="${f.getRelpies()}" scope="request"/>
                                                        <div class="replies-section pl-4"
                                                             id="replies-section-${f.getFeedbackID()}"
                                                             style="display: none;">
                                                            <jsp:include page="Replies.jsp"/>
                                                        </div>
                                                        <!-- End of Replies section -->
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <p>Không có phản hồi.</p>
                                        </c:otherwise>
                                    </c:choose>

                                </div>

                                <script>
                                    function deleteFeedback(feedbackId) {
                                        if (confirm('Bạn có chắc chắn muốn xóa?')) {
                                            window.location.href = 'deletefeedback?feedbackId=' + feedbackId;
                                        }
                                    }

                                    function toggleReplyForm(feedbackID) {
                                        var form = document.getElementById('reply-form-' + feedbackID);
                                        if (form.style.display === 'none') {
                                            form.style.display = 'block';
                                        } else {
                                            form.style.display = 'none';
                                        }
                                    }

                                    function toggleReplies(feedbackID) {
                                        var section = document.getElementById('replies-section-' + feedbackID);
                                        if (section.style.display === 'none') {
                                            section.style.display = 'block';
                                        } else {
                                            section.style.display = 'none';
                                        }
                                    }


                                </script>

                            </div>

                            <script>

                                function toggleReplyForm(feedbackId) {
                                    const form = document.getElementById('reply-form-' + feedbackId);
                                    form.style.display = form.style.display === 'none' ? 'block' : 'none';
                                }

                                function submitReply(feedbackId) {
                                    const replyTextElement = document.getElementById('reply-text-' + feedbackId);

                                    if (replyTextElement) {
                                        let replyText = replyTextElement.value.trim();
                                        console.log("Reply Text:", replyText);  // Debug: In giá trị reply text

                                        if (!replyText) {
                                            alert('Vui lòng nhập phản hồi của bạn.');
                                            return false;  // Ngăn form gửi đi nếu replyText rỗng
                                        }
                                        console.log(replyText + "+" + feedbackId)
                                        // Tạo URL với các tham số query string
                                        let url = `added2?replyText=` + replyText + `&feedbackId=` + feedbackId;
                                        // Thay đổi window location để gửi dữ liệu
                                        console.log(url);
                                        window.location.href = url;

                                        return false;  // Ngăn form gửi đi theo cách thường
                                    } else {
                                        console.error('Không tìm thấy phần tử textarea với ID:', 'reply-text-' + feedbackId);
                                        return false;  // Ngăn form gửi đi nếu không tìm thấy reply-text
                                    }
                                }
                            </script>


                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- st slider sidebar wrapper End -->

<!-- prs patner slider Start -->

<!-- prs patner slider End -->
<%@include file="footer.jsp" %>
<!-- prs footer Wrapper End -->

<!--main js file start-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="js/jquery_min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/jquery.dlmenu.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/venobox.min.js"></script>
<script src="js/smothscroll_part1.js"></script>
<script src="js/smothscroll_part2.js"></script>
<script src="js/plugin/rs_slider/jquery.themepunch.revolution.min.js"></script>
<script src="js/plugin/rs_slider/jquery.themepunch.tools.min.js"></script>
<script src="js/plugin/rs_slider/revolution.addon.snow.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.actions.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.carousel.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.kenburn.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.layeranimation.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.migration.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.navigation.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.parallax.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.slideanims.min.js"></script>
<script src="js/plugin/rs_slider/revolution.extension.video.min.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript">
    var onloadCallback = function () {
        alert("grecaptcha is ready!");
    };
</script>
<!--main js file end-->
</body>

</html>