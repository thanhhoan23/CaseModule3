<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Coron - Fashion eCommerce Bootstrap4 Template</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/assets\img\favicon.png">

  <!-- all css here -->
  <jsp:include page="/WEB-INF/layout/linkcss.jsp"></jsp:include>



</head>
<body _c_t_common="1" _c_t_j1="1">
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
  <div class="container" style="max-width: 1405px">
    <!--pos page inner-->
    <div class="pos_page_inner">
      <!--header area -->
      <jsp:include page="/WEB-INF/layout/headerarea.jsp"></jsp:include>
      <!--header end -->
      <!--pos home section-->
      <div class="pos_home_section">
<%--        Banner Start--%>
        <jsp:include page="/WEB-INF/layout/bannarstart.jsp"></jsp:include>
        <!--new product area start-->
        <div class="new_product_area product_two">
          <div class="row">
            <div class="col-12">
              <h3> Edit Product</h3>
              <c:if test="${requestScope.message != null}">
                <div class="row bg-primary">
                  <h4>${message}</h4>
                </div>
              </c:if>
              <div class="row">
                <div class="col-md-12">
                  <div class="card card-border-color card-border-color-primary">
                    <div class="card-header card-header-divider"><p>
                      <a href="/product">Back to the list product</a>
                    </p></div>
                    <div class="card-body">
                      <div class="col-lg-7">
                        <form method="post"  enctype="multipart/form-data">
                          <table>
                            <tr>
                              <th class="p-md-4">Name Product</th>
                              <td>
                                <input type="text" name="name" value="${requestScope.product.getName()}">
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Price</th>
                              <td>
                                <input type="number" name="price" value="${requestScope.product.getPrice()}">
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Quantity</th>
                              <td>
                                <input type="number" name="quantity" value="${requestScope.product.getQuantity()}">
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Color:</th>
                              <td>

                                <select name="idcolor">
                                  <c:forEach items="${requestScope.listColor}" var="color">
                                    <option
                                            <c:if test="${color.getIdColor() == product.getIdColor()}">
                                              selected
                                            </c:if> value="${color.getIdColor()}">
                                        ${color.getNameColor()}
                                    </option>
                                  </c:forEach>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Size</th>
                              <td>
                                <select name="idsize">
                                  <c:forEach items="${requestScope.listSize}" var="size">
                                    <option
                                            <c:if test="${size.getIdSize() == product.getIdSize()}">
                                              selected
                                            </c:if>
                                            value="${size.getIdSize()}">${size.getNumberSize()}
                                    </option>
                                  </c:forEach>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Category</th>
                              <td>
                                <select name="idcategory">
                                  <c:forEach items="${listCategory}" var="category">
                                    <option
                                            <c:if test="${category.getIdCategory() == product.getIdCategory()}">selected</c:if>
                                            value="${category.getIdCategory()}">${category.getTypeProduct()}
                                    </option>
                                  </c:forEach>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th class="p-md-4">Image</th>
                              <td>
                                <input type="file" name="file" onchange="loadFile(event)">
                              </td>
                              <td>
                                <img src="${product.getImage()}" alt="" id="output">
                              </td>
                            </tr>
                            <tr>
                              <td class="p-md-4">
                                <input type="submit" value="edit Product">
                              </td>
                            </tr>

                          </table>
                        </form>

                      </div>

                      <div class="card-body col-lg-5">
                        <c:if test="${requestScope.errors != null}">
                          <ul>
                            <c:forEach items="${requestScope.errors}" var="error">
                              <li>
                                <p>${error}</p>
                              </li>
                            </c:forEach>
                          </ul>
                        </c:if>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!--new product area start-->

          <!--banner area start-->

          <!--banner area end-->

          <!--featured product area start-->

          <!--featured product area start-->

          <!--blog area start-->

          <!--blog area end-->

          <!--brand logo strat-->

<%--            brand_active--%>
           <jsp:include page="/WEB-INF/layout/brand_active.jsp"></jsp:include>
          </div>
          <!--brand logo end-->
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
  <!-- all js here -->
<jsp:include page="/WEB-INF/layout/all_js_here.jsp"></jsp:include>

  <!-- Code injected by live-server -->
  <script>
    var loadFile = function(event) {
      var output = document.getElementById('output');
      output.src = URL.createObjectURL(event.target.files[0]);
      output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
      }
    };
  </script>


  <!-- Code injected by live-server -->



</body>
</html>