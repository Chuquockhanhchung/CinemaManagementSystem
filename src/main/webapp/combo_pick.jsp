<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2024/07/11
  Time: 4:15
  To change this template use File | Settings | File Templates.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Online</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .header, .footer {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
        }
        .main {
            padding: 20px;
        }
        .countdown {
            float: right;
            background-color: red;
            color: white;
            padding: 10px;
            border-radius: 5px;
        }
        .combo {
            border: 1px solid #ddd;
            margin: 10px 0;
            padding: 10px;
        }
        .combo img {
            max-width: 100px;
            float: left;
            margin-right: 10px;
        }
        .combo h3 {
            margin: 0;
            font-size: 18px;
        }
        .combo p {
            margin: 5px 0;
        }
        .combo .price {
            font-size: 18px;
            color: red;
        }
        .combo .quantity {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<script>
    function updateQuantity(button, maxAmount) {
        var quantityInput = button.parentNode.querySelector('input');
        var currentValue = parseInt(quantityInput.value);
        if (button.textContent === "+") {
            if (currentValue < maxAmount) {
                quantityInput.value = currentValue + 1;
            }
        } else {
            if (currentValue > 0) {
                quantityInput.value = currentValue - 1;
            }
        }
    }
    // function submitCombos() {
    //     var combos = [];
    //     document.querySelectorAll('.combo').forEach(function(combo) {
    //         var comboId = combo.getAttribute('data-combo-id');
    //         var quantity = combo.querySelector('input').value;
    //         if (quantity > 0) {
    //             combos.push({id: comboId, quantity: quantity});
    //         }
    //     });
    //     console.log(combos);
    //     var form = document.getElementById('combo-form');
    //     var input = document.getElementById('combo-data');
    //     input.value = JSON.stringify(combos);
    //     form.submit();
    // }
</script>

<body>
<div class="header">
    <h1>Chọn combo bắp nước</h1>
</div>
<div class="main">
    <h2>Bắp Nước</h2>
    <c:forEach items="${sessionScope.combos}" var="c">
        <c:if test="${c.getAmount()>0}">
            <div class="combo" data-combo-id="${c.getId()}">
                <img src="${c.getImg()}" alt="${c.getName()}">
                <h3>${c.getName()}</h3>
                <p>${c.getDescription()}</p>
                <p class="price">Giá: ${c.getPrice()} ₫</p>
                <div class="quantity">
                    <button onclick="updateQuantity(this, ${c.getAmount()})">-</button>
                    <input type="text" value="0" size="1" readonly>
                    <button onclick="updateQuantity(this, ${c.getAmount()})">+</button>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>
<div class="footer">
    <p>&copy; 2024 CGV Cinemas. All rights reserved.</p>
</div>
</body>
</html>
