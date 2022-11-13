<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" class="mdl-js">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="/assets\img\logo-fav.png">
  <title>List Product</title>
  <link rel="stylesheet" type="text/css" href="/assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
  <link rel="stylesheet" type="text/css" href="/assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
  <link rel="stylesheet" href="/assets\css\app.css" type="text/css">
  <style>

    .hero-image {
      background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(“/assets/img/bannershoes.web”);
      height: 400px;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      position: relative;
    }
    /* Place text in the middle of the image */
    .hero-text h1{
      text-align: center;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: white;
      font-size: 5rem;
      font-family: “Comic Sans MS”;
    }
  </style>
</head>
<body _c_t_common="1">
<div class=“hero-image”>
  <div class=“hero-text”>
    <h1>Shoes Shop</h1>
    <!--        <button>Hire me</button>-->
  </div>
</div>
<div class="be-wrapper">
  <nav class="navbar navbar-expand fixed-top be-top-header">
    <div class="container-fluid">
      <div class="be-navbar-header"><a class="navbar-brand" href="index.html"></a>
      </div>
      <div class="page-title"><span>General Tables</span></div>
    </div>
  </nav>
  <div class="be-left-sidebar">
    <div class="left-sidebar-wrapper"><a class="left-sidebar-toggle" href="#">General Tables</a>
      <div class="left-sidebar-spacer">
        <div class="left-sidebar-scroll">
          <div class="left-sidebar-content">
            <ul class="sidebar-elements">
              <li class="divider">Menu</li>
              <li><a href="index.html"><i class="icon mdi mdi-home"></i><span>Dashboard</span></a>
              </li>
              <li class="parent active open"><a href="#"><i class="icon mdi mdi-border-all"></i><span>Tables</span></a>
                <ul class="sub-menu">
                  <li class="active"><a href="tables-general.html">General</a>
                  </li>
                  <li><a href="tables-datatables.html">Data Tables</a>
                  </li>
                  <li><a href="tables-filters.html"><span class="badge badge-primary float-right">New</span>Table Filters</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="be-content">
    <div class="page-head">
      <h2 class="page-head-title"> <a href="/product?action=create">Add New User</a></h2>
    </div>
    <div class="main-content container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="card card-table">
            <div class="card-header">Basic Tables
              <div class="tools dropdown"><span class="icon mdi mdi-download"></span><a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown"><span class="icon mdi mdi-more-vert"></span></a>
                <div class="dropdown-menu" role="menu"><a class="dropdown-item" href="#">Action</a><a class="dropdown-item" href="#">Another action</a><a class="dropdown-item" href="#">Something else here</a>
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="#">Separated link</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <table class="table">
                <thead>
                <tr>
                  <th style="width:5%;">#</th>
                  <th style="width:15%;">Name</th>
                  <th class="number" style="width:10%;">Price</th>
                  <th class="number" style="width:10%;">Quantity</th>
                  <th style="width:10%;">Color</th>
                  <th class="number" style="width:10%;">Size</th>
                  <th style="width:10%;">Category</th>
                  <th style="width:10%;">create date</th>
                  <th style="width:10%;">create update</th>
                  <th style="width:15%;">image</th>
                  <th class="actions" style="width:10%;">Action</th>
                </tr>
                </thead>
                <tbody>
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

<%--                    <td><c:out value="${product.getImage()}"/></td>--%>
                    <td>
                      <img style="height: 20px" src="${product.getImage()}" alt="">
                    </td>

                    <td>
                      <a href="/product?action=edit&id=${product.getIdProduct()}">Edit</a>
                      <a href="/product?action=delete&id=${product.getIdProduct()}">Delete</a>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="/assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
<script src="/assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="/assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/assets\js\app.js" type="text/javascript"></script>
</body>
</html>