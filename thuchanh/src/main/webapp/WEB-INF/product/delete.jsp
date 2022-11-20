<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <jsp:include page="/WEB-INF/layout/csslink.jsp"></jsp:include>
</head>
<body>
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="container">
    <!--pos page inner-->
    <div class="pos_page_inner">
        <!--header area -->
        <jsp:include page="/WEB-INF/layout/headarea.jsp"></jsp:include>
        <!--header end -->
        <!--shopping cart area start -->
        <div class="shopping_cart_area">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-border-color card-border-color-primary">
                        <div class="card-header card-header-divider">
<%--                            <button type="button" style="margin-left: 20px" class="btn btn-info"><a href="/product">Back to the list product</a></button>--%>
                            <c:if test="${requestScope.message != null}">
                                <%--                        <div class="row" style="width: 300px">--%>
                                <h4 style="margin-left: 20px">${message}</h4>
                            </c:if>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-9">
                                    <form method="post">
                                        <table>
                                            <tr>
                                                <th class="p-md-4">Name Product</th>
                                                <td>
                                                    <input style="width: 450px" type="text" name="name" value="${requestScope.product.getNameProduct()}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Price</th>
                                                <td>
                                                    <input style="width: 450px" type="number" name="price" value="${requestScope.product.getPrice()}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Quantity</th>
                                                <td>
                                                    <input style="width: 450px" type="number" name="quantity" value="${requestScope.product.getQuantity()}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Color</th>
                                                <td>
                                                    <input style="width: 450px" type="text" name="color" value="${requestScope.product.getColor()}">
                                                </td>
                                            </tr>

                                            <tr>
                                                <th class="p-md-4">Description</th>
                                                <td>
                                                    <input style="width: 450px" type="text" name="description" value="${requestScope.product.getDescription()}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Category</th>
                                                <td>
                                                    <select name="idcategory">
                                                        <c:forEach items="${listCategory}" var="category">
                                                            <option
                                                                    <c:if test="${category.getIdCategory() == product.getIdCategory()}">selected</c:if>
                                                                    value="${category.getIdCategory()}">${category.getNameCategory()}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-md-4">
                                                    <input onclick="return confirm('Are you sure?')" type="submit" value="delete Product" class="btn btn-dark">
                                                </td>
                                                <td>
                                                    <button type="button" style="margin-left: 20px" class="btn btn-info"><a href="/product">Back to the list product</a></button>

                                                </td>
                                            </tr>

                                        </table>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="wishlist-share">
                    <h4>Share on:</h4>
                    <ul>
                        <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                        <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--shopping cart area end -->
</div>
</div>
<!-- all js here -->
<jsp:include page="/WEB-INF/layout/csslink.jsp"></jsp:include>
</body>
</html>
