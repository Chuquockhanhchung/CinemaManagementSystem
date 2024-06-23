<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .profile-header {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }
        .profile-content {
            padding: 20px;
        }
        .profile-content h1 {
            font-size: 24px;
        }
        .profile-content .form-group {
            margin-bottom: 1rem;
        }
        .profile-content label {
            font-weight: bold;
        }
        .avatar-preview {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="profile-header text-center">
        <h2>Thông Tin Cá Nhân</h2>
    </div>
    <div class="profile-content">
        <h1>Thông Tin Cá Nhân</h1>
        <form>
            <div class="form-group">
                <label for="username">Tên người dùng:</label>
                <input type="text" class="form-control" id="username" placeholder="Nhập tên người dùng" value="Nguyễn Tiến Đạt">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Nhập email" value="example@gmail.com">
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại:</label>
                <input type="tel" class="form-control" id="phone" placeholder="Nhập số điện thoại" value="0123456789">
            </div>
            <div class="form-group">
                <label for="address">Địa chỉ:</label>
                <input type="text" class="form-control" id="address" placeholder="Nhập địa chỉ" value="Hà Nội, Việt Nam">
            </div>
            <div class="form-group">
                <label for="gender">Giới tính:</label>
                <select class="form-control" id="gender">
                    <option value="male">Nam</option>
                    <option value="female">Nữ</option>
                    <option value="other">Khác</option>
                </select>
            </div>
            <div class="form-group">
                <label for="avatar">Ảnh đại diện:</label>
                <input type="file" class="form-control-file" id="avatar"  onchange="previewAvatar(event)">
                <img id="avatarPreview" class="avatar-preview mt-3" src="default-avatar.png" alt="Avatar Preview">
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script>
    function previewAvatar(event) {
        const [file] = event.target.files;
        if (file) {
            document.getElementById('avatarPreview').src = URL.createObjectURL(file);
        }
    }
</script>
</body>
</html>
