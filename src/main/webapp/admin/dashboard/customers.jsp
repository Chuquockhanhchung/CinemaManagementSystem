<%--
  Created by IntelliJ IDEA.
  User: datla
  Date: 6/1/2024
  Time: 8:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <!-- Title -->
    <title> Ticketing Admin Dashboard</title>
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

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="icon" type="image/png" sizes="16x16"
          href="${pageContext.request.contextPath}/public/assets/images/favicon.png">


    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/chartist/css/chartist.min.css" rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/datatables/css/jquery.dataTables.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
          rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
          rel="stylesheet"
          type="text/css"/>

<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"--%>
<%--          integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="--%>
<%--          crossorigin="anonymous" referrerpolicy="no-referrer"/>--%>

    <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
          type="text/css"/>
    <style>
        /* Basic styling for popup */
        /* Basic styling for popup */
        /* Basic styling for popup */
        .popup {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .popup-content {
            left: 35%;
            background: white;
            padding: 40px;
            border-radius: 10px;
            width: 500px; /* Increased width */
            position: relative;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            font-size: 20px; /* Increased font size for better visibility */
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
        }

        input, select {
            margin-top: 5px;
            padding: 10px;
            font-size: 16px; /* Increased font size for better readability */
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px; /* Increased font size */
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
        .dropdown-menu {
            display: block; /* hoặc inline-block */
            visibility: visible;
            opacity: 1;
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
<div id="main-wrapper show">


    <%@include file="../header.jsp" %>

    <script>
        document.querySelector('.dropdown-toggle').addEventListener('click', function() {
            document.querySelector('.dropdown-menu').classList.toggle('show');
        })
    </script>
    <!--**********************************
Header end 
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
    <div class="content-body default-height">
        <!-- row -->
        <div class="container-fluid">

            <div class="form-head mb-4 d-flex flex-wrap align-items-center">
                <div class="me-auto">
                    <h2 class="font-w600 mb-0">Danh Sách Tài Khoản</h2>
                </div>


            </div>
            <div class="row mb-4 align-items-center">
                <div class="container mt-5">
                    <div class="col-xl-3 col-lg-4 mb-4 mb-lg-0">
                        <a href="javascript:void(0);" class="btn btn-secondary btn-lg btn-block rounded text-white" id="triggerModal">Thêm Tài Khoản</a>
                    </div>

                    <!-- Add Customer Modal -->
                    <div class="modal fade" id="addNewCustomer" tabindex="-1" aria-labelledby="addNewCustomerLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="addNewCustomerLabel">Thêm Tài Khoản</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="adaccount" method="get" id="addCustomerForm">
                                        <div class="mb-3">
                                            <label class="text-black font-w500">Email</label>
                                            <input type="text" name="email" class="form-control">
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-black font-w500">Phân Quyền</label>
                                            <input type="text" class="form-control" value="Nhân Viên" readonly>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-black font-w500">Ngày Tạo</label>
                                            <input class="form-control mb-3" type="date" id="datepicker">
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-black font-w500">Password</label>
                                            <input type="text" class="form-control" name="pass">
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary light" value="Tạo">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Include Bootstrap JS and dependencies -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

                <script>
                    document.getElementById('triggerModal').addEventListener('click', function() {
                        var myModal = new bootstrap.Modal(document.getElementById('addNewCustomer'), {
                            backdrop: 'static',
                            keyboard: false
                        });
                        myModal.show();

                        // Set the attributes
                        var modalElement = document.getElementById('addNewCustomer');
                        modalElement.setAttribute('aria-modal', 'true');
                        modalElement.setAttribute('role', 'dialog');
                        modalElement.style.display = 'block';
                    });
                </script>

                <script>
                    document.addEventListener('DOMContentLoaded', () => {
                        const form = document.querySelector('#addCustomerForm');
                        const emailInput = form.querySelector('input[name="email"]');

                        // Retrieve the existing emails from JSTL
                        const existingEmails = [
                            <c:forEach var="account" items="${listAcc}" varStatus="status">
                            "${account.getEmail()}"<c:if test="${!status.last}">, </c:if>
                            </c:forEach>
                        ];

                        form.addEventListener('submit', (event) => {
                            event.preventDefault(); // Prevent the default form submission

                            const email = emailInput.value;

                            // Perform client-side validation
                            if (!email) {
                                alert('Email không được để trống.');
                                return;
                            }

                            // Check if the email already exists
                            if (existingEmails.includes(email)) {
                                alert('Email đã tồn tại. Vui lòng sử dụng một email khác.');
                                return;
                            }

                            // If validation passes, submit the form
                            form.submit();
                        });
                    });
                </script>
                <div class="col-xl-9 col-lg-8">
                    <div class="card m-0 ">
                        <div class="card-body py-3 py-md-2">
                            <div class="d-sm-flex  d-block align-items-center">
                                <div class="d-flex mb-sm-0 mb-3 me-auto align-items-center">
                                    <svg class="me-2 user-ico mb-1" width="24" height="24" viewBox="0 0 24 24"
                                         fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <g clip-path="url(#clip0)">
                                            <path
                                                    d="M21 24H3C2.73478 24 2.48043 23.8946 2.29289 23.7071C2.10536 23.5196 2 23.2652 2 23V22.008C2.00287 20.4622 2.52021 18.9613 3.47044 17.742C4.42066 16.5227 5.74971 15.6544 7.248 15.274C7.46045 15.2219 7.64959 15.1008 7.78571 14.9296C7.92182 14.7583 7.9972 14.5467 8 14.328V13.322L6.883 12.206C6.6032 11.9313 6.38099 11.6036 6.22937 11.2419C6.07776 10.8803 5.99978 10.4921 6 10.1V5.96201C6.01833 4.41693 6.62821 2.93765 7.70414 1.82861C8.78007 0.719572 10.2402 0.0651427 11.784 5.16174e-06C12.5992 -0.00104609 13.4067 0.158488 14.1603 0.469498C14.9139 0.780509 15.5989 1.2369 16.1761 1.81263C16.7533 2.38835 17.2114 3.07213 17.5244 3.82491C17.8373 4.5777 17.999 5.38476 18 6.20001V10.1C17.9997 10.4949 17.9204 10.8857 17.7666 11.2495C17.6129 11.6132 17.388 11.9426 17.105 12.218L16 13.322V14.328C16.0029 14.5469 16.0784 14.7586 16.2147 14.9298C16.351 15.1011 16.5404 15.2221 16.753 15.274C18.251 15.6548 19.5797 16.5232 20.5298 17.7424C21.4798 18.9617 21.997 20.4624 22 22.008V23C22 23.2652 21.8946 23.5196 21.7071 23.7071C21.5196 23.8946 21.2652 24 21 24ZM4 22H20C19.9954 20.8996 19.6249 19.8319 18.9469 18.9651C18.2689 18.0983 17.3219 17.4816 16.255 17.212C15.6125 17.0494 15.0423 16.6779 14.6341 16.1558C14.2259 15.6337 14.0028 14.9907 14 14.328V12.908C14.0001 12.6428 14.1055 12.3885 14.293 12.201L15.703 10.792C15.7965 10.7026 15.8711 10.5952 15.9221 10.4763C15.9731 10.3574 15.9996 10.2294 16 10.1V6.20001C16.0017 5.09492 15.5671 4.03383 14.7907 3.24737C14.0144 2.46092 12.959 2.01265 11.854 2.00001C10.8264 2.04117 9.85379 2.47507 9.1367 3.21225C8.41962 3.94943 8.01275 4.93367 8 5.96201V10.1C7.99979 10.2266 8.0249 10.352 8.07384 10.4688C8.12278 10.5856 8.19458 10.6914 8.285 10.78L9.707 12.2C9.89455 12.3875 9.99994 12.6418 10 12.907V14.327C9.99724 14.9896 9.77432 15.6325 9.3663 16.1545C8.95827 16.6766 8.3883 17.0482 7.746 17.211C6.67872 17.4804 5.73137 18.0972 5.05318 18.9642C4.37498 19.8313 4.00447 20.8993 4 22Z"
                                                    fill="#000"/>
                                        </g>
                                        <defs>
                                            <clipPath id="clip0">
                                                <rect width="24" height="24" fill="white"/>
                                            </clipPath>
                                        </defs>
                                    </svg>
                                    <div class="media-body">
                                        <p class="mb-1 fs-12 ">Tổng Số Tài Khoản</p>
                                        <h3 class="mb-0 font-w600 fs-22"> ${numberAcc} Tài Khoản</h3>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--            Edir Popup--%>
            <div id="editUserPopup" class="popup" style="display:none;">
                <div class="popup-content" >
                    <span class="close-btn">&times;</span>
                    <form id="editUserForm" action="edit" method="get">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" readonly required>

                        <label for="role">Phân Quyền</label>
                        <select id="role" name="role">

                            <option value="3">Nhân Viên</option>
                            <option value="4">Quản Lí</option>
                        </select>


                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>

                        <button type="submit">Sửa</button>
                    </form>
                </div>
            </div>

            <script>
                document.addEventListener('DOMContentLoaded', (event) => {
                    const popup = document.getElementById('editUserPopup')
                    const closeBtn = document.querySelector('.close-btn');
                    const emailField = document.getElementById('email');
                    const roleField = document.getElementById('role');

                    function openEditPopup(accountID, email, role) {
                        emailField.value = email;
                        roleField.value = role;
                        popup.style.display = 'block';
                    }

                    closeBtn.addEventListener('click', () => {
                        popup.style.display = 'none';
                    });

                    window.addEventListener('click', (event) => {
                        if (event.target === popup) {
                            popup.style.display = 'none';
                        }
                    });

                    window.openEditPopup = openEditPopup;
                });
            </script>
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive rounded">
                        <table id="example5" class="table customer-table display mb-4 fs-14 card-table">
                            <thead>
                            <tr>

                                <th>Mã Tài Khoản</th>
                                <th>Email</th>

                                <th>Phân quyền</th>
                                <th>Ngày Tạo</th>
                                <th>Trạng Thái</th>
                                <th>Chỉnh Sửa</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${listAcc}" var="a">
                                <tr>

                                    <td>${a.getAccountID()}</td>
                                    <td>${a.getEmail()}</td>

                                    <td><c:choose>
                                        <c:when test="${a.getAccountType() == 1}">Khách Hàng</c:when>
                                        <c:when test="${a.getAccountType() == 2}">ADMIN</c:when>
                                        <c:when test="${a.getAccountType() == 3}">Nhân Viên</c:when>
                                        <c:when test="${a.getAccountType() == 4}">Quản Lí</c:when>
                                    </c:choose></td>

                                    <td>${a.getCreationDate()}</td>
                                    <td><c:choose>
                                        <c:when test="${a.getStatus() =='active'}">Hoạt Động</c:when>
                                        <c:when test="${a.getStatus() =='unactive'}">Vô Hiệu</c:when>
                                    </c:choose></td>
                                    <td>
                                        <c:if test="${a.getAccountType() != 2&& a.getAccountType() != 1}">
                                            <button onclick="confirmChangeStatus('${a.getAccountID()}', '${a.getStatus()}')" class="btn btn-outline-primary">Đổi Trạng Thái</button>
                                            <button onclick="openEditPopup('${a.getAccountID()}', '${a.getEmail()}', '${a.getAccountType()}')" class="btn btn-outline-danger">Sửa</button>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            <script>
                                function confirmChangeStatus(accountID, currentStatus) {
                                    var confirmMsg = currentStatus === 'active' ? 'Bạn có chắc chắn muốn vô hiệu hóa tài khoản này?' : 'Bạn có chắc chắn muốn kích hoạt tài khoản này?';
                                    if (confirm(confirmMsg)) {
                                        // Perform the change status action here
                                        console.log(confirmMsg);
                                        changeStatus(accountID,currentStatus);
                                    }
                                }

                                function changeStatus(accountID,currentStatus) {
                                    // Implement the logic to change the status of the account
                                    // You can use AJAX to send a request to the server to update the status
                                    $.ajax({
                                        url: 'activate', // Đường dẫn của servlet
                                        method: 'POST',
                                        data: { accountID: accountID,
                                            currentStatus:currentStatus},
                                        success: function(response) {
                                            // Xử lý phản hồi thành công
                                            console.log(response);
                                            location.reload();
                                        },
                                        error: function(xhr, status, error) {
                                            // Xử lý phản hồi lỗi
                                            console.error('Error:', error);
                                        }
                                    });
                                }
                            </script>

                            </tbody>
                        </table>
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
            <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/"
                                                          target="_blank">DexignZone</a> 2023</p>
        </div>
    </footer>
    <!--**********************************
Footer end
***********************************-->

</div>





<script>
    var base_url = 'https://ventic.dexignzone.com/codeigniter/demo/';
</script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/global/global.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>


<script src="${pageContext.request.contextPath}/public/assets/vendor/chartjs/chart.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/datatables.init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/js/bootstrap-datepicker.min.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>
<script>

</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
      rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(function () {
        $("#datepicker").datepicker({
            autoclose: true,
            todayHighlight: true
        }).datepicker('update', new Date());

    });
</script>
<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>