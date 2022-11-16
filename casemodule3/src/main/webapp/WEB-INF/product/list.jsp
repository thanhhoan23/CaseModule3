<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>List Shoes</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/assets\img\favicon.png">
  <style>
    .table>tbody>tr:hover {
      background-color: darkgrey;
      cursor: pointer;
    }
  </style>

  <!-- all css here -->
  <jsp:include page="/WEB-INF/layout/linkcss.jsp"></jsp:include>

</head>
<body _c_t_common="1" _c_t_j1="1">
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
  <div class="container-fluid">
    <!--pos page inner-->
    <div class="pos_page_inner">
      <!--header area -->
      <jsp:include page="/WEB-INF/layout/headerarea.jsp"></jsp:include>
      <!--header end -->

      <!--pos home section-->
      <div class="pos_home_section">
<%--        banner start--%>
        <jsp:include page="/WEB-INF/layout/bannarstart.jsp"></jsp:include>

        <!--new product area start-->
        <div class="new_product_area product_two">
          <div class="row">
            <div class="col-12">
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
                <div class="card-body">
                  <table class="table">
                    <thead>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Price (vnd)</th>
                      <th>Quantity</th>
                      <th>Color</th>
                      <th>Size</th>
                      <th>Category</th>
                      <th>Create Date</th>
                      <th>Create Update</th>
                      <th>Image</th>
                      <th class="actions text-center">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="product" items="${listProduct}">
                      <tr>
                        <td><c:out value="${product.getIdProduct()}"/></td>
                        <td><c:out value="${product.getName()}"/></td>
                        <td class="text-center"><fmt:formatNumber pattern="#,##0" value="${product.getPrice()}" /></td>
                        <td class="text-center"><c:out value="${product.getQuantity()}"/></td>

                        <c:forEach items="${requestScope['listColor']}" var="color">
                          <c:if test="${color.getIdColor() == product.getIdColor()}">
                            <td class="text-center">${color.getNameColor()}</td>
                          </c:if>
                        </c:forEach>

                        <c:forEach items="${listSize}" var="size">
                          <c:if test="${product.getIdSize() == size.getIdSize()}">
                            <td class="text-center">${size.getNumberSize()}</td>
                          </c:if>
                        </c:forEach>

                        <c:forEach items="${listCategory}" var="category">
                          <c:if test="${product.getIdCategory() == category.getIdCategory()}">
                            <td>${category.getTypeProduct()}</td>
                          </c:if>
                        </c:forEach>
                        <td class="text-center">
                          <fmt:formatDate pattern="dd-MM-yyyy" value="${product.getCreateTimeDate()}" /></td>
                        <td class="text-center"> <fmt:formatDate pattern="dd-MM-yyyy" value="${product.getUpdateTimeDate()}" /></td>
                          <%--                        <td><c:out value="${product.getImage()}"/></td>--%>
                        <td>
                          <img style="height: 100px;width: 100px" src="${product.getImage()}">
                        </td>
                        <td class="text-right">
                          <button type="button" style="width:70px" class="btn btn-success m-2"> <a style="color:white" href="/product?action=edit&id=${product.getIdProduct()}">Edit</a></button>
                            <%--                          <a href="/product?action=edit&id=${product.getIdProduct()}">Edit</a>--%>
                          <button type="button" class="btn btn-danger"><a style="color: white" href="/product?action=delete&id=${product.getIdProduct()}">Delete</a></button>
                            <%--                          <a href="/product?action=delete&id=${product.getIdProduct()}">Delete</a>--%>
                        </td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                  <%--                  Phân trang--%>
                  <nav aria-label="Page navigation example">
                    <ul class="pagination">

                      <c:if test="${requestScope.currentPage != 1}">
                        <li class="page-item"><a class="page-link" href="product?page=${requestScope.currentPage - 1}">Previous</a>
                        </li>
                      </c:if>
                      <c:forEach begin="1" end="${noOfPages}" var="i">
                        <c:choose>
                          <c:when test="${requestScope.currentPage eq i}">
                            <li class="page-item"><a class="page-link" href="product?page=${i}">${i}</a></li>
                          </c:when>
                          <c:otherwise>
                            <li class="page-item"><a class="page-link" href="product?page=${i}">${i}</a></li>
                          </c:otherwise>
                        </c:choose>
                      </c:forEach>
                      <c:if test="${requestScope.currentPage lt requestScope.noOfPages}">
                        <li class="page-item"><a class="page-link" href="product?page=${requestScope.currentPage + 1}">Next</a>
                        </li>
                      </c:if>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
          <!--pos home section end-->
        </div>
        <!--pos page inner end-->
      </div>
    </div>
    <!--pos page end-->

    <!--footer area start-->

    <!--footer area end-->

    <!-- modal area start -->
   <jsp:include page="/WEB-INF/layout/modal_area_start.jsp"></jsp:include>
    <!-- modal area end -->
    <!-- all js here -->
    <jsp:include page="/WEB-INF/layout/all_js_here.jsp"></jsp:include>
    <!-- Code injected by live-server -->
</div>
</body>
</html>