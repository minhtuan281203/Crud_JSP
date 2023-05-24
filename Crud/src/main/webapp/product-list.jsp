<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/24/2023
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Product list</h1>
  <a href="products?action=new" class="button add-button">Add new Product</a>
  <table>
    <tr>
      <td>ID</td>
      <td>Name</td>
      <td>Price</td>
      <td>Quantity</td>
    </tr>
    <c:forEach var="prod" items="${productList}">
      <tr>
        <td>${prod.id}</td>
        <td>${prod.name}</td>
        <td>${prod.price}</td>
        <td>${prod.quantity}</td>
        <td>
          <a class="button" href="products?action=edit&id=${prod.id}">Edit</a>
          <a class="button" href="products?action=delete&id=${prod.id}"
            onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
