<%-- 
    Document   : reset-password
    Created on : May 26, 2024, 9:17:00 PM
    Author     : ADMIN
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reset Password - Movie Pro</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            .container {
                max-width: 400px;
                margin: 50px auto;
                padding: 20px;
                background: #fff;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                border-radius: 8px;
            }
            .header {
                text-align: center;
                margin-bottom: 20px;
            }
            .header h2 {
                margin: 0;
                font-size: 24px;
                color: #333;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                display: block;
                margin-bottom: 5px;
                color: #333;
            }
            .form-group input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            .form-group button {
                width: 100%;
                padding: 10px;
                background: #e74c3c;
                border: none;
                color: #fff;
                border-radius: 4px;
                font-size: 16px;
            }
            .form-group button:hover {
                background: #c0392b;
            }
            .form-group a {
                display: block;
                margin-top: 10px;
                text-align: center;
                color: #3498db;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h2>Reset Password</h2>
            </div>
            <form action="resetPassword" method="post">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" value="${mail}"   readonly>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" id="newPassword" name="newPassword"   required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
                <div class="form-group">
                    <button type="submit" onclick="return validatePasswords()">Reset Password</button>
                </div>
                <div class="form-group">
                    <a href="home">Back to Login</a>
                </div>
            </form>
        </div>
        <script>
            function validatePasswords() {
                var newPassword = document.getElementById("newPassword").value;
                var confirmPassword = document.getElementById("confirmPassword").value;
                var passwordPattern = /^\d{6,}$/; // Biểu thức chính quy kiểm tra mật khẩu phải có ít nhất 6 chữ số

                if (newPassword === confirmPassword && newPassword !== "" && passwordPattern.test(newPassword)) {
                    return true; // Cho phép thực hiện hành động tiếp theo (reset password)
                } else if(!passwordPattern.test(newPassword)){
                    alert("Password must  contain at least 6 digits!"); // Hiển thị cảnh báo nếu mật khẩu không hợp lệ
                    return false; // Ngăn người dùng tiếp tục
                }else{
                    alert("Password must  match!"); // Hiển thị cảnh báo nếu mật khẩu không hợp lệ
                    return false; // Ngăn người dùng tiếp tục
                }
            }
        </script>

    </body>
</html>

