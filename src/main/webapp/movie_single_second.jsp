

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <title>Movie Pro Responsive HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="description" content="Movie Pro" />
    <meta name="keywords" content="Movie Pro" />
    <meta name="author" content="" />
    <meta name="MobileOptimized" content="320" />
    <!--Template style -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="css/flaticon.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css" />
    <link rel="stylesheet" type="text/css" href="css/dl-menu.css" />
    <link rel="stylesheet" type="text/css" href="css/nice-select.css" />
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="css/venobox.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel="stylesheet" id="theme-color" type="text/css" href="#" />
    <!-- favicon links -->
    <link rel="shortcut icon" type="image/png" href="images/header/favicon.ico" />
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-solid-straight/css/uicons-solid-straight.css'>
    
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.3.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
    <style>
        .replies-section {
            margin-top: 10px; /* Khoảng cách giữa phần replies-section và các phần khác */
        }

        .comment {
            border: 1px solid #ccc; /* Viền đơn giản cho mỗi comment */
            padding: 10px; /* Khoảng cách lề bên trong mỗi comment */
            margin-bottom: 10px; /* Khoảng cách giữa các comment */
        }

        .comment-header {
            display: flex; /* Sắp xếp các thành phần của comment theo chiều ngang */
            align-items: center; /* Căn giữa các thành phần */
            margin-bottom: 5px; /* Khoảng cách giữa header và body của comment */
        }

        .comment-header img {
            width: 40px; /* Độ rộng của ảnh avatar */
            height: 40px; /* Chiều cao của ảnh avatar */
            border-radius: 50%; /* Làm tròn góc cho ảnh */
            margin-right: 10px; /* Khoảng cách giữa ảnh và các thành phần khác trong header */
        }

        .comment-header span {
            margin-right: 10px; /* Khoảng cách giữa các phần tử span trong header */
            font-weight: bold; /* Đậm chữ cho tên và rate */
        }

        .comment-body {
            margin-bottom: 5px; /* Khoảng cách giữa phần body và footer của comment */
        }

        .reply-btn {
            cursor: pointer; /* Biến con trỏ thành dấu nhấp nháy khi di chuột qua button */
            color: blue; /* Màu sắc của button reply */
            margin-top: 5px; /* Khoảng cách giữa button reply và phần body của comment */
        }

        .reply-form {
            margin-top: 5px; /* Khoảng cách giữa form reply và button reply */
        }

        textarea {
            width: 100%; /* Chiều rộng của textarea */
            padding: 5px; /* Khoảng cách lề bên trong textarea */
            margin-bottom: 5px; /* Khoảng cách giữa các phần tử */
        }

        button {
            padding: 5px 10px; /* Khoảng cách lề bên trong button */
            cursor: pointer; /* Biến con trỏ thành dấu nhấp nháy khi di chuột qua button */
            background-color: #007bff; /* Màu nền của button */
            color: white; /* Màu chữ của button */
            border: none; /* Không có đường viền */
            border-radius: 5px; /* Làm tròn góc cho button */
        }

        button:hover {
            background-color: #0056b3; /* Màu nền của button khi di chuột qua */
        }
        body {
            font-family: Arial, sans-serif;
        }
        .comment {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .comment-header {
            display: flex;
            align-items: center;
        }
        .comment-header img {
            border-radius: 50%;
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }
        .comment-body {
            margin: 10px 0;
        }
        .reply-btn {
            cursor: pointer;
            color: blue;
            text-decoration: underline;
            margin-top: 10px;
            display: inline-block;
        }
        .comment-replies {
            display: block !important; /* Sử dụng !important để đảm bảo quy tắc hiển thị được ưu tiên */
        }
        .reply-form {
            display: none;
            margin-top: 10px;
        }
        .feedback-container {
            margin-top: 20px;
        }

        .feedback-item {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }

        .feedback-item h4 {
            margin-top: 0;
        }

        .feedback-item p {
            margin-bottom: 5px;
        }

        .feedback-item em {
            font-style: italic;
        }
        .stars {
            display: flex;
            gap: 5px;
        }
        .stars input {
            display: none;
        }
        .stars label {
            font-size: 30px;
            color: lightgray;
            cursor: pointer;
        }
        .stars input:checked ~ label {
            color: gold;
        }
        .stars label:hover,
        .stars label:hover ~ label {
            color: gold;
        }
        .stars input:checked ~ label:hover,
        .stars input:checked ~ label:hover ~ label {
            color: gold;
        }
        textarea {
            width: 100%;
            box-sizing: border-box; /* Ensures padding and border are included in the element's total width and height */
            padding: 10px;
        }
        .spoiler-checkbox {
            display: flex;
            align-items: center;
        }
        .stars {
            display: flex;
            flex-direction: row-reverse;
            justify-content: flex-end;
        }

        .stars input[type="radio"] {
            display: none;
        }

        .stars label {
            font-size: 30px;
            color: grey;
            cursor: pointer;
        }

        .stars label.checked {
            color: gold;
        }
        .modal-body {
            display: flex;
            width: 80%;
        }
        .d-flex {
            display: flex;
            width: 100%;
        }
        /* General modal styling */
        .modal-content {
            border-radius: 8px;
            overflow: hidden;
            background-color: #1b1b1b; /* Dark background to match the theme */
            color: #fff; /* White text for contrast */
        }

        .modal-header {
            background-color: #e50914; /* Bright red to match the header */
            border-bottom: none;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
        }

        .modal-title {
            font-size: 1.5em;
            margin: 0;
        }

        .close {
            color: #fff;
            opacity: 1;
            font-size: 1.5em;
        }

        .modal-body {
            display: flex;
            flex-direction: column;
            width: 100%;
            padding: 20px;
        }

        .d-flex {
            display: flex;
            align-items: flex-start;
            width: 100%;
        }

        img {
            border-radius: 8px;
            margin-right: 20px;
        }

        .content {
            flex-grow: 1;
        }

        .stars {
            display: flex;
            justify-content: flex-start;
            margin-bottom: 10px;
        }

        .stars input[type="radio"] {
            display: none;
        }

        .stars label {
            font-size: 30px;
            color: grey;
            cursor: pointer;
            margin-right: 5px;
        }

        .stars label.checked {
            color: #e50914; /* Bright red for checked stars */
        }

        textarea {
            width: 100%; /* Full width */
            height: 100px;
            box-sizing: border-box; /* Ensures padding and border are included in the element's total width and height */
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #333;
            background-color: #2a2a2a; /* Dark background for textarea */
            color: #fff;
            resize: vertical; /* Allows the user to resize the textarea vertically */
            font-size: 1em;
        }

        .modal-footer {
            background-color: #1b1b1b; /* Matching the modal body background */
            border-top: none;
            display: flex;
            justify-content: flex-end;
            padding: 15px 20px;
        }

        .btn-primary {
            background-color: #e50914; /* Bright red for buttons */
            border: none;
            margin-right: 10px;
        }
        .btn-primary2 {
            background-color: #e50914; /* Bright red for buttons */
            border: none;
            padding: 15px 30px; /* Increase padding for a larger button */
            font-size: 1.25em; /* Increase font size */
            border-radius: 8px; /* Rounded corners */
            font-weight: bold; /* Make the text bold */
            transition: background-color 0.3s ease; /* Smooth transition for background color */
        }

        .btn-secondary {
            background-color: #333; /* Dark grey for secondary button */
            border: none;
        }
        /* General styles for the feedback section */
        #menu2 {
            margin: 20px 0;
            font-family: Arial, sans-serif;
        }

        /* Styles for individual comments */
        .comment {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        /* Styles for the comment header */
        .comment-header {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .comment-header img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .comment-header span {
            margin-right: 10px;
            font-weight: bold;
        }

        /* Styles for the comment body */
        .comment-body {
            margin-bottom: 10px;
        }

        /* Styles for the reply button */
        .reply-btn {
            display: inline-block;
            padding: 5px 10px;
            color: white;
            background-color: #ff3e3e;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 0.9em;
            margin-bottom: 10px;
        }

        /* Styles for the reply form */
        .reply-form {
            margin-top: 10px;
        }

        .reply-form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            resize: vertical;
        }

        .reply-form button {
            display: inline-block;
            padding: 5px 10px;
            color: white;
            background-color: #ff3e3e;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 0.9em;
            margin-top: 5px;
        }

        /* Styles for the replies toggle button */
        .replies-toggle-btn {
            display: inline-block;
            padding: 5px 10px;
            color: #ff3e3e;
            background-color: transparent;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 0.9em;
            margin-top: 10px;
        }

        /* Styles for the replies section */
        .replies-section {
            margin-top: 15px;
            padding-left: 20px;
            border-left: 2px solid #ddd;
        }

        /* Add some responsiveness */
        @media (max-width: 600px) {
            .comment-header {
                flex-direction: column;
                align-items: flex-start;
            }

            .comment-header img {
                margin-bottom: 5px;
            }

            .reply-btn, .replies-toggle-btn {
                width: 100%;
                text-align: center;
            }

            .reply-form textarea {
                width: 100%;
            }
        }

    </style>
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
                            <a rel='external' href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title' class="test-popup-link">
								<img src="${sessionScope.movie.getImge()}" alt="img" style="width: 300px; height: auto;">
							</a>
                            <h3>${sessionScope.movie.getName()}</h3>
                            <p>${sessionScope.movie.getName()}</p>
                            <h4>${sessionScope.language}</h4>
                            <h5><span>2d</span> <span>3d</span> <span>D 4DX</span> <span>Imax 3D</span></h5>
                        </div>
                        <div class="st_video_slide_social float_left">
                            <div class="st_slider_rating_btn_heart st_slider_rating_btn_heart_5th">
                                <h5><i class="fa fa-heart"></i> 85%</h5>
                                <h4>52,291 votes</h4>
                            </div>

                            <div class="st_video_slide_social_right float_left">
                                <ul>
                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-calendar-alt"></i> ${sessionScope.date}</li>
                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-clock"></i> ${sessionScope.movie.getDuration()} phút</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs video top End -->
    <div class="container mt-5">
        <h2>Community Feedback</h2>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary2" style="color: white" data-toggle="modal" data-target="#reviewModal">
            Write a Review
        </button>

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
                        <div class="d-flex" >
                            <img src="${sessionScope.movie.getImge()}"  style="width: 100px; margin-right: 20px;">
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
                                <textarea id="reviewText" placeholder="Đánh giá của bạn về ${sessionScope.movie.getName()}"></textarea>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" >Đăng</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    </div>
                        </form>
                </div>
            </div>
        </div>
    </div>


    <script>
        document.getElementById('reviewForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Ngăn chặn form submit mặc định

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
            <div class="st_slider_rating_left">
                <div class="st_rating_box">
                    <fieldset class="rating">
                        <h3 id="ratingDisplay">${sessionScope.rating}</h3>
                        <input type="radio" name="rating" id="star5" value="5" /><label for="star5" class="full" title="5 stars"></label>
                        <input type="radio" name="rating" id="star4half" value="4.5" /><label for="star4half" class="half" title="4.5 stars"></label>
                        <input type="radio" name="rating" id="star4" value="4" /><label for="star4" class="full" title="4 stars"></label>
                        <input type="radio" name="rating" id="star3half" value="3.5" /><label for="star3half" class="half" title="3.5 stars"></label>
                        <input type="radio" name="rating" id="star3" value="3" /><label for="star3" class="full" title="3 stars"></label>
                        <input type="radio" name="rating" id="star2half" value="2.5" /><label for="star2half" class="half" title="2.5 stars"></label>
                        <input type="radio" name="rating" id="star2" value="2" /><label for="star2" class="full" title="2 stars"></label>
                        <input type="radio" name="rating" id="star1half" value="1.5" /><label for="star1half" class="half" title="1.5 stars"></label>
                        <input type="radio" name="rating" id="star1" value="1" /><label for="star1" class="full" title="1 star"></label>
                        <input type="radio" name="rating" id="starhalf" value="0.5" /><label for="starhalf" class="half" title="0.5 stars"></label>

                    </fieldset>
                    <script>
                        // Lấy giá trị rating từ sessionScope.rating
                        var rating = ${sessionScope.rating}; // Chú ý: cần phải truyền giá trị đúng từ server

                        // Hiển thị giá trị rating
                        document.getElementById('ratingDisplay').textContent = rating;

                        // Thiết lập trạng thái checked cho các radio button dựa trên giá trị rating
                        var radios = document.querySelectorAll('input[name="rating"]');
                        radios.forEach(function(radio) {
                            if (radio.value >= rating) {
                                radio.checked = true;
                            }
                        });
                    </script>
                    <h4>USERS RATING</h4>
                </div >
                <div class="st_rating_box st_rating_box2" hidden="">
                    <fieldset class="rating">
                        <h3>4.5&nbsp;&nbsp;</h3>
                        <input type="radio" name="rating" value="5" />
                        <label class="full" title="5 stars"></label>
                        <input type="radio" name="rating" value="4 and a half" />
                        <label class="half" title="4.5 stars"></label>
                        <input type="radio" name="rating" value="4" />
                        <label class="full" title="4 stars"></label>
                        <input type="radio" name="rating" value="3 and a half" />
                        <label class="half" title="3.5 stars"></label>
                        <input type="radio" name="rating" value="3" />
                        <label class="full" title="3 stars"></label>
                        <input type="radio" name="rating" value="2 and a half" />
                        <label class="half" title="2.5 stars"></label>
                        <input type="radio" name="rating" value="2" />
                        <label class="full" title="2 stars"></label>
                        <input type="radio" name="rating" value="1 and a half" />
                        <label class="half" title="1.5 stars"></label>
                        <input type="radio" name="rating" value="1" />
                        <label class="full" title="1 star"></label>
                        <input type="radio" name="rating" value="half" />
                        <label class="half" title="0.5 stars"></label>
                    </fieldset>
                    <h4>USERS RATING</h4>
                </div>
                <div class="st_rating_box st_rating_box2" hidden="">
                    <fieldset class="rating">
                        <h3>0&nbsp;&nbsp;</h3>
                        <input type="radio" name="rating" value="5" />
                        <label class="full" title="5 stars"></label>
                        <input type="radio" name="rating" value="4 and a half" />
                        <label class="half" title="4.5 stars"></label>
                        <input type="radio" name="rating" value="4" />
                        <label class="full" title="4 stars"></label>
                        <input type="radio" name="rating" value="3 and a half" />
                        <label class="half" title="3.5 stars"></label>
                        <input type="radio" name="rating" value="3" />
                        <label class="full" title="3 stars"></label>
                        <input type="radio" name="rating" value="2 and a half" />
                        <label class="half" title="2.5 stars"></label>
                        <input type="radio" name="rating" value="2" />
                        <label class="full" title="2 stars"></label>
                        <input type="radio" name="rating" value="1 and a half" />
                        <label class="half" title="1.5 stars"></label>
                        <input type="radio" name="rating" value="1" />
                        <label class="full" title="1 star"></label>
                        <input type="radio" name="rating" value="half" />
                        <label class="half" title="0.5 stars"></label>
                    </fieldset>
                    <h4>RATE IT</h4>
                </div>
            </div>
            <div class="st_slider_rating_right">
                <div class="st_slider_rating_btn prs_animate_btn1">
                    <ul>
                        <li data-animation="animated fadeInUp"><a onclick="bookMovie()" href="booking_movie?id=${sessionScope.movie.getId()}" class="button button--tamaya prs_upcom_main_btn" data-text="book now"><span>book now</span></a>
                        </li>
                    </ul>
                </div>
                <div class="st_slider_rating_btn_heart">
                    <h5><i class="fa fa-heart"></i> 85%</h5>
                    <h4>52,291 votes</h4>
                </div>
            </div>
        </div>
    </div>
    <script>
        function bookMovie(movieID) {
            window.location.href='booking_movie?id='+movieID;
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

                            </div>
                            <div class="col-md-12">
                                <div class="prs_upcome_tabs_wrapper prs_upcome_tabs_wrapper_mss float_left">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="best" role="tab" data-toggle="tab">Summary</a>
                                        </li>
                                        <li role="presentation"><a href="#menu2" aria-controls="trand" role="tab" data-toggle="tab">Comments</a>
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
                                                    <h5>SYNOPSIS</h5>
                                                    <p>${sessionScope.movie.getDescription()}</p>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="st_md_summ_client_slider float_left">
                                                    <p>CAST</p>
                                                    <div class="owl-carousel owl-theme">
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c1.jpg" alt="img">
                                                                <h4><a href="#">Jason Momoa</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c2.jpg" alt="img">
                                                                <h4><a href="#">Nicole Kidman</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c3.jpg" alt="img">
                                                                <h4><a href="#">Willem Dafoe</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c4.jpg" alt="img">
                                                                <h4><a href="#">Amber Heard</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="st_md_summ_client_slider float_left">
                                                    <p>Crew</p>
                                                    <div class="owl-carousel owl-theme">
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c5.jpg" alt="img">
                                                                <h4><a href="#">James Wan.</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c6.jpg" alt="img">
                                                                <h4><a href="#">Peter Safran</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c7.jpg" alt="img">
                                                                <h4><a href="#">Rob Cowan</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="st_summ_slider_cont float_left">
                                                                <img src="images/content/c8.jpg" alt="img">
                                                                <h4><a href="#">Geoff Johns</a></h4>
                                                                <h5>Actor</h5>
                                                                <h6>As Arthur</h6>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="menu2" class="tab-pane fade">
                                        <c:set var="currentUserId" value="${sessionScope.user.getId()}" />
                                        <c:choose>
                                            <c:when test="${not empty listf}">
                                                <c:forEach items="${listf}" var="f">
                                                    <c:if test="${f.getRate() > 0}">
                                                        <div class="comment">
                                                            <div class="comment-header">
                                                                <img src="${f.getCustomerID().getPicture()}" alt="User Avatar">
                                                                <span>${f.getCustomerID().getName()}</span>
                                                                <span>${f.getRate()}</span>
                                                            </div>
                                                            <div class="comment-body">
                                                                    ${f.getFeedback()}
                                                            </div>
                                                            <div class="reply-btn" onclick="toggleReplyForm(${f.getFeedbackID()})">Reply</div>
                                                            <c:if test="${f.getCustomerID().getId() eq currentUserId}">
                                                                <div class="delete-btn" onclick="deleteFeedback(${f.getFeedbackID()})">Delete</div>
                                                            </c:if>

                                                            <div class="reply-form" id="reply-form-${f.getFeedbackID()}" style="display: none;">
                                                                <textarea id="reply-text-${f.getFeedbackID()}" rows="3" cols="50" placeholder="Write your reply..."></textarea><br>
                                                                <button type="button" onclick="submitReply(${f.getFeedbackID()})">Submit</button>
                                                            </div>

                                                            <!-- Button to toggle replies section -->
                                                            <c:if test="${f.getRelpies() != null}">
                                                                <div class="replies-toggle-btn reply-btn" onclick="toggleReplies(${f.getFeedbackID()})">Show/Hide Replies</div>
                                                            </c:if>

                                                            <!-- Replies section -->
                                                            <c:set var="replies" value="${f.getRelpies()}" scope="request"/>
                                                            <div class="replies-section pl-4" id="replies-section-${f.getFeedbackID()}" style="display: none;">
                                                                <jsp:include page="Replies.jsp"/>
                                                            </div>
                                                            <!-- End of Replies section -->
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </c:when>
                                            <c:otherwise>
                                                <p>No feedback available.</p>
                                            </c:otherwise>
                                        </c:choose>

                                    </div>

                                    <script>
                                        function deleteFeedback(feedbackId) {
                                            if (confirm('Are you sure you want to delete this feedback?')) {
                                                window.location.href = 'DeleteFeedbackServlet?feedbackId=' + feedbackId;
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

                                        function submitReply(feedbackID) {
                                            // Implement the functionality to submit a reply
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
                                                console.log(replyText+"+"+feedbackId)
                                                // Tạo URL với các tham số query string
                                                let url = `added2?replyText=`+replyText+`&feedbackId=`+feedbackId;
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
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="st_ind_sidebar_right_wrapper float_left">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="st_ind_sidebar_md_textbox float_left">
                                    <p>Highest grossing movie in Mumbai in last 24 hours</p> <a href="#">Know Box Office Report</a>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="st_ind_sidebar_md_textbox_btn float_left">
                                    <ul>
                                        <li> <a href="#">Corporate booking &nbsp; <i class="fas fa-long-arrow-alt-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="st_ind_sidebar_advertiz st_ind_sidebar_advertiz_md float_left">
                                    <a href="#">
										<img src="images/index_III/add.png" alt="img">
									</a>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="st_ind_sidebar_advertiz_social st_video_slide_social_left  float_left">
                                    <h3>Profiles</h3>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook-f"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- st slider sidebar wrapper End -->
    <!-- prs theater Slider Start -->
    <div class="prs_theater_main_slider_wrapper">
        <div class="prs_theater_img_overlay"></div>
        <div class="prs_theater_sec_heading_wrapper">
            <h2>TOP MOVIES IN THEATRES</h2>
        </div>
        <div class="wrap-album-slider">
            <ul class="album-slider">
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up1.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up2.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up3.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up4.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up5.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up6.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
                <li class="album-slider__item">
                    <figure class="album">
                        <div class="prs_upcom_movie_box_wrapper">
                            <div class="prs_upcom_movie_img_box">
                                <img src="images/content/up7.jpg" alt="movie_img" />
                                <div class="prs_upcom_movie_img_overlay"></div>
                                <div class="prs_upcom_movie_img_btn_wrapper">
                                    <ul>
                                        <li><a href="#">View Trailer</a>
                                        </li>
                                        <li><a href="#">View Details</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="prs_upcom_movie_content_box">
                                <div class="prs_upcom_movie_content_box_inner">
                                    <h2><a href="#">Busting Car</a></h2>
                                    <p>Drama , Acation</p> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="prs_upcom_movie_content_box_inner_icon">
                                    <ul>
                                        <li><a href="movie_booking.jsp"><i class="fi fi-ss-ticket"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End album body -->
                    </figure>
                    <!-- End album -->
                </li>
                <!-- End album slider item -->
            </ul>
            <!-- End slider -->
        </div>
    </div>
    <!-- prs theater Slider End -->
    <!-- prs patner slider Start -->
    <div class="prs_patner_main_section_wrapper prs_patner_main_section_wrapper_ind3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_heading_section_wrapper">
                        <h2>Our Patner</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="prs_pn_slider_wraper">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p1.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p2.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p3.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p4.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p5.jpg" alt="patner_img">
                                </div>
                            </div>
                            <div class="item">
                                <div class="prs_pn_img_wrapper">
                                    <img src="images/content/p6.jpg" alt="patner_img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- prs patner slider End -->
           <%@include file="footer.jsp" %>
    <!-- prs footer Wrapper End -->
    <!-- st login wrapper Start -->
    <div class="modal fade st_pop_form_wrapper" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Log in</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email / Mobile Number</label>
                    <input type="text">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <input type="password" placeholder="Password">
                </div>
                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Forgot Password?</a></h3>
                </div>
                <div class="st_form_pop_login_btn float_left"> <a href="page-1-7_profile_settings.jsp">LOGIN</a>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>or</h4>
                </div>
                <div class="st_form_pop_facebook_btn float_left"> <a href="#"> Connect with Facebook</a>
                </div>
                <div class="st_form_pop_gmail_btn float_left"> <a href="#"> Connect with Google</a>
                </div>
                <div class="st_form_pop_signin_btn float_left">
                    <h4>Donâ€™t have an account? <a href="#" data-toggle="modal" data-target="#myModa3" target="_blank">Sign Up</a></h4>
                    <h5>I agree to the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></h5>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade st_pop_form_wrapper" id="myModa2" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper st_pop_form_heading_wrapper_fpass float_left">
                    <h3>Forgot Password</h3>
                    <p>We can help! All you need to do is enter your email ID and follow the instructions!</p>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email Address</label>
                    <input type="text">
                </div>
                <div class="st_form_pop_fpass_btn float_left"> <a href="#">Verify</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade st_pop_form_wrapper" id="myModa3" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="st_pop_form_heading_wrapper float_left">
                    <h3>Sign Up</h3>
                </div>
                <div class="st_profile_input float_left">
                    <label>Email / Mobile Number</label>
                    <input type="text">
                </div>
                <div class="st_profile__pass_input st_profile__pass_input_pop float_left">
                    <input type="password" placeholder="Password">
                </div>
                <div class="st_form_pop_fp float_left">
                    <h3><a href="#" data-toggle="modal" data-target="#myModa2" target="_blank">Forgot Password?</a></h3>
                </div>
                <div class="st_form_pop_login_btn float_left"> <a href="page-1-7_profile_settings.jsp">LOGIN</a>
                </div>
                <div class="st_form_pop_or_btn float_left">
                    <h4>or</h4>
                </div>
                <div class="st_form_pop_facebook_btn float_left"> <a href="#"><i class="fab fa-facebook-f"></i> Connect with Facebook</a>
                </div>
                <div class="st_form_pop_gmail_btn float_left"> <a href="#"><i class="fab fa-google-plus-g"></i> Connect with Google</a>
                </div>
                <div class="st_form_pop_signin_btn st_form_pop_signin_btn_signup float_left">
                    <h5>I agree to the <a href="#">Terms & Conditions</a> & <a href="#">Privacy Policy</a></h5>
                </div>
            </div>
        </div>
    </div>
    <!-- st login wrapper End -->
    <!--main js file start-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/jquery_min.js"></script>
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
    <script src="js/custom.js"></script>
    <!--main js file end-->
</body>

</html>