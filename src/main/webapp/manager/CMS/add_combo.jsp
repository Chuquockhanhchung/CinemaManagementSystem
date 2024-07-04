<%--
  Created by IntelliJ IDEA.
  User: Chi
  Date: 7/4/2024
  Time: 12:18 AM
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
  <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-select/css/bootstrap-select.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link href="${pageContext.request.contextPath}/public/assets/vendor/bootstrap-datepicker-master/css/bootstrap-datepicker.min.css"
        rel="stylesheet"
        type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <link class="main-css" href="${pageContext.request.contextPath}/public/assets/css/style.css" rel="stylesheet"
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
          <li class="breadcrumb-item"><a href="manager">CMS</a></li>
          <li class="breadcrumb-item active"><a href="combo">Danh sách combo</a></li>
          <li class="breadcrumb-item active"><a href="addCombo">Thêm combo</a></li>
        </ol>
      </div>
      <!-- Row -->
      <div class="row">
        <div class="col-xl-12">
          <div class="mb-3">
            <ul class="d-flex align-items-center flex-wrap">
              <li><a href="combo"
                     class="btn btn-primary">Danh sách combo</a></li>
            </ul>
          </div>


          <div class="row">
            <div class="col-xl-11">
              <form action="addCombo" method="post">
                <div class="filter cm-content-box box-primary">


                </div>
                <div class="filter cm-content-box box-primary">

                  <div class="cm-content-body   form excerpt">
                    <div class="card-body">
                      <label class="form-label">Tên combo</label>
                      <input type="text" value="${requestScope.combo.getName()}" name="name"
                             class="form-control mb-3" placeholder="Tên combo">

                    </div>
                  </div>
                </div>

                <div class="filter cm-content-box box-primary">
                  <div class="cm-content-body   form excerpt">
                    <div class="card-body">
                      <label class="form-label">Sản phẩm</label>
                      <div class="col-xl-2 col-lg-3 col-sm-4">
                        <c:if test="${sessionScope.product != null}">
                          <c:forEach items="${sessionScope.product}" var="i">
                            <div class="form-check mb-sm-3 mb-1">
                              <input class="form-check-input"
                              <c:forEach items="${requestScope.p}" var="p">
                                ${p == i.getProductID()+"" ?"checked" : ""}
                              </c:forEach>

                                     type="checkbox" name="product" value="${i.getProductID()}"
                                     id="flexCheckDefault-1">
                              <label class="form-check-label mb-0 text-nowrap"
                                     for="flexCheckDefault-1">
                                  ${i.getProductName()}
                              </label>
                            </div>
                          </c:forEach>
                        </c:if>


                      </div>
                    </div>


                  </div>
                </div>
                <div class="filter cm-content-box box-primary">

                  <div class="cm-content-body   form excerpt">
                    <div class="card-body">
                      <label class="form-label">Mô tả</label>
                      <input type="text" value="${requestScope.combo.getDescription()}"
                             name="des" class="form-control mb-3" placeholder="Mô tả">

                    </div>
                  </div>
                </div>
                  <div class="filter cm-content-box box-primary">

                      <div class="cm-content-body   form excerpt">
                          <div class="card-body">
                              <label class="form-label">Ảnh Combo</label>
                              <input type="text" value="${requestScope.combo.getImg()}"
                                     name="img" class="form-control mb-3" placeholder="Ảnh Combo">

                          </div>
                      </div>
                  </div>
                  <div class="filter cm-content-box box-primary">

                      <div class="cm-content-body   form excerpt">
                          <div class="card-body">
                              <label class="form-label">Gía Combo</label>
                              <input type="text" value="${requestScope.combo.getPrice()}"
                                     name="price" class="form-control mb-3" placeholder="Gía Combo">

                          </div>
                      </div>
                  </div>

                <c:if test="${requestScope.err != null}">
                  <div class="alert alert-danger" role="alert">
                      ${requestScope.err}
                  </div>
                </c:if>
                <div>
                  <input type="submit" class="btn btn-primary mb-3" value="Thêm Combo">

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
      <p>Copyright © Designed &amp; Developed by <a href="https://dexignzone.com/" target="_blank">MCN</a>
        2024</p>
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


<script src="${pageContext.request.contextPath}/public/assets/vendor/select2/js/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/plugins-init/select2-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/vendor/ckeditor/ckeditor.js"></script>

<script src="${pageContext.request.contextPath}/public/assets/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/deznav-init.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/public/assets/js/styleSwitcher.js"></script>
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
<script>
  document.getElementById('addInputBtn').addEventListener('click', function () {
    var inputContainer = document.getElementById('inputContainer');

    // Tạo một thẻ div chứa toàn bộ form mới
    var newForm = document.createElement('div');
    newForm.className = 'cm-content-body form excerpt';

    // Tạo nội dung cho form mới
    var formContent = `
        <div class="card-body">
            <label class="form-label">Tên Diễn viên</label>
            <input type="text" name="act" class="form-control mb-3" placeholder="Tên phim">
        </div>
        <div class="card-body">
            <label class="form-label">Hình ảnh</label>
            <input type="text" name="im" class="form-control mb-3" placeholder="Mô tả">
        </div>
    `;

    // Thêm nội dung vào thẻ div mới
    newForm.innerHTML = formContent;

    // Thêm thẻ div mới vào container
    inputContainer.appendChild(newForm);
  });
</script>


<!--**********************************
    Main wrapper end
***********************************-->
</body>

</html>
