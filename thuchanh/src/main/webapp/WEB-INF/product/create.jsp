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
      <form action="" method="post">
        <div class="row">
          <div class="col-12">
            <div class="new_product_area product_two">
              <div class="row form-control">
                <div class="col-12">
                  <div class="row" style="margin-left: 25px">
<%--                    <button type="button" class="btn btn-info"><a href="/product">Back to list product</a></button>--%>

                    <c:if test="${requestScope.message != null}">
                      <h6>${message}</h6>
                    </c:if>
                  </div>
                  <div class="row">
                    <div class="card-body col-8">
                      <form method="POST">
                        <table>
                          <tr>
                            <th class="p-md-4">Name Product</th>
                            <td>
                              <input type="text" name="name" value="${product.getNameProduct()}">
                            </td>
                          </tr>
                          <tr>
                            <th class="p-md-4">Price</th>
                            <td>
                              <c:choose>
                                <c:when test="${product.getPrice()==0}">
                                  <input type="number" value="" name="price" step="0">
                                </c:when>
                                <c:otherwise>
                                  <input type="number" value="${product.getPrice()}" name="price" step="0">
                                </c:otherwise>
                              </c:choose>
                            </td>
                          </tr>
                          <tr>
                            <th class="p-md-4">Quantity</th>
                            <td>
                              <c:choose>
                                <c:when test="${product.getQuantity()== 0}">
                                  <input type="number" value="" name="quantity">
                                </c:when>
                                <c:otherwise>
                                  <input type="number" value="${product.getQuantity()}" name="quantity">
                                </c:otherwise>
                              </c:choose>
                            </td>
                          </tr>
                          <tr>
                            <th class="p-md-4">Color Product</th>
                            <td>
                              <input type="text" name="color" value="${product.getColor()}">
                            </td>
                          </tr>
                          <tr>
                            <th class="p-md-4">Description Product</th>
                            <td>
                              <input type="text" name="description" value="${product.getDescription()}">
                            </td>
                          </tr>

                          <tr>
                            <th class="p-md-4">Category</th>
                            <td>
                              <select name="idcategory">
                                <c:forEach items="${requestScope.listCategory}" var="category">
                                  <c:choose>
                                    <c:when test="${product.getIdCategory() == category.getIdCategory()}">
                                      <option value="${category.getIdCategory()}"
                                              selected>
                                          ${category.getNameCategory()}
                                      </option>
                                    </c:when>
                                    <c:otherwise>
                                      <option value="${category.getIdCategory()}">
                                          ${category.getNameCategory()}
                                      </option>
                                    </c:otherwise>
                                  </c:choose>
                                </c:forEach>
                              </select>
                            </td>
                          </tr>
                          </tr>
                          <tr>
                            <td class="p-md-4">
                              <input style="background-color: #0c5460;width: 100px;color: whitesmoke" type="submit" value="Add Product">
                            </td>
                            <td>
                              <button type="button" class="btn btn-info"><a href="/product">Back to list product</a></button>
                            </td>
                          </tr>
                        </table>
                      </form>
                    </div>
                    <div class="card-body col-4">
                      <c:if test="${requestScope.errors != null}">
                        <p>WARNING</p>
                        <ul>
                          <c:forEach items="${requestScope.errors}" var="error">
                            <li>
                              <p style="color:red">${error}</p>
                            </li>
                          </c:forEach>
                        </ul>
                      </c:if>
                    </div>
                  </div>
                </div>
              </div>
              <!--brand logo end-->
            </div>

          </div>
        </div>

      </form>
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
