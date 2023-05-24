<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/24/2023
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Product form</h1>
    <c:choose>
        <c:when test="${empty product.id}">
            <form action="products?action=create" method="POST">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name">
                <br><br>
                <label for="price">Price:</label>
                <input type="text" id="price" name="price">
                <br><br>
                <label for="quantity">Quantity:</label>
                <input type="text" id="quantity" name="quantity">
                <br><br>
                <input type="submit" value="Create">
                <a href="products" class="button">Cancel</a>
            </form>
        </c:when>

        <c:otherwise>
            <form action="products?action=update" method="POST">
                <input type="hidden" name="id" value="${product.id}">
                <label for="name2">Name:</label>
                <input type="text" id="name2" name="name" value="${product.name}">
                <br><br>
                <label for="price2">Price:</label>
                <input type="text" id="price2" name="price" value="${product.price}">
                <br><br>
                <label for="quantity2">Quantity:</label>
                <input type="text" id="quantity2" name="quantity" value="${product.quantity}">
                <br><br>

                <input type="submit" value="Update">
                <a href="products" class="button">Cancel</a>
            </form>
            <form action="products?action=delete" method="POST">
                <input type="hidden" name="id" value="${product.id}">
                <input type="submit" class="button" value="Delete">
            </form>
        </c:otherwise>
    </c:choose>
</body>
</html>
