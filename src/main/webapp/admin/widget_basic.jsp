<%-- 
    Document   : widget_basic
    Created on : May 26, 2024, 9:19:32 PM
    Author     : datla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Title -->
        <title>Ventic - CodeIgniter Event Ticketing Admin Dashboard Template</title>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="author" content="DexignZone">
        <meta name="robots" content="">

        <meta name="keywords" content="admin, admin panel, admin dashboard, admin template, administration, analytics, bootstrap, bootstrap admin, coupon, deal, modern, responsive admin dashboard, ticket, ticket dashboard, ticket system">
        <meta name="description" content="Enhance your event management with Ventic - the ultimate Event Ticketing CodeIgniter Admin Template. Streamline ticket sales, track attendance, and manage your events effortlessly with this powerful and user-friendly template. Elevate your event experience today!">
        <meta property="og:title" content="Ventic - CodeIgniter Event Ticketing Admin Dashboard Template">
        <meta property="og:description" content="Enhance your event management with Ventic - the ultimate Event Ticketing CodeIgniter Admin Template. Streamline ticket sales, track attendance, and manage your events effortlessly with this powerful and user-friendly template. Elevate your event experience today! ">
        <meta property="og:image" content="https://ventic.w3itexpert.com/codeigniter/social-image.png">
        <meta name="format-detection" content="telephone=no">

        <!-- Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon icon -->

        <link rel="icon" type="image/png" sizes="16x16" href="public/assets/images/favicon.png">


        <link href="public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet" type="text/css" />

        <link href="public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />

        <link href="public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

        <link class="main-css" href="public/assets/css/style.css" rel="stylesheet" type="text/css" />

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
            <div class="nav-header">
                <a href="https://ventic.dexignzone.com/codeigniter/demo/index" class="brand-logo">
                    <svg class="logo-abbr"  width="54" height="54" viewBox="0 0 54 54" fill="none">
                    <rect class="svg-logo-rect" width="54" height="54" rx="14" fill="#0E8A74"/>
                    <path class="svg-logo-path" d="M13 17H24.016L31.802 34.544L38.33 17H40.948L31.972 40.8H23.54L13 17Z" fill="white"/>
                    </svg>
                    <svg  class="brand-title" width="97" height="25" fill="none" ><path class="svg-logo-text" d="M20.88 3.06L13.2 24H8.1L.42 3.06h4.5l5.76 16.65 5.73-16.65h4.47zm17.968 12.27c0 .6-.04 1.14-.12 1.62h-12.15c.1 1.2.52 2.14 1.26 2.82s1.65 1.02 2.73 1.02c1.56 0 2.67-.67 3.33-2.01h4.53c-.48 1.6-1.4 2.92-2.76 3.96-1.36 1.02-3.03 1.53-5.01 1.53-1.6 0-3.04-.35-4.32-1.05-1.26-.72-2.25-1.73-2.97-3.03-.7-1.3-1.05-2.8-1.05-4.5 0-1.72.35-3.23 1.05-4.53s1.68-2.3 2.94-3 2.71-1.05 4.35-1.05c1.58 0 2.99.34 4.23 1.02 1.26.68 2.23 1.65 2.91 2.91.7 1.24 1.05 2.67 1.05 4.29zm-4.35-1.2c-.02-1.08-.41-1.94-1.17-2.58-.76-.66-1.69-.99-2.79-.99-1.04 0-1.92.32-2.64.96-.7.62-1.13 1.49-1.29 2.61h7.89zm16.626-6.99c1.98 0 3.58.63 4.8 1.89 1.22 1.24 1.83 2.98 1.83 5.22V24h-4.2v-9.18c0-1.32-.33-2.33-.99-3.03-.66-.72-1.56-1.08-2.7-1.08-1.16 0-2.08.36-2.76 1.08-.66.7-.99 1.71-.99 3.03V24h-4.2V7.38h4.2v2.07c.56-.72 1.27-1.28 2.13-1.68.88-.42 1.84-.63 2.88-.63zm15.514 3.69v8.04c0 .56.13.97.39 1.23.28.24.74.36 1.38.36h1.95V24h-2.64c-3.54 0-5.31-1.72-5.31-5.16v-8.01h-1.98V7.38h1.98V3.27h4.23v4.11h3.72v3.45h-3.72zm8.871-5.43c-.74 0-1.36-.23-1.86-.69-.48-.48-.72-1.07-.72-1.77s.24-1.28.72-1.74c.5-.48 1.12-.72 1.86-.72s1.35.24 1.83.72c.5.46.75 1.04.75 1.74s-.25 1.29-.75 1.77c-.48.46-1.09.69-1.83.69zm2.07 1.98V24h-4.2V7.38h4.2zm3.07 8.31c0-1.72.35-3.22 1.05-4.5.7-1.3 1.67-2.3 2.91-3 1.24-.72 2.66-1.08 4.26-1.08 2.06 0 3.76.52 5.1 1.56 1.36 1.02 2.27 2.46 2.73 4.32h-4.53c-.24-.72-.65-1.28-1.23-1.68-.56-.42-1.26-.63-2.1-.63-1.2 0-2.15.44-2.85 1.32-.7.86-1.05 2.09-1.05 3.69 0 1.58.35 2.81 1.05 3.69.7.86 1.65 1.29 2.85 1.29 1.7 0 2.81-.76 3.33-2.28h4.53c-.46 1.8-1.37 3.23-2.73 4.29s-3.06 1.59-5.1 1.59c-1.6 0-3.02-.35-4.26-1.05-1.24-.72-2.21-1.72-2.91-3-.7-1.3-1.05-2.81-1.05-4.53z" fill="#194039"/>
                    </svg>
                </a>
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
                </div>
            </div>
            <!--**********************************
        Nav header end
    ***********************************-->
            <!--**********************************
            Chat box start
    ***********************************-->
            <div class="chatbox">
                <div class="chatbox-close"></div>
                <div class="custom-tab-1">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#notes">Notes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#alerts">Alerts</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#chat">Chat</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="chat" role="tabpanel">
                            <div class="card mb-sm-3 mb-md-0 contacts_card dz-chat-user-box">
                                <div class="card-header chat-list-header text-center">
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect fill="#000000" x="4" y="11" width="16" height="2" rx="1"/><rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Chat List</h6>
                                        <p class="mb-0">Show All</p>
                                    </div>
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll  " id="DZ_W_Contacts_Body">
                                    <ul class="contacts">
                                        <li class="name-first-letter">A</li>
                                        <li class="active dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Archie Parker</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Alfie Mason</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/3.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>AharlieKane</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/4.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">B</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/5.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Bashid Samim</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Breddie Ronan</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Ceorge Carson</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">D</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/3.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Darry Parker</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/4.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Denry Hunter</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">J</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/5.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Jack Ronan</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Jacob Tucker</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>James Logan</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/3.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Joshua Weston</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">O</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/4.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Oliver Acker</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="public/assets/images/avatar/5.jpg" class="rounded-circle user_img" alt="">
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Oscar Weston</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card chat dz-chat-history-box d-none">
                                <div class="card-header chat-list-header text-center">
                                    <a href="#" class="dz-chat-history-back">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><polygon points="0 0 24 0 24 24 0 24"/><rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"/><path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "/></g></svg>
                                    </a>
                                    <div>
                                        <h6 class="mb-1">Chat with Khelesh</h6>
                                        <p class="mb-0 text-success">Online</p>
                                    </div>
                                    <div class="dropdown">
                                        <a href="#" data-bs-toggle="dropdown" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            <li class="dropdown-item"><i class="fa fa-user-circle text-primary me-2"></i> View profile</li>
                                            <li class="dropdown-item"><i class="fa fa-users text-primary me-2"></i> Add to btn-close friends</li>
                                            <li class="dropdown-item"><i class="fa fa-plus text-primary me-2"></i> Add to group</li>
                                            <li class="dropdown-item"><i class="fa fa-ban text-primary me-2"></i> Block</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body msg_card_body dz-scroll" id="DZ_W_Contacts_Body3">
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            Hi, how are you samim?
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Hi Khalid i am good tnx how about you?
                                            <span class="msg_time_send">8:55 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            I am good too, thank you for your chat template
                                            <span class="msg_time">9:00 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            You are welcome
                                            <span class="msg_time_send">9:05 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            I am looking for your next templates
                                            <span class="msg_time">9:07 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Ok, thank you have a good day
                                            <span class="msg_time_send">9:10 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            Bye, see you
                                            <span class="msg_time">9:12 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            Hi, how are you samim?
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Hi Khalid i am good tnx how about you?
                                            <span class="msg_time_send">8:55 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            I am good too, thank you for your chat template
                                            <span class="msg_time">9:00 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            You are welcome
                                            <span class="msg_time_send">9:05 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            I am looking for your next templates
                                            <span class="msg_time">9:07 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Ok, thank you have a good day
                                            <span class="msg_time_send">9:10 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="public/assets/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="">
                                        </div>
                                        <div class="msg_cotainer">
                                            Bye, see you
                                            <span class="msg_time">9:12 AM, Today</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer type_msg">
                                    <div class="input-group">
                                        <textarea class="form-control" placeholder="Type your message..."></textarea>
                                        <div class="input-group-append">
                                            <button type="button" class="btn btn-primary"><i class="fa fa-location-arrow"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="alerts" role="tabpanel">
                            <div class="card mb-sm-3 mb-md-0 contacts_card">
                                <div class="card-header chat-list-header text-center">
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Notications</h6>
                                        <p class="mb-0">Show All</p>
                                    </div>
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/><path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body1">
                                    <ul class="contacts">
                                        <li class="name-first-letter">SEVER STATUS</li>
                                        <li class="active">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont primary">KK</div>
                                                <div class="user_info">
                                                    <span>David Nester Birthday</span>
                                                    <p class="text-primary">Today</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">SOCIAL</li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont success">RU</div>
                                                <div class="user_info">
                                                    <span>Perfection Simplified</span>
                                                    <p>Jame Smith commented on your status</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">SEVER STATUS</li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont primary">AU</div>
                                                <div class="user_info">
                                                    <span>AharlieKane</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont info">MO</div>
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notes">
                            <div class="card mb-sm-3 mb-md-0 note_card">
                                <div class="card-header chat-list-header text-center">
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect fill="#000000" x="4" y="11" width="16" height="2" rx="1"/><rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Notes</h6>
                                        <p class="mb-0">Add New Nots</p>
                                    </div>
                                    <a href="#"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/><path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body2">
                                    <ul class="contacts">
                                        <li class="active">
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>New order placed..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="#" class="btn btn-primary btn-xs sharp me-1"><i class="fa fa-pencil"></i></a>
                                                    <a href="#" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>Youtube, a video-sharing website..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="#" class="btn btn-primary btn-xs sharp me-1"><i class="fa fa-pencil"></i></a>
                                                    <a href="#" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>john just buy your product..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="#" class="btn btn-primary btn-xs sharp me-1"><i class="fa fa-pencil"></i></a>
                                                    <a href="#" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="#" class="btn btn-primary btn-xs sharp me-1"><i class="fa fa-pencil"></i></a>
                                                    <a href="#" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--**********************************
            Chat box End
    ***********************************-->
            <!--**********************************
            Header start
    ***********************************-->
            <header class="header">
                <div class="header-content">
                    <nav class="navbar navbar-expand">
                        <div class="collapse navbar-collapse justify-content-between">
                            <div class="header-left">
                                <div class="input-group search-area d-xl-inline-flex d-none">
                                    <button class="input-group-text"><i class="flaticon-381-search-2 text-primary"></i></button>
                                    <input type="text" class="form-control" placeholder="Search here...">
                                </div>
                            </div>
                            <ul class="navbar-nav header-right">
                                <li class="nav-item dropdown notification_dropdown">
                                    <a class="nav-link bell dz-theme-mode" href="javascript:void(0);" aria-label="theme-mode">
                                        <i id="icon-light" class="fas fa-sun"></i>
                                        <i id="icon-dark" class="fas fa-moon"></i>

                                    </a>

                                </li>
                                <li class="nav-item dropdown notification_dropdown">
                                    <a class="nav-link  ai-icon" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M12.638 4.9936V2.3C12.638 1.5824 13.2484 1 14.0006 1C14.7513 1 15.3631 1.5824 15.3631 2.3V4.9936C17.3879 5.2718 19.2805 6.1688 20.7438 7.565C22.5329 9.2719 23.5384 11.5872 23.5384 14V18.8932L24.6408 20.9966C25.1681 22.0041 25.1122 23.2001 24.4909 24.1582C23.8709 25.1163 22.774 25.7 21.5941 25.7H15.3631C15.3631 26.4176 14.7513 27 14.0006 27C13.2484 27 12.638 26.4176 12.638 25.7H6.40705C5.22571 25.7 4.12888 25.1163 3.50892 24.1582C2.88759 23.2001 2.83172 22.0041 3.36039 20.9966L4.46268 18.8932V14C4.46268 11.5872 5.46691 9.2719 7.25594 7.565C8.72068 6.1688 10.6119 5.2718 12.638 4.9936ZM14.0006 7.5C12.1924 7.5 10.4607 8.1851 9.18259 9.4045C7.90452 10.6226 7.18779 12.2762 7.18779 14V19.2C7.18779 19.4015 7.13739 19.6004 7.04337 19.7811C7.04337 19.7811 6.43703 20.9381 5.79662 22.1588C5.69171 22.3603 5.70261 22.6008 5.82661 22.7919C5.9506 22.983 6.16996 23.1 6.40705 23.1H21.5941C21.8298 23.1 22.0492 22.983 22.1732 22.7919C22.2972 22.6008 22.3081 22.3603 22.2031 22.1588C21.5627 20.9381 20.9564 19.7811 20.9564 19.7811C20.8624 19.6004 20.8133 19.4015 20.8133 19.2V14C20.8133 12.2762 20.0953 10.6226 18.8172 9.4045C17.5391 8.1851 15.8073 7.5 14.0006 7.5Z" fill="#759791"/>
                                        </svg>
                                        <span class="badge light text-white bg-secondary rounded-circle">12</span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        <div id="DZ_W_Notification1" class="widget-media dz-scroll p-3" style="height:380px;">
                                            <ul class="timeline">
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2">
                                                            <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2 media-info">
                                                            KG
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Resport created successfully</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2 media-success">
                                                            <i class="fa fa-home"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2">
                                                            <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2 media-danger">
                                                            KG
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Resport created successfully</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media me-2 media-primary">
                                                            <i class="fa fa-home"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                                            <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <a class="all-notification" href="javascript:void(0);">See all notifications <i class="ti-arrow-end"></i></a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown notification_dropdown">
                                    <a class="nav-link bell bell-link" href="javascript:void(0);">
                                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M27 7.88883C27 5.18897 24.6717 3 21.8 3C17.4723 3 10.5277 3 6.2 3C3.3283 3 1 5.18897 1 7.88883V23.7776C1 24.2726 1.31721 24.7174 1.80211 24.9069C2.28831 25.0963 2.8473 24.9912 3.2191 24.6417C3.2191 24.6417 5.74629 22.2657 7.27769 20.8272C7.76519 20.3688 8.42561 20.1109 9.11591 20.1109H21.8C24.6717 20.1109 27 17.922 27 15.2221V7.88883ZM24.4 7.88883C24.4 6.53951 23.2365 5.44441 21.8 5.44441C17.4723 5.44441 10.5277 5.44441 6.2 5.44441C4.7648 5.44441 3.6 6.53951 3.6 7.88883V20.8272L5.4382 19.0989C6.4132 18.1823 7.73661 17.6665 9.11591 17.6665H21.8C23.2365 17.6665 24.4 16.5726 24.4 15.2221V7.88883ZM7.5 15.2221H17.9C18.6176 15.2221 19.2 14.6745 19.2 13.9999C19.2 13.3252 18.6176 12.7777 17.9 12.7777H7.5C6.7824 12.7777 6.2 13.3252 6.2 13.9999C6.2 14.6745 6.7824 15.2221 7.5 15.2221ZM7.5 10.3333H20.5C21.2176 10.3333 21.8 9.7857 21.8 9.11104C21.8 8.43638 21.2176 7.88883 20.5 7.88883H7.5C6.7824 7.88883 6.2 8.43638 6.2 9.11104C6.2 9.7857 6.7824 10.3333 7.5 10.3333Z" fill="#759791"/>
                                        </svg>
                                        <span class="badge light text-white bg-secondary rounded-circle">5</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown notification_dropdown">
                                    <a class="nav-link" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M3.88552 6.2921C1.95571 6.54135 0.439911 8.19656 0.439911 10.1896V10.7253C0.439911 12.8874 2.21812 14.6725 4.38019 14.6725H12.7058V24.9768H7.01104C5.77451 24.9768 4.82009 24.0223 4.82009 22.7858V18.4039C4.84523 16.6262 2.16581 16.6262 2.19096 18.4039V22.7858C2.19096 25.4334 4.36345 27.6059 7.01104 27.6059H21.0331C23.6807 27.6059 25.8532 25.4334 25.8532 22.7858V13.9981C26.9064 13.286 27.6042 12.0802 27.6042 10.7253V10.1896C27.6042 8.17115 26.0501 6.50077 24.085 6.28526C24.0053 0.424609 17.6008 -1.28785 13.9827 2.48534C10.3936 -1.60185 3.7545 1.06979 3.88552 6.2921ZM12.7058 5.68103C12.7058 5.86287 12.7033 6.0541 12.7058 6.24246H6.50609C6.55988 2.31413 11.988 1.90765 12.7058 5.68103ZM21.4559 6.24246H15.3383C15.3405 6.05824 15.3538 5.87664 15.3383 5.69473C15.9325 2.04532 21.3535 2.18829 21.4559 6.24246ZM4.38019 8.87502H12.7058V12.0382H4.38019C3.62918 12.0382 3.06562 11.4764 3.06562 10.7253V10.1896C3.06562 9.43859 3.6292 8.87502 4.38019 8.87502ZM15.3383 8.87502H23.6656C24.4166 8.87502 24.9785 9.43859 24.9785 10.1896V10.7253C24.9785 11.4764 24.4167 12.0382 23.6656 12.0382H15.3383V8.87502ZM15.3383 14.6725H23.224V22.7858C23.224 24.0223 22.2696 24.9768 21.0331 24.9768H15.3383V14.6725Z" fill="#759791"/> 
                                        </svg>
                                        <span class="badge light text-white bg-secondary rounded-circle">2</span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        <div id="DZ_W_TimeLine02" class="widget-timeline dz-scroll style-1 ps ps--active-y p-3 height370">
                                            <ul class="timeline">
                                                <li>
                                                    <div class="timeline-badge primary"></div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>10 minutes ago</span>
                                                        <h6 class="mb-0">Youtube, a video-sharing website, goes live <strong class="text-primary">$500</strong>.</h6>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="timeline-badge info">
                                                    </div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>20 minutes ago</span>
                                                        <h6 class="mb-0">New order placed <strong class="text-info">#XF-2356.</strong></h6>
                                                        <p class="mb-0">Quisque a consequat ante Sit amet magna at volutapt...</p>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="timeline-badge danger">
                                                    </div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>30 minutes ago</span>
                                                        <h6 class="mb-0">john just buy your product <strong class="text-warning">Sell $250</strong></h6>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="timeline-badge success">
                                                    </div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>15 minutes ago</span>
                                                        <h6 class="mb-0">StumbleUpon is acquired by eBay. </h6>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="timeline-badge warning">
                                                    </div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>20 minutes ago</span>
                                                        <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                    </a>
                                                </li>
                                                <li>
                                                    <div class="timeline-badge dark">
                                                    </div>
                                                    <a class="timeline-panel text-muted" href="javascript:void(0);">
                                                        <span>20 minutes ago</span>
                                                        <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown notification_dropdown">
                                    <select class="language-btn default-select">
                                        <option data-display="ENGLISH">ENGLISH</option>
                                        <option value="1">FRANCE</option>
                                        <option value="2">CANADA</option>
                                        <option value="3">GERMAN</option>
                                    </select>
                                </li>
                                <li class="nav-item dropdown header-profile">
                                    <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
                                        <div class="header-info me-3">
                                            <span class="fs-16 font-w600 ">James P. Sullivan</span>
                                            <small class="text-end fs-14 font-w400">Super Admin</small>
                                        </div>
                                        <img src="public/assets/images/profile/pic1.jpg" width="20" alt="">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end">
                                        <a href="https://ventic.dexignzone.com/codeigniter/demo/app_profile" class="dropdown-item ai-icon">
                                            <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                            <span class="ms-2">Profile </span>
                                        </a>
                                        <a href="https://ventic.dexignzone.com/codeigniter/demo/email_inbox" class="dropdown-item ai-icon">
                                            <svg id="icon-inbox" xmlns="http://www.w3.org/2000/svg" class="text-success" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                                            <span class="ms-2">Inbox </span>
                                        </a>
                                        <a href="logout" class="dropdown-item ai-icon">
                                            <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                            <span class="ms-2">Logout </span>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </header>
            <!--**********************************
            Header end 
    ***********************************-->
            <!--**********************************
        Sidebar start
    ***********************************-->
            <div class="deznav">
                <div class="deznav-scroll">
                    <ul class="metismenu" id="menu">

                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-025-dashboard"></i>
                                <span class="nav-text">Dashboard</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/index">Dashboard Light</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/index_2">Dashboard Dark</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/orders_list">Orders list</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/event">Event</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/customers">Customers</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/analytics">Analytics</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/reviews">Reviews</a></li>
                            </ul>

                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-050-info"></i>
                                <span class="nav-text">Apps</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/app_profile">Profile</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/post_details">Post Details</a></li>
                                <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Email</a>
                                    <ul aria-expanded="false">
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_compose">Compose</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_inbox">Inbox</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_read">Read</a></li>
                                    </ul>
                                </li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/app_calender">Calendar</a></li>
                                <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Shop</a>
                                    <ul aria-expanded="false">
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_product_grid">Product Grid</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_product_list">Product List</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_product_details">Product Details</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_product_order">Order</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_checkout">Checkout</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_invoice">Invoice</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/ecom_customers">Customers</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-033-feather"></i>
                                <span class="nav-text">Icons<span class="badge badge-danger badge-xs ms-1">NEW</span></span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/flat_icons">Flaticons</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/svg_icons">SVG Icons</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/feather_icons">Feather Icons</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-018-clock"></i>
                                <span class="nav-text">CMS<span class="badge badge-danger badge-xs ms-1">NEW</span></span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/content">Content</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/add_content">Add Content</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/menu">Menus</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/email_template">Email Template</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/add_email">Add Email</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/blog">Blog</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/add_blog">Add Blog</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/blog_category">Blog Category</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-041-graph"></i>
                                <span class="nav-text">Charts</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/flot">Flot</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/morris">Morris</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/chartjs">Chartjs</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/chartist">Chartist</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/sparkline">Sparkline</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/peity">Peity</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-086-star"></i>
                                <span class="nav-text">Bootstrap</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/accordion">Accordion</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/alert">Alert</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/badge">Badge</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/button">Button</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/modal">Modal</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/button_group">Button Group</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/list_group">List Group</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/card">Cards</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/carousel">Carousel</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/dropdown">Dropdown</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/popover">Popover</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/progressbar">Progressbar</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/tab">Tab</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/typography">Typography</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/pagination">Pagination</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/grid">Grid</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-045-heart"></i>
                                <span class="nav-text">Plugins</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/select2">Select 2</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/nestable">Nestable</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/noui_slider">Noui Slider</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/sweetalert">Sweet Alert</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/toastr">Toastr</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/map_jqvmap">Jqv Map</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/lightgallery">Light Gallery</a></li>
                            </ul>
                        </li>
                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/widget_basic" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-013-checkmark"></i>
                                <span class="nav-text">Widget</span>
                            </a>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-072-printer"></i>
                                <span class="nav-text">Forms</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_element">Form Elements</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_wizard">Wizard</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_ckeditor">CKeditor</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_pickers">Pickers</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/form_validation_jquery">Form Validate</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-043-menu"></i>
                                <span class="nav-text">Table</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/table_bootstrap">Bootstrap</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/table_datatable">Datatable</a></li>
                            </ul>
                        </li>
                        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-022-copy"></i>
                                <span class="nav-text">Pages</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_login">Page Login</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_register">Register</a></li>
                                <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                                    <ul aria-expanded="false">
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_400">Error 400</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_403">Error 403</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_404">Error 404</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_500">Error 500</a></li>
                                        <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_error_503">Error 503</a></li>
                                    </ul>
                                </li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_lock_screen">Lock Screen</a></li>
                                <li><a href="https://ventic.dexignzone.com/codeigniter/demo/page_empty">Empty Page</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="plus-box">
                        <p class="fs-16 font-w500 mb-3">Ticket Sales Weekly Report</p>
                        <a class="text-white fs-14" href="https://ventic.dexignzone.com/codeigniter/demo/analytics">Learn more</a>
                    </div>
                    <div class="copyright">
                        <p><strong>Ventic Ticketing Admin Dashboard Template</strong> © 2023 All Rights Reserved</p>
                        <p class="fs-12">Made with <span class="heart"></span> by DexignZone</p>
                    </div>
                </div>
            </div>
            <!--**********************************
        Sidebar end
    ***********************************-->
            <!--**********************************
            Content body start
    ***********************************-->
            <div class=" content-body default-height">
                <div class="container-fluid">
                    <div class="row page-titles">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Widget</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0)">Statistics</a></li>
                        </ol>
                    </div>
                    <!-- row -->
                    <div class="row">
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Timeline</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_TimeLine" class="widget-timeline my-4 px-4 dz-scroll height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-badge primary"></div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>10 minutes ago</span>
                                                    <h6 class="mb-0">Youtube, a video-sharing website, goes live <strong class="text-primary">$500</strong>.</h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge info">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">New order placed <strong class="text-info">#XF-2356.</strong></h6>
                                                    <p class="mb-0">Quisque a consequat ante Sit amet magna at volutapt...</p>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge danger">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>30 minutes ago</span>
                                                    <h6 class="mb-0">john just buy your product <strong class="text-warning">Sell $250</strong></h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge success">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>15 minutes ago</span>
                                                    <h6 class="mb-0">StumbleUpon is acquired by eBay. </h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge warning">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge dark">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Timeline 2</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_TimeLine11" class="widget-timeline  my-4 px-4 dz-scroll style-1 height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-badge primary"></div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>10 minutes ago</span>
                                                    <h6 class="mb-0">Youtube, a video-sharing website, goes live <strong class="text-primary">$500</strong>.</h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge info">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">New order placed <strong class="text-info">#XF-2356.</strong></h6>
                                                    <p class="mb-0">Quisque a consequat ante Sit amet magna at volutapt...</p>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge danger">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>30 minutes ago</span>
                                                    <h6 class="mb-0">john just buy your product <strong class="text-warning">Sell $250</strong></h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge success">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>15 minutes ago</span>
                                                    <h6 class="mb-0">StumbleUpon is acquired by eBay. </h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge warning">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                </a>
                                            </li>
                                            <li>
                                                <div class="timeline-badge dark">
                                                </div>
                                                <a class="timeline-panel text-muted" href="#">
                                                    <span>20 minutes ago</span>
                                                    <h6 class="mb-0">Mashable, a news website and blog, goes live.</h6>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card">
                                <div class="card-header  border-0 pb-0">
                                    <h4 class="card-title">Notifications</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_Todo1" class="widget-media my-4 px-4 dz-scroll height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-info">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-success">
                                                        <i class="fa fa-home"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time!</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-danger">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-danger light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-primary">
                                                        <i class="fa fa-home"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time!</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card border-0 pb-0">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Notifications 2</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_Todo2" class="widget-media my-4 px-4 dz-scroll height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-info">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully <span class="badge badge-warning">Warning</span></h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-success">
                                                        <i class="fa fa-home"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time!</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo <span class="badge light badge-danger">Danger</span></h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-danger">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully <span class="badge light badge-success">Success</span></h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-danger light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-primary">
                                                        <i class="fa fa-home"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time! <span class="badge light badge-success">Success</span></h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card border-0 pb-0">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Message</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_Todo3" class="widget-media my-4 px-4 dz-scroll height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Alfie Mason <small class="text-muted">29 July 2020</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-info">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Jacob Tucker <small class="text-muted">29 July 2020</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-success">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/2.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Jack Ronan <small class="text-muted">29 July 2020</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Noah Baldon <small class="text-muted">29 July 2020</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-danger">
                                                        PU
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Thomas Grady <small class="text-muted">02:26 PM</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-danger light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-primary">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/3.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Oscar Weston <small class="text-muted">29 July 2020</small></h5>
                                                        <p class="mb-1">I shared this on my fb wall a few months back..</p>
                                                        <a href="#" class="btn btn-primary btn-xxs shadow">Reply</a>
                                                        <a href="#" class="btn btn-outline-danger btn-xxs">Delete</a>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-xxl-6 col-lg-6">
                            <div class="card border-0 pb-0">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">To Do List</h4>
                                </div>
                                <div class="card-body p-0">
                                    <div id="DZ_W_Todo4" class="widget-media my-4 px-4 dz-scroll height370">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-success check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox1" required="">
                                                        <label class="form-check-label" for="customCheckBox1"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Get up</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-warning check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox2" required="">
                                                        <label class="form-check-label" for="customCheckBox2"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Stand up</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-warning light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-primary check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox3" required="">
                                                        <label class="form-check-label" for="customCheckBox3"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Don't give up the fight.</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-info check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox4" required="">
                                                        <label class="form-check-label" for="customCheckBox4"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Do something else</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-success check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox5" required="">
                                                        <label class="form-check-label" for="customCheckBox5"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Get up</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="form-check custom-checkbox checkbox-warning check-lg me-3">
                                                        <input type="checkbox" class="form-check-input" id="customCheckBox6" required="">
                                                        <label class="form-check-label" for="customCheckBox6"></label>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-0">Stand up</h5>
                                                        <small class="text-muted">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-warning light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <div class="media ai-icon">
                                        <span class="me-3 bgl-primary text-primary">
                                            <!-- <i class="ti-user"></i> -->
                                            <svg id="icon-customers" xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                        </span>
                                        <div class="media-body">
                                            <p class="mb-1">Patient</p>
                                            <h4 class="mb-0">3280</h4>
                                            <span class="badge badge-primary">+3.5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <div class="media ai-icon">
                                        <span class="me-3 bgl-warning text-warning">
                                            <svg id="icon-orders" xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text">
                                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                            <polyline points="14 2 14 8 20 8"></polyline>
                                            <line x1="16" y1="13" x2="8" y2="13"></line>
                                            <line x1="16" y1="17" x2="8" y2="17"></line>
                                            <polyline points="10 9 9 9 8 9"></polyline>
                                            </svg>
                                        </span>
                                        <div class="media-body">
                                            <p class="mb-1">Bills</p>
                                            <h4 class="mb-0">2570</h4>
                                            <span class="badge badge-warning">+3.5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body  p-4">
                                    <div class="media ai-icon">
                                        <span class="me-3 bgl-danger text-danger">
                                            <svg id="icon-revenue" xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign">
                                            <line x1="12" y1="1" x2="12" y2="23"></line>
                                            <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
                                            </svg>
                                        </span>
                                        <div class="media-body">
                                            <p class="mb-1">Revenue</p>
                                            <h4 class="mb-0">364.50K</h4>
                                            <span class="badge badge-danger">-3.5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <div class="media ai-icon">
                                        <span class="me-3 bgl-success text-success">
                                            <svg id="icon-database-widget" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-database">
                                            <ellipse cx="12" cy="5" rx="9" ry="3"></ellipse>
                                            <path d="M21 12c0 1.66-4 3-9 3s-9-1.34-9-3"></path>
                                            <path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path>
                                            </svg>
                                        </span>
                                        <div class="media-body">
                                            <p class="mb-1">Patient</p>
                                            <h4 class="mb-0">364.50K</h4>
                                            <span class="badge badge-success">-3.5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-danger">
                                <div class="card-body  p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="flaticon-381-calendar-1"></i>
                                        </span>
                                        <div class="media-body text-white text-end">
                                            <p class="mb-1">Appointment</p>
                                            <h3 class="text-white">76</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-success">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="flaticon-381-diamond"></i>
                                        </span>
                                        <div class="media-body text-white text-end">
                                            <p class="mb-1">Earning</p>
                                            <h3 class="text-white">$56K</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-info">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="flaticon-381-heart"></i>
                                        </span>
                                        <div class="media-body text-white text-end">
                                            <p class="mb-1">Total Patient</p>
                                            <h3 class="text-white">783K</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-primary">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="flaticon-381-user-7"></i>
                                        </span>
                                        <div class="media-body text-white text-end">
                                            <p class="mb-1">Chef</p>
                                            <h3 class="text-white">$76</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-primary">
                                <div class="card-body  p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="la la-users"></i>
                                        </span>
                                        <div class="media-body text-white">
                                            <p class="mb-1">Total Students</p>
                                            <h3 class="text-white">3280</h3>
                                            <div class="progress mb-2 bg-secondary">
                                                <div class="progress-bar progress-animated bg-white" style="width: 80%"></div>
                                            </div>
                                            <small>80% Increase in 20 Days</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-warning">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="la la-user"></i>
                                        </span>
                                        <div class="media-body text-white">
                                            <p class="mb-1">New Students</p>
                                            <h3 class="text-white">245</h3>
                                            <div class="progress mb-2 bg-primary">
                                                <div class="progress-bar progress-animated bg-white" style="width: 50%"></div>
                                            </div>
                                            <small>50% Increase in 25 Days</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-secondary">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="la la-graduation-cap"></i>
                                        </span>
                                        <div class="media-body text-white">
                                            <p class="mb-1">Total Course</p>
                                            <h3 class="text-white">28</h3>
                                            <div class="progress mb-2 bg-primary">
                                                <div class="progress-bar progress-animated bg-white" style="width: 76%"></div>
                                            </div>
                                            <small>76% Increase in 20 Days</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card bg-danger ">
                                <div class="card-body p-4">
                                    <div class="media">
                                        <span class="me-3">
                                            <i class="la la-dollar"></i>
                                        </span>
                                        <div class="media-body text-white">
                                            <p class="mb-1">Fees Collect</p>
                                            <h3 class="text-white">250$</h3>
                                            <div class="progress mb-2 bg-secondary">
                                                <div class="progress-bar progress-animated bg-white" style="width: 30%"></div>
                                            </div>
                                            <small>30% Increase in 30 Days</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <h4 class="card-title">Total Students</h4>
                                    <h3>3280</h3>
                                    <div class="progress mb-2">
                                        <div class="progress-bar progress-animated bg-primary" style="width: 80%"></div>
                                    </div>
                                    <small>80% Increase in 20 Days</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <h4 class="card-title">New Students</h4>
                                    <h3>245</h3>
                                    <div class="progress mb-2">
                                        <div class="progress-bar progress-animated bg-warning" style="width: 50%"></div>
                                    </div>
                                    <small>50% Increase in 25 Days</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <h4 class="card-title">Total Course</h4>
                                    <h3>28</h3>
                                    <div class="progress mb-2">
                                        <div class="progress-bar progress-animated bg-red" style="width: 76%"></div>
                                    </div>
                                    <small>76% Increase in 20 Days</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                            <div class="widget-stat card">
                                <div class="card-body p-4">
                                    <h4 class="card-title">Fees Collection</h4>
                                    <h3>25160$</h3>
                                    <div class="progress mb-2">
                                        <div class="progress-bar progress-animated bg-success" style="width: 30%"></div>
                                    </div>
                                    <small>30% Increase in 30 Days</small>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-12 col-lg-12 col-sm-12">
                            <div class="row">
                                <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                                    <div class="widget-stat card bg-primary">
                                        <div class="card-header border-0 pb-0">
                                            <h3 class="card-title text-white">Total Students</h3>
                                            <h5 class="text-white mb-0"><i class="fa fa-caret-up"></i> 422</h5>
                                        </div>
                                        <div class="card-body text-center">
                                            <div class="ico-sparkline">
                                                <div id="sparkline12"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                                    <div class="widget-stat card bg-warning overflow-hidden">
                                        <div class="card-header border-0 ">
                                            <h3 class="card-title text-white">New Students</h3>
                                            <h5 class="text-white mb-0"><i class="fa fa-caret-up"></i> 357</h5>
                                        </div>
                                        <div class="card-body text-center p-0">
                                            <div class="ico-sparkline">
                                                <div id="spark-bar-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                                    <div class="widget-stat card bg-secondary">
                                        <div class="card-header pb-3 border-0 pb-0">
                                            <h3 class="card-title text-white">Total Course</h3>
                                            <h5 class="text-white mb-0"><i class="fa fa-caret-up"></i> 547</h5>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="px-4"><span class="bar1" data-peity='{ "fill": ["rgb(255, 255, 255)", "rgb(255, 255, 255)"]}'>6,2,8,4,-3,8,1,-3,6,-5,9,2,-8,1,4,8,9,8,2,1</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
                                    <div class="widget-stat card bg-danger overflow-hidden">
                                        <div class="card-header pb-3 border-0 pb-0">
                                            <h3 class="card-title text-white">Fees Collection</h3>
                                            <h5 class="text-white mb-0"><i class="fa fa-caret-up"></i> 3280$</h5>
                                        </div>
                                        <div class="card-body p-0">
                                            <span class="peity-line-2" data-width="100%">7,6,8,7,3,8,3,3,6,5,9,2,8</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-12 col-sm-12">
                            <div class="card">
                                <div class="card-header border-0 pb-0">
                                    <h2 class="card-title">about me</h2>
                                </div>
                                <div class="card-body pb-0">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Gender</strong>
                                            <span class="mb-0">Male</span>
                                        </li>
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Education</strong>
                                            <span class="mb-0">PHD</span>
                                        </li>
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Designation</strong>
                                            <span class="mb-0">Se. Professor</span>
                                        </li>
                                        <li class="list-group-item d-flex px-0 justify-content-between">
                                            <strong>Operation Done</strong>
                                            <span class="mb-0">120</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-footer pt-0 pb-0 text-center">
                                    <div class="row">
                                        <div class="col-4 pt-3 pb-3 border-end">
                                            <h3 class="mb-1 text-primary">150</h3>
                                            <span>Projects</span>
                                        </div>
                                        <div class="col-4 pt-3 pb-3 border-end">
                                            <h3 class="mb-1 text-primary">140</h3>
                                            <span>Uploads</span>
                                        </div>
                                        <div class="col-4 pt-3 pb-3">
                                            <h3 class="mb-1 text-primary">45</h3>
                                            <span>Tasks</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-8 col-xxl-8 col-lg-12 col-sm-12">
                            <div id="user-activity" class="card">
                                <div class="card-header border-0 pb-0 d-sm-flex d-block">
                                    <h4 class="card-title">Visitor Activity</h4>
                                    <div class="card-action mb-sm-0 my-2">
                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link" id="home-tab" href="javascript:void(0);" data-bs-toggle="tab" data-bs-target="#home-tab-pane" role="tab" aria-selected="false" tabindex="-1">Day</a>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link" id="profile-tab" href="javascript:void(0);" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" role="tab" aria-selected="false" tabindex="-1">Month</a>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <a class="nav-link active" id="contact-tab" href="javascript:void(0);" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" role="tab" aria-selected="true"> Year</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="card-body pb-0">
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="user" role="tabpanel">
                                            <canvas id="activity" class="chartjs"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-sm-6">
                            <div class="card overflow-hidden">
                                <div class="card-body">
                                    <div class="text-center">
                                        <div class="profile-photo">
                                            <img src="public/assets/images/profile/profile.png" width="100" class="img-fluid rounded-circle" alt="">
                                        </div>
                                        <h3 class="mt-4 mb-1">Deangelo Sena</h3>
                                        <p class="text-muted">Senior Manager</p>
                                        <a class="btn btn-outline-primary btn-rounded mt-3 px-5" href="javascript:void();">Folllow</a>
                                    </div>
                                </div>

                                <div class="card-footer pt-0 pb-0 text-center">
                                    <div class="row">
                                        <div class="col-4 pt-3 pb-3 border-end">
                                            <h3 class="mb-1">150</h3><span>Follower</span>
                                        </div>
                                        <div class="col-4 pt-3 pb-3 border-end">
                                            <h3 class="mb-1">140</h3><span>Place Stay</span>
                                        </div>
                                        <div class="col-4 pt-3 pb-3">
                                            <h3 class="mb-1">45</h3><span>Reviews</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-sm-6">
                            <div class="card active_users">
                                <div class="card-header bg-primary border-0 pb-0">
                                    <h4 class="card-title text-white">Active Users</h4>
                                    <span id="counter"></span>
                                </div>
                                <div class="bg-primary">
                                    <canvas id="activeUser"></canvas>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="list-group-flush mt-4">
                                        <div class="list-group-item bg-transparent d-flex justify-content-between px-0 py-1 fw-semi-bold border-top-0 border-0 border-bottom">
                                            <p class="mb-0">Top Active Pages</p>
                                            <p class="mb-0">Active Users</p>
                                        </div>
                                        <div class="list-group-item bg-transparent d-flex justify-content-between px-0 py-1 border-0 border-bottom">
                                            <p class="mb-0">/bootstrap-themes/</p>
                                            <p class="mb-0">3</p>
                                        </div>
                                        <div class="list-group-item bg-transparent d-flex justify-content-between px-0 py-1 border-0 border-bottom">
                                            <p class="mb-0">/tags/html5/</p>
                                            <p class="mb-0">3</p>
                                        </div>
                                        <div class="list-group-item bg-transparent d-xxl-flex justify-content-between px-0 py-1 d-none">
                                            <p class="mb-0">/</p>
                                            <p class="mb-0">2</p>
                                        </div>
                                        <div class="list-group-item bg-transparent d-xxl-flex justify-content-between px-0 py-1 d-none">
                                            <p class="mb-0">/preview/falcon/dashboard/</p>
                                            <p class="mb-0">2</p>
                                        </div>
                                        <div class="list-group-item bg-transparent d-flex justify-content-between px-0 py-1 border-0 border-bottom">
                                            <p class="mb-0">/100-best-themes...all-time/</p>
                                            <p class="mb-0">1</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-12 col-sm-12">
                            <div class="card overflow-hidden">
                                <div class="text-center p-3 overlay-box " style="background-image: url(public/assets/images/big/img1.jpg);">
                                    <div class="profile-photo">
                                        <img src="public/assets/images/profile/profile.png" width="100" class="img-fluid rounded-circle" alt="">
                                    </div>
                                    <h3 class="mt-3 mb-1 text-white">Deangelo Sena</h3>
                                    <p class="text-white mb-0">Senior Manager</p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Patient Gender</span> <strong class="text-muted">Female	</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Years Old</span> <strong class="text-muted">Age: 24	</strong></li>
                                </ul>
                                <div class="card-footer border-0 mt-0">
                                    <button class="btn btn-primary btn-lg btn-block">
                                        <i class="fa fa-bell-o"></i> Reminder Alarm							
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-xxl-12 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Recent Payments Queue</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive recentOrderTable">
                                        <table class="table verticle-middle table-responsive-md">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Ward No.</th>
                                                    <th scope="col">coustomer</th>
                                                    <th scope="col">performer</th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Bills</th>
                                                    <th scope="col" class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>12</td>
                                                    <td>Mr. Bobby</td>
                                                    <td>Jackson</td>
                                                    <td>01 August 2020</td>
                                                    <td><span class="badge badge-rounded badge-success">Checkin</span></td>
                                                    <td>$120</td>
                                                    <td class="text-end">
                                                        <div class="dropdown custom-dropdown mb-0">
                                                            <div class="btn sharp btn-primary tp-btn" data-bs-toggle="dropdown">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="12" cy="5" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="12" cy="19" r="2"/></g></svg>
                                                            </div>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="javascript:void();;">Details</a>
                                                                <a class="dropdown-item text-danger" href="javascript:void();;">Cancel</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>10 </td>
                                                    <td>Mr. Dexter</td>
                                                    <td>Charles</td>
                                                    <td>31 July 2020</td>
                                                    <td><span class="badge badge-rounded badge-warning">Panding</span></td>
                                                    <td>$540</td>
                                                    <td class="text-end">
                                                        <div class="dropdown custom-dropdown mb-0">
                                                            <div class="btn sharp btn-primary tp-btn" data-bs-toggle="dropdown">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="12" cy="5" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="12" cy="19" r="2"/></g></svg>
                                                            </div>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="javascript:void();;">Details</a>
                                                                <a class="dropdown-item text-danger" href="javascript:void();;">Cancel</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>03 </td>
                                                    <td>Mr. Nathan</td>
                                                    <td>Frederick</td>
                                                    <td>30 July 2020</td>
                                                    <td><span class="badge badge-rounded badge-danger">Canceled</span></td>
                                                    <td>$301</td>
                                                    <td class="text-end">
                                                        <div class="dropdown custom-dropdown mb-0">
                                                            <div class="btn sharp btn-primary tp-btn" data-bs-toggle="dropdown">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="12" cy="5" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="12" cy="19" r="2"/></g></svg>
                                                            </div>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="javascript:void();;">Details</a>
                                                                <a class="dropdown-item text-danger" href="javascript:void();;">Cancel</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>05</td>
                                                    <td>Mr. Aurora</td>
                                                    <td>Roman</td>
                                                    <td>29 July 2020</td>
                                                    <td><span class="badge badge-rounded badge-success">Checkin</span></td>
                                                    <td>$099</td>
                                                    <td class="text-end">
                                                        <div class="dropdown custom-dropdown mb-0">
                                                            <div class="btn sharp btn-primary tp-btn" data-bs-toggle="dropdown">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="12" cy="5" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="12" cy="19" r="2"/></g></svg>
                                                            </div>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="javascript:void();;">Details</a>
                                                                <a class="dropdown-item text-danger" href="javascript:void();;">Cancel</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>06</td>
                                                    <td>Mr. Matthew</td>
                                                    <td>Samantha</td>
                                                    <td>28 July 2020</td>
                                                    <td><span class="badge badge-rounded badge-success">Checkin</span></td>
                                                    <td>$520</td>
                                                    <td class="text-end">
                                                        <div class="dropdown custom-dropdown mb-0">
                                                            <div class="btn sharp btn-primary tp-btn" data-bs-toggle="dropdown">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="12" cy="5" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="12" cy="19" r="2"/></g></svg>
                                                            </div>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="javascript:void();;">Details</a>
                                                                <a class="dropdown-item text-danger" href="javascript:void();;">Cancel</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-xxl-4 col-sm-6">
                            <div class="card text-white bg-primary">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Blood type :</span><strong>O+</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Allergies :</span><strong>Penicilin, peanuts </strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Pressure :</span><strong>120/100 mmHG</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Diseases :</span><strong>Diabetes</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Temperture :</span><strong>34 Degree</strong></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-xxl-4 col-sm-6">
                            <div class="card text-white bg-warning text-black">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Regular Checkups</span></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Dr Theodore Handle :</span><strong>Dentist</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Dr Valentino Morose :</span><strong>Surgeon</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Dr Fleece Marigold :</span><strong>Clinical</strong></li>
                                    <li class="list-group-item d-flex justify-content-between"><span class="mb-0">Dr Eric Widget :</span><strong>Cardiology</strong></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-12 col-xxl-4 col-sm-12">
                            <div class="card">
                                <div class="card-body text-center ai-icon  text-primary">
                                    <svg id="rocket-icon" class="my-2" viewBox="0 0 24 24" width="80" height="80" stroke="currentColor" stroke-width="1" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                    <line x1="3" y1="6" x2="21" y2="6"></line>
                                    <path d="M16 10a4 4 0 0 1-8 0"></path>
                                    </svg>
                                    <h4 class="my-2">You don’t have badges yet</h4>
                                    <a href="javascript:void();;" class="btn my-2 btn-primary btn-lg px-4"><i class="fa fa-usd"></i> Earn Budges</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-12 col-xxl-8 col-sm-12">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-xxl-6 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <div class="clearfix">
                                                <h3 class="card-title">Blood pressure</h3>
                                                <span>In the normal</span>
                                            </div>
                                            <div class="clearfix text-center">
                                                <h3 class="text-primary mb-0">120/89</h3>
                                                <span>mmHG</span>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <div class="ico-sparkline">
                                                <div id="spark-bar"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-xxl-6 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <div class="clearfix">
                                                <h3 class="card-title">Heart Rate</h3>
                                                <span class="text-danger">Above the normal</span>
                                            </div>
                                            <div class="clearfix text-center">
                                                <h3 class="text-danger mb-0">107</h3>
                                                <span>Per Min</span>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <div class="ico-sparkline">
                                                <div id="composite-bar"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-xxl-6 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <div class="clearfix">
                                                <h3 class="card-title">Glucose Rate</h3>
                                                <span>In the normal</span>
                                            </div>
                                            <div class="clearfix text-center">
                                                <h3 class="text-success mb-0">97</h3>
                                                <span>mg/dl</span>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <div class="ico-sparkline">
                                                <div id="sparkline8"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-xxl-6 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <div class="clearfix">
                                                <h3 class="card-title">Clolesterol</h3>
                                                <span>In the normal</span>
                                            </div>
                                            <div class="clearfix text-center">
                                                <h3 class="text-info mb-0">124</h3>
                                                <span>mg/dl</span>
                                            </div>
                                        </div>
                                        <div class="card-body text-center">
                                            <div class="ico-sparkline">
                                                <div id="sparkline9" class="height80;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-12 col-sm-12">
                            <div class="card overflow-hidden">
                                <div class="text-center p-5 overlay-box" style="background-image: url(public/assets/images/big/img5.jpg);">
                                    <img src="public/assets/images/profile/profile.png" width="100" class="img-fluid rounded-circle" alt="">
                                    <h3 class="mt-3 mb-0 text-white">Deangelo Sena</h3>
                                </div>
                                <div class="card-body">
                                    <div class="row text-center">
                                        <div class="col-6">
                                            <div class="bgl-primary rounded p-3">
                                                <h4 class="mb-0">Female</h4>
                                                <small>Patient Gender</small>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="bgl-primary rounded p-3">
                                                <h4 class="mb-0">Age: 24</h4>
                                                <small>Years Old</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer mt-0">
                                    <button class="btn btn-primary btn-lg btn-block">View Profile</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-xxl-6 col-sm-6">
                            <div class="card bg-primary">
                                <div class="card-body pb-0">
                                    <div class="row">
                                        <div class="col">
                                            <h5 class="text-white">Power</h5>
                                            <span class="text-white">2017.1.20</span>
                                        </div>
                                        <div class="col text-end">
                                            <h5 class="text-white"><i class="fa fa-caret-up"></i> 260</h5>
                                            <span class="text-white">+12.5(2.8%)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_1"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-xxl-6 col-sm-6">
                            <div class="card bg-success">
                                <div class="card-body pb-0">
                                    <div class="row">
                                        <div class="col">
                                            <h5 class="text-white">Power</h5>
                                            <span class="text-white">2017.1.20</span>
                                        </div>
                                        <div class="col text-end">
                                            <h5 class="text-white"><i class="fa fa-caret-up"></i> 260</h5>
                                            <span class="text-white">+12.5(2.8%)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <div id="chart_widget_5"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-xxl-6 col-sm-6">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <div class="row">
                                        <div class="col">
                                            <h5>3650</h5>
                                            <span>VIEWS OF YOUR PROJECT</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_2"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-xxl-6 col-sm-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row justify-content-between align-items-center">
                                        <div class="col-auto">
                                            <h4 class="text-uppercase">74,206 K</h4>
                                            <span>Lifetime earnings</span>
                                        </div>
                                        <div class="col-auto">
                                            <div class="chart-wrapper height100">
                                                <canvas id="chart_widget_7"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-12 col-xxl-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body pb-0">
                                            <div class="row justify-content-between">
                                                <div class="col-auto">
                                                    <h5>Lorem Ipsum</h5>
                                                </div>
                                                <div class="col-auto">
                                                    <h5>
                                                        <span><i class="fa fa-caret-up"></i></span>
                                                        <span>2,250</span>
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chart-wrapper">
                                            <div id="chart_widget_6"></div>
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-body pb-0">
                                            <div class="row justify-content-between">
                                                <div class="col-auto">
                                                    <h5>Lorem Ipsum</h5>
                                                </div>
                                                <div class="col-auto">
                                                    <h5>
                                                        <span><i class="fa fa-caret-up"></i></span>
                                                        <span>2,250</span>
                                                    </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chart-wrapper">
                                            <canvas id="chart_widget_3"></canvas>
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                                <div class="col text-center">
                                                    <h5 class="fw-normal">1230</h5>
                                                    <span>Type A</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <h4 class="card-title text-uppercase fw-normal">Market Now</h4>
                                    <h2 class="fw-normal text-danger">
                                        <span><i class="fa fa-caret-up"></i></span>
                                        <span>3454664</span>
                                    </h2>
                                    <div class="row mt-5">
                                        <div class="col text-center">
                                            <h5 class="fw-normal">APPL</h5>
                                            <span class="text-success">+ 82.24 %</span>
                                        </div>
                                        <div class="col text-center">
                                            <h5 class="fw-normal">FB</h5>
                                            <span class="text-danger">- 12.24 %</span>
                                        </div>
                                        <div class="col text-center">
                                            <h5 class="fw-normal">GOOG</h5>
                                            <span class="text-success">+ 42.24 %</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_4"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <h4 class="card-title text-uppercase fw-normal">Sales Analysis</h4>
                                    <h2 class="fw-normal text-danger">
                                        <span><i class="fa fa-caret-up"></i></span>
                                        <span>3454664</span>
                                    </h2>
                                    <div class="row mt-5">
                                        <div class="col text-center">
                                            <h5 class="fw-normal">Today</h5>
                                            <span class="text-success">+ 8224</span>
                                        </div>
                                        <div class="col text-center">
                                            <h5 class="fw-normal">Today</h5>
                                            <span class="text-danger">- 1224</span>
                                        </div>
                                        <div class="col text-center">
                                            <h5 class="fw-normal">Week</h5>
                                            <span class="text-success">+ 4224</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <div id="chart_widget_8"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-12">
                            <div class="card">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Top Products</h4>
                                </div>
                                <div class="card-body pb-0">
                                    <div class="widget-media">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/1.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-info">
                                                        KG
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-success">
                                                        <i class="fa fa-home"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time!</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_9"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-12">
                            <div class="card">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="card-title">Top Products</h4>
                                </div>
                                <div class="card-body pb-0">
                                    <div class="widget-media">
                                        <ul class="timeline">
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/4.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Dr sultads Send you Photo</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-primary light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-info">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/2.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Resport created successfully</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-info light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="timeline-panel">
                                                    <div class="media me-2 media-success">
                                                        <img alt="image" width="50" src="public/assets/images/avatar/3.jpg">
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="mb-1">Reminder : Treatment Time!</h5>
                                                        <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn btn-success light sharp" data-bs-toggle="dropdown">
                                                            <svg width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg>
                                                        </button>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="#">Edit</a>
                                                            <a class="dropdown-item" href="#">Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_10"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-xxl-8 col-lg-12">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card overflow-hidden">
                                        <div class="row no-gutters">
                                            <div class="col-5 p-0">
                                                <div class="card-body">
                                                    <h6 class="fw-normal text-uppercase">Weekly sales</h6>
                                                    <h4>$ 14000</h4>
                                                    <div>
                                                        <span class="badge badge-light">60%</span>
                                                        <span>Higher</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-7 p-0">
                                                <div class="chart-wrapper">
                                                    <canvas id="chart_widget_11"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5>570</h5>
                                            <p>All Sales</p>
                                        </div>
                                        <div class="chart-wrapper">
                                            <canvas id="chart_widget_14"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5>570</h5>
                                            <p>All Sales</p>
                                        </div>
                                        <div class="chart-wrapper">
                                            <canvas id="chart_widget_15"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-xxl-4 col-lg-12">
                            <div class="card">
                                <div class="chart-wrapper">
                                    <canvas id="chart_widget_16"></canvas>
                                </div>
                                <div class="card-body">
                                    <h4 class="card-title">Sales Status</h4>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="d-flex justify-content-between">
                                                <h6>67%</h6>
                                                <span>Grow</span>
                                            </div>
                                            <div class="progress">
                                                <div class="progress-bar bg-primary" style="width: 80%"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-4">
                                            <div class="d-flex justify-content-between">
                                                <h6>67%</h6>
                                                <span>Grow</span>
                                            </div>
                                            <div class="progress">
                                                <div class="progress-bar bg-success" style="width: 70%"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-4">
                                            <div class="d-flex justify-content-between">
                                                <h6>67%</h6>
                                                <span>Grow</span>
                                            </div>
                                            <div class="progress">
                                                <div class="progress-bar bg-info" style="width: 40%"></div>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-4">
                                            <div class="d-flex justify-content-between">
                                                <h6>67%</h6>
                                                <span>Grow</span>
                                            </div>
                                            <div class="progress">
                                                <div class="progress-bar bg-warning" style="width: 80%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6">
                            <div class="card overflow-hidden">
                                <div class="social-graph-wrapper widget-facebook">
                                    <span class="s-icon"><i class="fab fa-facebook-f"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-end">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">89</span> k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">119</span> k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6">
                            <div class="card overflow-hidden">
                                <div class="social-graph-wrapper widget-linkedin">
                                    <span class="s-icon"><i class="fab fa-linkedin"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-end">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">89</span> k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">119</span> k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6">
                            <div class="card overflow-hidden">
                                <div class="social-graph-wrapper widget-googleplus">
                                    <span class="s-icon"><i class="fab fa-google-plus-g"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-end">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">89</span> k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">119</span> k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-xxl-3 col-sm-6">
                            <div class="card overflow-hidden">
                                <div class="social-graph-wrapper widget-twitter">
                                    <span class="s-icon"><i class="fab fa-twitter"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-end">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">89</span> k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 ps-0 pe-0 text-center">
                                            <h4 class="m-1"><span class="counter">119</span> k</h4>
                                            <p class="m-0">Followers</p>
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
                    <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/" target="_blank">DexignZone</a> 2023</p>
                </div>
            </footer>
            <!--**********************************
        Footer end
    ***********************************-->

        </div>
        <script>
            var base_url = 'https://ventic.dexignzone.com/codeigniter/demo/';
        </script>
        <script src="public/assets/vendor/global/global.min.js"></script>
        <script src="public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>


        <script src="public/assets/vendor/chartjs/chart.bundle.min.js"></script>
        <script src="public/assets/vendor/apexchart/apexchart.js"></script>
        <script src="public/assets/vendor/chartist/js/chartist.min.js"></script>
        <script src="public/assets/vendor/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>
        <script src="public/assets/vendor/flot/jquery.flot.js"></script>
        <script src="public/assets/vendor/flot/jquery.flot.pie.js"></script>
        <script src="public/assets/vendor/flot/jquery.flot.resize.js"></script>
        <script src="public/assets/vendor/flot-spline/jquery.flot.spline.min.js"></script>
        <script src="public/assets/vendor/jquery-sparkline/jquery.sparkline.min.js"></script>
        <script src="public/assets/js/plugins-init/sparkline-init.js"></script>
        <script src="public/assets/vendor/peity/jquery.peity.min.js"></script>
        <script src="public/assets/js/plugins-init/piety-init.js"></script>
        <script src="public/assets/vendor/chartjs/chart.bundle.min.js"></script>
        <script src="public/assets/js/plugins-init/widgets-script-init.js"></script>

        <script src="public/assets/js/custom.min.js"></script>
        <script src="public/assets/js/deznav-init.js"></script>
        <script src="public/assets/js/demo.js"></script>
        <script src="public/assets/js/styleSwitcher.js"></script>


        <!--**********************************
            Main wrapper end
        ***********************************-->
    </body>

</html>