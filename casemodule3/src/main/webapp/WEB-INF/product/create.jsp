<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/assets\img\logo-fav.png">
    <title>Beagle</title>
    <link rel="stylesheet" type="text/css" href="/assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/assets\lib\datetimepicker\css\bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="/assets\lib\select2\css\select2.min.css">
    <link rel="stylesheet" type="text/css" href="/assets\lib\bootstrap-slider\css\bootstrap-slider.min.css">
    <link rel="stylesheet" href="/assets\css\app.css" type="text/css">
</head>
<body _c_t_common="1">
<div class="be-wrapper">
    <nav class="navbar navbar-expand fixed-top be-top-header">
        <div class="container-fluid">
            <div class="be-navbar-header"><a class="navbar-brand" href="index.html"></a>
            </div>
            <div class="page-title"><span>Add product</span></div>
            <div class="be-right-navbar">
                <ul class="nav navbar-nav float-right be-user-nav">
                    <li class="nav-item dropdown">
                        <div class="dropdown-menu" role="menu">
                            <div class="user-info">
                                <div class="user-name">Túpac Amaru</div>
                                <div class="user-position online">Available</div>
                            </div><a class="dropdown-item" href="pages-profile.html"><span class="icon mdi mdi-face"></span>Account</a><a class="dropdown-item" href="#"><span class="icon mdi mdi-settings"></span>Settings</a><a class="dropdown-item" href="pages-login.html"><span class="icon mdi mdi-power"></span>Logout</a>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav float-right be-icons-nav">
                    <li class="nav-item dropdown"><a class="nav-link be-toggle-right-sidebar" href="#" role="button" aria-expanded="false"><span class="icon mdi mdi-settings"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="be-left-sidebar">
        <div class="left-sidebar-wrapper"><a class="left-sidebar-toggle" href="#">Form Elements</a>
            <div class="left-sidebar-spacer">
                <div class="left-sidebar-scroll">
                    <div class="left-sidebar-content">
                        <ul class="sidebar-elements">
                            <li class="divider">Menu</li>
                            <li class="parent active open"><a href="#"><i class="icon mdi mdi-dot-circle"></i><span>Forms</span></a>
                                <ul class="sub-menu">
                                    <li class="active"><a href="form-elements.html">Elements</a>
                                    </li>
                                    <li><a href="form-validation.html">Validation</a>
                                    </li>
                                    <li><a href="form-multiselect.html">Multiselect</a>
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
            <h2 class="page-head-title">Form Elements</h2>
            <p>
                <a href="/product">Back to the list product</a>
            </p>
        </div>
        <div class="main-content container-fluid">

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-border-color card-border-color-primary">
                        <div class="card-header card-header-divider">Basic Elements<span class="card-subtitle">These are the basic bootstrap form elements</span></div>
                        <div class="card-body">
                            <form method="post"  enctype="multipart/form-data">
                               <table>
                                   <tr>
                                       <th>Name Product</th>
                                       <td>
                                           <input type="text" name="name">
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Price</th>
                                       <td>
                                           <input type="number" name="price">
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Quantity</th>
                                       <td>
                                           <input type="number" name="quantity">
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Color:</th>
                                       <td>
                                           <select name="idcolor">
                                               <c:forEach items="${requestScope.listColor}" var="color">
                                                   <option
                                                           value="${color.getIdColor()}">${color.getNameColor()}
                                                   </option>
                                               </c:forEach>
                                           </select>
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Size</th>
                                       <td>
                                           <select name="idsize">
                                               <c:forEach items="${requestScope.listSize}" var="size">
                                                   <option
                                                           value="${size.getIdSize()}">${size.getNumberSize()}
                                                   </option>
                                               </c:forEach>
                                           </select>
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Category</th>
                                       <td>
                                           <select name="idcategory">
                                               <c:forEach items="${requestScope.listCategory}" var="category">
                                                   <option
                                                           value="${category.getIdCategory()}">${category.getTypeProduct()}
                                                   </option>
                                               </c:forEach>
                                           </select>
                                       </td>
                                   </tr>
                                   <tr>
                                       <th>Image</th>
                                       <td>
                                           <input type="file" name="file">
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <input type="submit" value="Add Product">
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
<script src="/assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
<script src="/assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="/assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/assets\js\app.js" type="text/javascript"></script>
<script src="/assets\lib\jquery-ui\jquery-ui.min.js" type="text/javascript"></script>
<script src="/assets\lib\jquery.nestable\jquery.nestable.js" type="text/javascript"></script>
<script src="/assets\lib\moment.js\min\moment.min.js" type="text/javascript"></script>
<script src="/assets\lib\datetimepicker\js\bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="/assets\lib\select2\js\select2.min.js" type="text/javascript"></script>
<script src="/assets\lib\select2\js\select2.full.min.js" type="text/javascript"></script>
<script src="/assets\lib\bootstrap-slider\bootstrap-slider.min.js" type="text/javascript"></script>
<script src="/assets\lib\bs-custom-file-input\bs-custom-file-input.js" type="text/javascript"></script>

<!-- Code injected by live-server -->


<!-- Code injected by live-server -->


</body>
</html>