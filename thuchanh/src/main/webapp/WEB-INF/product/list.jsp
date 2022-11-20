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

            <div class="row" style="margin-left: 10px">
                <div class="col-lg-6">
                    <h3> <a href="/product?action=create"><button class="btn btn-dark">Add Product</button></a></h3>
                </div>

                <div class="input-group col-lg-6">
                    <form action="/product">
                        <div class="row">
                            <input style="width: 300px; height: 50px" type="text" class="form-control rounded" placeholder="Search..." aria-label="Search"
                                   aria-describedby="search-addon" name="search" id="myInput" value="${search}"/>
                            <button style="height: 50px"  type="get" class="btn btn-dark">Search</button>
                        </div>
                    </form>
                </div>

            </div>
            <div class="shopping_cart_area">
                    <div class="row">
                        <div class="col-12">
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Price (vnd)</th>
                                        <th>Quantity</th>
                                        <th>Color</th>
                                        <th>Description</th>
                                        <th>Category</th>
                                        <th class="actions text-center">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="product" items="${listProduct}">
                                        <tr>
                                            <td><c:out value="${product.getIdProduct()}"/></td>
                                            <td><c:out value="${product.getNameProduct()}"/></td>
                                            <td class="text-center"><fmt:formatNumber pattern="#,##0" value="${product.getPrice()}"/></td>
                                            <td class="text-center"><c:out value="${product.getQuantity()}"/></td>
                                            <td class="text-center"><c:out value="${product.getColor()}"/></td>
                                            <td class="text-center"><c:out value="${product.getDescription()}"/></td>

                                            <c:forEach items="${listCategory}" var="category">
                                                <c:if test="${product.getIdCategory() == category.getIdCategory()}">
                                                    <td>${category.getNameCategory()}</td>
                                                </c:if>
                                            </c:forEach>
                                            <td class="text-right">
                                                <button type="button" style="width:70px" class="btn btn-success m-2"> <a style="color:white" href="/product?action=edit&id=${product.getIdProduct()}">Edit</a></button>
                                                <button type="button" class="btn btn-danger"><a style="color: white" href="/product?action=delete&id=${product.getIdProduct()}">Delete</a></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

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
