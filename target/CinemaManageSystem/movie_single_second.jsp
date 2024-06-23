

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
                            <a rel='external' href='' title='title' class="test-popup-link">
								<img src="${sessionScope.movie.getImage()}" alt="img" style="width: 300px; height: auto;">
							</a>
                            <h3>Aquaman</h3>
                            <p>ENGLISH, HINDI, TAMIL</p>
                            <h4>ACTION | Adventure | Fantasy</h4>
                            <h5><span>2d</span> <span>3d</span> <span>D 4DX</span> <span>Imax 3D</span></h5>
                        </div>
                        <div class="st_video_slide_social float_left">
                            <div class="st_slider_rating_btn_heart st_slider_rating_btn_heart_5th">
                                <h5><i class="fa fa-heart"></i> 85%</h5>
                                <h4>52,291 votes</h4>
                            </div>
                            <div class="st_video_slide_social_left float_left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-youtube"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="st_video_slide_social_right float_left">
                                <ul>
                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-calendar-alt"></i> 14 Dec, 2022</li>
                                    <li data-animation="animated fadeInUp" class=""><i class="far fa-clock"></i> 2 hrs 23 mins</li>
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
        <h2>Đánh Giá Phim</h2>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary2" style="color: white" data-toggle="modal" data-target="#reviewModal">
           Đánh Giá
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
                            <img src="${sessionScope.movie.getImage()}"  style="width: 100px; margin-right: 20px;">
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
            function isUserLoggedIn() {
                // Thực hiện kiểm tra session (có thể dựa trên cookie, local storage, hoặc API)
                // Giả sử chúng ta sử dụng localStorage để lưu trạng thái đăng nhập
                return !!localStorage.getItem('user');
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
            <div class="st_slider_rating_left">
                <div class="st_rating_box">
                    <fieldset class="rating">
                        <h3>3</h3>
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
                    <h4>CRITICS RATING</h4>
                </div>
                <div class="st_rating_box st_rating_box2">
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
                <div class="st_rating_box st_rating_box2">
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
                        <li data-animation="animated fadeInUp"><a href="#" class="button button--tamaya prs_upcom_main_btn" data-text="book now"><span>book now</span></a>
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
    <!-- st slider rating wrapper End -->
    <!-- st slider sidebar wrapper Start -->
    <div class="st_slider_index_sidebar_main_wrapper st_slider_index_sidebar_main_wrapper_md float_left">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="st_indx_slider_main_container float_left">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="ne_busness_main_slider_wrapper float_left">
                                            <div class="ne_recent_heading_main_wrapper ne_recent_heading_main_wrapper_index_II float_left">
                                                <h2>TRENDING STORIES</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="st_md_ts_main_sec float_left">
                                            <img src="images/content/md1.png" alt="img">
                                            <p><a href="#">Aquaman: Film Review - Makes A Refreshing Spl...</a>
                                            </p> <span>14 December</span>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="st_md_ts_main_sec float_left">
                                            <img src="images/content/md2.png" alt="img">
                                            <p><a href="#">Here's Proof That the Hype Is Real for James ...</a>
                                            </p> <span>25 December</span>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="st_md_ts_main_sec float_left">
                                            <img src="images/content/md3.png" alt="img">
                                            <p><a href="#">The Epic Cast of Aquaman Will Definitely Make...</a>
                                            </p> <span>28 December</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="prs_upcome_tabs_wrapper prs_upcome_tabs_wrapper_mss float_left">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="best" role="tab" data-toggle="tab">Summary</a>
                                        </li>
                                        <li role="presentation"><a href="#menu2" aria-controls="trand" role="tab" data-toggle="tab">Behind The Scenes</a>
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
                                                    <p>Immediately following the events of Justice League, Arthur Curry, the reluctant heir to the underwater kingdom of Atlantis, tries to balance the world of the surface dwellers and his own people. But
                                                        where does his loyalty lie? In the water or on the land? While Aquaman finds himself at crossroads with these questions, closer to home a known foe tries to dethrone him.</p>
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
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc1.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc1.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc2.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc2.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc3.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc3.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc4.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc4.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc5.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc5.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                <div class="prs_ms_scene_slider_img prs_ms_scene_slider_img22">
                                                    <img src="images/content/movie_single/sc6.jpg" alt="scene_img">
                                                    <div class="prs_ms_scene_img_overlay"> <a href="images/content/movie_single/sc6.jpg" class="venobox info" data-title="PORTFOLIO TITTLE" data-gall="gall12"><i class="flaticon-tool"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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

            // Validate email
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Validate phone
            if (!phonePattern.test(phone)) {
                alert("Please enter a valid phone number (10 digits).");
                return false;
            }

            // Validate name
            if (name.trim() === "") {
                alert("Please enter your name.");
                return false;
            }

            // Validate passwords
            if (pass1 === "" || pass2 === "") {
                alert("Please enter and confirm your password.");
                return false;
            }

            if (pass1 !== pass2) {
                alert("Passwords do not match.");
                return false;
            }

            return true;
        }
    </script>
    <!-- st login wrapper End -->
    <!--main js file start-->
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