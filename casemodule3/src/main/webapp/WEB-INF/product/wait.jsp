<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>product Management Application</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="/product?action=create">Add New product</a>
  </h2>
</center>
<div align="center">
  <table border="1" cellpadding="5">
    <caption><h2>List of product</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>price</th>
      <th>quantity</th>
      <th>color</th>
      <th>size</th>
      <th>category</th>
      <th>create date</th>
      <th>create update</th>
      <th>image</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${listProduct}">
      <tr>
        <td><c:out value="${product.getIdProduct()}"/></td>
        <td><c:out value="${product.getName()}"/></td>
        <td><c:out value="${product.getPrice()}"/></td>
        <td><c:out value="${product.getQuantity()}"/></td>

        <c:forEach items="${requestScope['listColor']}" var="color">
          <c:if test="${color.getIdColor() == product.getIdColor()}">
            <td>${color.getNameColor()}</td>
          </c:if>
        </c:forEach>

        <c:forEach items="${listSize}" var="size">
          <c:if test="${product.getIdSize() == size.getIdSize()}">
            <td>${size.getNumberSize()}</td>
          </c:if>
        </c:forEach>

        <c:forEach items="${listCategory}" var="category">
          <c:if test="${product.getIdCategory() == category.getIdCategory()}">
            <td>${category.getTypeProduct()}</td>
          </c:if>
        </c:forEach>
        <td><c:out value="${product.getCreateTimeDate()}"/></td>
        <td><c:out value="${product.getUpdateTimeDate()}"/></td>


        <td><c:out value="${product.getImage()}"/></td>

        <td>
          <a href="/users?action=edit&id=${product.getIdProduct()}">Edit</a>
          <a href="/users?action=delete&id=${product.getIdProduct()}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
