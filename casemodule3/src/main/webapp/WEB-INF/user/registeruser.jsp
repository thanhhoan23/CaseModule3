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
                <h3 style="margin-left: 25px">Register user</h3>
                <div class="customer_login">
                    <div class="row">
                        <!--login area start-->
                        <div class="col-lg-12 col-md-12">
                            <div class="account_form">
                                <form action="/login?action=list" method="post">
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <a href="index.jsp" class="">
                                            <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Login</h3>
                                        </a>
                                        <h3>Sign In</h3>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <label for="email">Email address</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                                    </div>
                                    <div class="form-floating mb-4">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sign In</button>
                                </form>
                                <div style="color: #0d8226" class="text-center"> <h2>${message}</h2></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--new product area start-->

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