<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Create Product</title>
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
                <!--banner slider start-->
                <jsp:include page="/WEB-INF/layout/bannarstart.jsp"></jsp:include>
                <%--san pham--%>
                <h3 style="margin-left: 25px">Add New Product</h3>
                <!--new product area start-->
                <div class="new_product_area product_two">
                    <div class="row form-control">
                        <div class="col-12">
                            <div class="row" style="margin-left: 25px">
                                <button type="button" class="btn btn-info"><a href="/product">Back to list product</a></button>

                                <c:if test="${requestScope.message != null}">
                                    <h6>${message}</h6>
                                </c:if>
                            </div>
                            <div class="row">
                                <div class="card-body col-8">
                                    <form method="post" enctype="multipart/form-data">
                                        <table>
                                            <tr>
                                                <th class="p-md-4">Name Product</th>
                                                <td>
                                                    <input type="text" name="name" value="${product.getName()}">
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
                                                            <input type="number" value="${product.getPrice()}"
                                                                   name="price" step="0">
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
                                                            <input type="number" value="${product.getQuantity()}"
                                                                   name="quantity">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Color:</th>
                                                <td>
                                                    <select name="idcolor">
                                                        <c:forEach items="${requestScope.listColor}" var="color">
                                                            <c:choose>
                                                                <c:when test="${product.getIdColor() == color.getIdColor()}">
                                                                    <option value="${color.getIdColor()}" selected>
                                                                            ${color.getNameColor()}
                                                                    </option>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <option value="${color.getIdColor()}">
                                                                            ${color.getNameColor()}
                                                                    </option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Size</th>
                                                <td>
                                                    <select name="idsize">
                                                        <c:forEach items="${requestScope.listSize}" var="size">
                                                            <c:choose>
                                                                <c:when test="${product.getIdSize() == size.getIdSize()}">
                                                                    <option value="${size.getIdSize()}" selected>
                                                                            ${size.getNumberSize()}
                                                                    </option>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <option value="${size.getIdSize()}">
                                                                            ${size.getNumberSize()}
                                                                    </option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </select>
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
                                                                            ${category.getTypeProduct()}
                                                                    </option>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <option value="${category.getIdCategory()}">
                                                                            ${category.getTypeProduct()}
                                                                    </option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Image</th>
                                                <td class="m">
                                                    <input type="file" name="file" onchange="loadFile(event)"
                                                           value="${product.getImage()}">
                                                </td>

                                            <tr>
                                                <td>
                                                <td>
                                                    <img value="${product.getImage()}" id="output">
                                                </td>
                                                </td>
                                            </tr>
                                            </tr>
                                            <tr>
                                                <td class="p-md-4">
                                                    <input style="background-color: #0c5460;width: 100px;color: whitesmoke"
                                                           type="submit" value="Add Product">
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
                    <!--brand logo strat-->
                   <jsp:include page="/WEB-INF/layout/brand_logo_strat.jsp"></jsp:include>
                    <!--brand logo end-->
                </div>
                <!--pos home section end-->
            </div>
            <!--pos page inner end-->
        </div>
    </div>
    <!--pos page end-->
    <!-- modal area start -->
    <jsp:include page="/WEB-INF/layout/modal_area_start.jsp"></jsp:include>

    <!-- all js here -->
    <jsp:include page="/WEB-INF/layout/all_js_here.jsp"></jsp:include>
    <!-- Code injected by live-server -->
    <script>
        var loadFile = function (event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function () {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
</div>
</body>
</html>