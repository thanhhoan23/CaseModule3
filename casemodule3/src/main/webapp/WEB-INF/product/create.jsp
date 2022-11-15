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
    <link rel="stylesheet" href="/assets\css\bootstrap.min.css">
    <link rel="stylesheet" href="/assets\css\plugin.css">
    <link rel="stylesheet" href="/assets\css\bundle.css">
    <link rel="stylesheet" href="/assets\css\style.css">
    <link rel="stylesheet" href="/assets\css\responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <script src="/assets\js\vendor\modernizr-2.8.3.min.js"></script>
    <style>
        .banner_slider.slider_two .single_slider {
            height: 250px;
        }
    </style>

</head>
<body _c_t_common="1" _c_t_j1="1">
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
    <div class="container">
        <!--pos page inner-->
        <div class="pos_page_inner">
            <!--header area -->
            <div class="header_area">
                <!--header top-->
                <div class="header_top">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="switcher">
                                <ul>
                                    <li class="languages"><a href="#"><img src="/assets\img\logo\fontlogo.jpg" alt=""> English <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown_languages">
                                            <li><a href="#"><img src="/assets\img\logo\fontlogo.jpg" alt=""> English</a></li>
                                            <li><a href="#"><img src="/assets\img\logo\fontlogo2.jpg" alt=""> French </a></li>
                                        </ul>
                                    </li>

                                    <li class="currency"><a href="#"> Currency : $ <i class="fa fa-angle-down"></i></a>
                                        <ul class="dropdown_currency">
                                            <li><a href="#"> Dollar (USD)</a></li>
                                            <li><a href="#"> Euro (EUR)  </a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header_links">
                                <ul>
                                    <li><a href="contact.html" title="Contact">Contact</a></li>
                                    <li><a href="wishlist.html" title="wishlist">My wishlist</a></li>
                                    <li><a href="my-account.html" title="My account">My account</a></li>
                                    <li><a href="cart.html" title="My cart">My cart</a></li>
                                    <li><a href="login.html" title="Login">Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--header top end-->

                <!--header middel-->
                <div class="header_middel">
                    <div class="row align-items-center">
                        <!--logo start-->
                        <div class="col-lg-3 col-md-3">
                            <div class="logo">
                                <a href="index.html"><img src="/assets\img\logo\logo.jpg.png" alt=""></a>
                            </div>
                        </div>
                        <!--logo end-->
                        <div class="col-lg-9 col-md-9">
                            <div class="header_right_info">
                                <div class="search_bar">
                                    <form action="#">
                                        <input placeholder="Search..." type="text">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </form>
                                </div>
                                <div class="shopping_cart">
                                    <a href="#"><i class="fa fa-shopping-cart"></i> 2Items - $209.44 <i class="fa fa-angle-down"></i></a>

                                    <!--mini cart-->
                                    <div class="mini_cart">
                                        <div class="cart_item">
                                            <div class="cart_img">
                                                <a href="#"><img src="/assets\img\cart\cart.jpg" alt=""></a>
                                            </div>
                                            <div class="cart_info">
                                                <a href="#">lorem ipsum dolor</a>
                                                <span class="cart_price">$115.00</span>
                                                <span class="quantity">Qty: 1</span>
                                            </div>
                                            <div class="cart_remove">
                                                <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                            </div>
                                        </div>
                                        <div class="cart_item">
                                            <div class="cart_img">
                                                <a href="#"><img src="/assets\img\cart\cart2.jpg" alt=""></a>
                                            </div>
                                            <div class="cart_info">
                                                <a href="#">Quisque ornare dui</a>
                                                <span class="cart_price">$105.00</span>
                                                <span class="quantity">Qty: 1</span>
                                            </div>
                                            <div class="cart_remove">
                                                <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                            </div>
                                        </div>
                                        <div class="shipping_price">
                                            <span> Shipping </span>
                                            <span>  $7.00  </span>
                                        </div>
                                        <div class="total_price">
                                            <span> total </span>
                                            <span class="prices">  $227.00  </span>
                                        </div>
                                        <div class="cart_button">
                                            <a href="checkout.html"> Check out</a>
                                        </div>
                                    </div>
                                    <!--mini cart end-->
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!--header middel end-->
                <div class="header_bottom">
                    <div class="row">
                        <div class="col-12">
                            <div class="main_menu_inner">
                                <div class="main_menu d-none d-lg-block">
                                    <nav>
                                        <ul>
                                            <li class="active"><a href="index.html">Home</a>
                                                <div class="mega_menu jewelry">
                                                    <div class="mega_items jewelry">
                                                        <ul>
                                                            <li><a href="index.html">Home 1</a></li>
                                                            <li><a href="index-2.html">Home 2</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="shop.html">shop</a>
                                                <div class="mega_menu jewelry">
                                                    <div class="mega_items jewelry">
                                                        <ul>
                                                            <li><a href="shop-list.html">shop list</a></li>
                                                            <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                            <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                            <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                            <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                            <li><a href="single-product.html">Product Details</a></li>
                                                            <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                            <li><a href="single-product-video.html">Product Details video</a></li>
                                                            <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="#">women</a>
                                                <div class="mega_menu">
                                                    <div class="mega_top fix">
                                                        <div class="mega_items">
                                                            <h3><a href="#">Accessories</a></h3>
                                                            <ul>
                                                                <li><a href="#">Cocktai</a></li>
                                                                <li><a href="#">day</a></li>
                                                                <li><a href="#">Evening</a></li>
                                                                <li><a href="#">Sundresses</a></li>
                                                                <li><a href="#">Belts</a></li>
                                                                <li><a href="#">Sweets</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="mega_items">
                                                            <h3><a href="#">HandBags</a></h3>
                                                            <ul>
                                                                <li><a href="#">Accessories</a></li>
                                                                <li><a href="#">Hats and Gloves</a></li>
                                                                <li><a href="#">Lifestyle</a></li>
                                                                <li><a href="#">Bras</a></li>
                                                                <li><a href="#">Scarves</a></li>
                                                                <li><a href="#">Small Leathers</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="mega_items">
                                                            <h3><a href="#">Tops</a></h3>
                                                            <ul>
                                                                <li><a href="#">Evening</a></li>
                                                                <li><a href="#">Long Sleeved</a></li>
                                                                <li><a href="#">Shrot Sleeved</a></li>
                                                                <li><a href="#">Tanks and Camis</a></li>
                                                                <li><a href="#">Sleeveless</a></li>
                                                                <li><a href="#">Sleeveless</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="mega_bottom fix">
                                                        <div class="mega_thumb">
                                                            <a href="#"><img src="/assets\img\banner\banner1.jpg" alt=""></a>
                                                        </div>
                                                        <div class="mega_thumb">
                                                            <a href="#"><img src="/assets\img\banner\banner2.jpg" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li><a href="#">pages</a>
                                                <div class="mega_menu">
                                                    <div class="mega_top fix">
                                                        <div class="mega_items">
                                                            <h3><a href="#">Column1</a></h3>
                                                            <ul>
                                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                                <li><a href="portfolio-details.html">single portfolio </a></li>
                                                                <li><a href="about.html">About Us </a></li>
                                                                <li><a href="about-2.html">About Us 2</a></li>
                                                                <li><a href="services.html">Service </a></li>
                                                                <li><a href="my-account.html">my account </a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="mega_items">
                                                            <h3><a href="#">Column2</a></h3>
                                                            <ul>
                                                                <li><a href="blog.html">Blog </a></li>
                                                                <li><a href="blog-details.html">Blog  Details </a></li>
                                                                <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                                <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                                <li><a href="faq.html">Frequently Questions</a></li>
                                                                <li><a href="404.html">404</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="mega_items">
                                                            <h3><a href="#">Column3</a></h3>
                                                            <ul>
                                                                <li><a href="contact.html">Contact</a></li>
                                                                <li><a href="cart.html">cart</a></li>
                                                                <li><a href="checkout.html">Checkout  </a></li>
                                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                                <li><a href="login.html">Login</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li><a href="blog.html">blog</a>
                                                <div class="mega_menu jewelry">
                                                    <div class="mega_items jewelry">
                                                        <ul>
                                                            <li><a href="blog-details.html">blog details</a></li>
                                                            <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                            <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="contact.html">contact us</a></li>

                                        </ul>
                                    </nav>
                                </div>
                                <div class="mobile-menu d-lg-none mean-container"><div class="mean-bar"><a href="#nav" class="meanmenu-reveal" style="background:;color:;"><span></span><span></span><span></span></a><nav class="mean-nav">
                                    <ul style="display: none;">
                                        <li><a href="index.html">Home</a>
                                            <div>
                                                <div>
                                                    <ul style="display: none;">
                                                        <li><a href="index.html">Home 1</a></li>
                                                        <li><a href="index-2.html">Home 2</a></li>
                                                    </ul>
                                                    <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                            </div>
                                        </li>
                                        <li><a href="shop.html">shop</a>
                                            <div>
                                                <div>
                                                    <ul style="display: none;">
                                                        <li><a href="shop-list.html">shop list</a></li>
                                                        <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                        <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                        <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                        <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                        <li><a href="single-product.html">Product Details</a></li>
                                                        <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                        <li><a href="single-product-video.html">Product Details video</a></li>
                                                        <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                    </ul>
                                                    <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                            </div>
                                        </li>
                                        <li><a href="#">women</a>
                                            <div>
                                                <div>
                                                    <div>
                                                        <h3><a href="#">Accessories</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="#">Cocktai</a></li>
                                                            <li><a href="#">day</a></li>
                                                            <li><a href="#">Evening</a></li>
                                                            <li><a href="#">Sundresses</a></li>
                                                            <li><a href="#">Belts</a></li>
                                                            <li><a href="#">Sweets</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <h3><a href="#">HandBags</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="#">Accessories</a></li>
                                                            <li><a href="#">Hats and Gloves</a></li>
                                                            <li><a href="#">Lifestyle</a></li>
                                                            <li><a href="#">Bras</a></li>
                                                            <li><a href="#">Scarves</a></li>
                                                            <li><a href="#">Small Leathers</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <h3><a href="#">Tops</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="#">Evening</a></li>
                                                            <li><a href="#">Long Sleeved</a></li>
                                                            <li><a href="#">Shrot Sleeved</a></li>
                                                            <li><a href="#">Tanks and Camis</a></li>
                                                            <li><a href="#">Sleeveless</a></li>
                                                            <li><a href="#">Sleeveless</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                </div>
                                                <div>
                                                    <div>
                                                        <a href="#"><img src="/assets\img\banner\banner1.jpg" alt=""></a>
                                                    </div>
                                                    <div>
                                                        <a href="#"><img src="/assets\img\banner\banner2.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li><a href="#">men</a>
                                            <div>
                                                <div>
                                                    <div>
                                                        <h3><a href="#">Rings</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="#">Platinum Rings</a></li>
                                                            <li><a href="#">Gold Ring</a></li>
                                                            <li><a href="#">Silver Ring</a></li>
                                                            <li><a href="#">Tungsten Ring</a></li>
                                                            <li><a href="#">Sweets</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <h3><a href="#">Bands</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="#">Platinum Bands</a></li>
                                                            <li><a href="#">Gold Bands</a></li>
                                                            <li><a href="#">Silver Bands</a></li>
                                                            <li><a href="#">Silver Bands</a></li>
                                                            <li><a href="#">Sweets</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <a href="#"><img src="/assets\img\banner\banner3.jpg" alt=""></a>
                                                    </div>
                                                </div>

                                            </div>
                                        </li>
                                        <li><a href="#">pages</a>
                                            <div>
                                                <div>
                                                    <div>
                                                        <h3><a href="#">Column1</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="portfolio.html">Portfolio</a></li>
                                                            <li><a href="portfolio-details.html">single portfolio </a></li>
                                                            <li><a href="about.html">About Us </a></li>
                                                            <li><a href="about-2.html">About Us 2</a></li>
                                                            <li><a href="services.html">Service </a></li>
                                                            <li><a href="my-account.html">my account </a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <h3><a href="#">Column2</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="blog.html">Blog </a></li>
                                                            <li><a href="blog-details.html">Blog  Details </a></li>
                                                            <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                            <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                            <li><a href="faq.html">Frequently Questions</a></li>
                                                            <li><a href="404.html">404</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                    <div>
                                                        <h3><a href="#">Column3</a></h3>
                                                        <ul style="display: none;">
                                                            <li><a href="contact.html">Contact</a></li>
                                                            <li><a href="cart.html">cart</a></li>
                                                            <li><a href="checkout.html">Checkout  </a></li>
                                                            <li><a href="wishlist.html">Wishlist</a></li>
                                                            <li><a href="login.html">Login</a></li>
                                                        </ul>
                                                        <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                                </div>
                                            </div>
                                        </li>

                                        <li><a href="blog.html">blog</a>
                                            <div>
                                                <div>
                                                    <ul style="display: none;">
                                                        <li><a href="blog-details.html">blog details</a></li>
                                                        <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                        <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                    </ul>
                                                    <a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a><a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                                            </div>
                                        </li>
                                        <li class="mean-last"><a href="contact.html">contact us</a></li>

                                    </ul>
                                </nav></div>
                                    <div class="mean-push"></div><nav style="display: none;">
                                        <ul>
                                            <li><a href="index.html">Home</a>
                                                <div>
                                                    <div>
                                                        <ul>
                                                            <li><a href="index.html">Home 1</a></li>
                                                            <li><a href="index-2.html">Home 2</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="shop.html">shop</a>
                                                <div>
                                                    <div>
                                                        <ul>
                                                            <li><a href="shop-list.html">shop list</a></li>
                                                            <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                            <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                            <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                            <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                            <li><a href="single-product.html">Product Details</a></li>
                                                            <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                            <li><a href="single-product-video.html">Product Details video</a></li>
                                                            <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="#">women</a>
                                                <div>
                                                    <div>
                                                        <div>
                                                            <h3><a href="#">Accessories</a></h3>
                                                            <ul>
                                                                <li><a href="#">Cocktai</a></li>
                                                                <li><a href="#">day</a></li>
                                                                <li><a href="#">Evening</a></li>
                                                                <li><a href="#">Sundresses</a></li>
                                                                <li><a href="#">Belts</a></li>
                                                                <li><a href="#">Sweets</a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <h3><a href="#">HandBags</a></h3>
                                                            <ul>
                                                                <li><a href="#">Accessories</a></li>
                                                                <li><a href="#">Hats and Gloves</a></li>
                                                                <li><a href="#">Lifestyle</a></li>
                                                                <li><a href="#">Bras</a></li>
                                                                <li><a href="#">Scarves</a></li>
                                                                <li><a href="#">Small Leathers</a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <h3><a href="#">Tops</a></h3>
                                                            <ul>
                                                                <li><a href="#">Evening</a></li>
                                                                <li><a href="#">Long Sleeved</a></li>
                                                                <li><a href="#">Shrot Sleeved</a></li>
                                                                <li><a href="#">Tanks and Camis</a></li>
                                                                <li><a href="#">Sleeveless</a></li>
                                                                <li><a href="#">Sleeveless</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div>
                                                            <a href="#"><img src="/assets\img\banner\banner1.jpg" alt=""></a>
                                                        </div>
                                                        <div>
                                                            <a href="#"><img src="/assets\img\banner\banner2.jpg" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="#">men</a>
                                                <div>
                                                    <div>
                                                        <div>
                                                            <h3><a href="#">Rings</a></h3>
                                                            <ul>
                                                                <li><a href="#">Platinum Rings</a></li>
                                                                <li><a href="#">Gold Ring</a></li>
                                                                <li><a href="#">Silver Ring</a></li>
                                                                <li><a href="#">Tungsten Ring</a></li>
                                                                <li><a href="#">Sweets</a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <h3><a href="#">Bands</a></h3>
                                                            <ul>
                                                                <li><a href="#">Platinum Bands</a></li>
                                                                <li><a href="#">Gold Bands</a></li>
                                                                <li><a href="#">Silver Bands</a></li>
                                                                <li><a href="#">Silver Bands</a></li>
                                                                <li><a href="#">Sweets</a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#"><img src="/assets\img\banner\banner3.jpg" alt=""></a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <div>
                                                    <div>
                                                        <div>
                                                            <h3><a href="#">Column1</a></h3>
                                                            <ul>
                                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                                <li><a href="portfolio-details.html">single portfolio </a></li>
                                                                <li><a href="about.html">About Us </a></li>
                                                                <li><a href="about-2.html">About Us 2</a></li>
                                                                <li><a href="services.html">Service </a></li>
                                                                <li><a href="my-account.html">my account </a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <h3><a href="#">Column2</a></h3>
                                                            <ul>
                                                                <li><a href="blog.html">Blog </a></li>
                                                                <li><a href="blog-details.html">Blog  Details </a></li>
                                                                <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                                <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                                <li><a href="faq.html">Frequently Questions</a></li>
                                                                <li><a href="404.html">404</a></li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <h3><a href="#">Column3</a></h3>
                                                            <ul>
                                                                <li><a href="contact.html">Contact</a></li>
                                                                <li><a href="cart.html">cart</a></li>
                                                                <li><a href="checkout.html">Checkout  </a></li>
                                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                                <li><a href="login.html">Login</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li><a href="blog.html">blog</a>
                                                <div>
                                                    <div>
                                                        <ul>
                                                            <li><a href="blog-details.html">blog details</a></li>
                                                            <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                            <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li><a href="contact.html">contact us</a></li>

                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header end -->

            <!--pos home section-->
            <div class="pos_home_section">
                <div class="row">
                    <%--          Day roiiii--%>
                    <!--banner slider start-->
                    <div class="col-12">
                        <div class="banner_slider slider_two">
                            <div class="slider_active owl-carousel owl-loaded owl-drag">



                                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-2340px, 0px, 0px); transition: all 0s ease 0s; width: 8190px;"><div class="owl-item cloned" style="width: 1170px;"><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div></div><div class="owl-item cloned" style="width: 1170px;"><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div><div class="owl-item active" style="width: 1170px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-2340px, 0px, 0px); transition: all 0s ease 0s; width: 8190px;"><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_3.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_2.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_3.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_2.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div></div></div></div><div class="owl-item" style="width: 1170px;"><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div></div><div class="owl-item" style="width: 1170px;"><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div><div class="owl-item cloned" style="width: 1170px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-2340px, 0px, 0px); transition: all 0s ease 0s; width: 8190px;"><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_3.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_2.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_3.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slider_2.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 1170px;"><div class="single_slider" style="background-image: url(/assets/img/slider/slide_4.png)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <h1>fashion for you</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br> Cumque eligendi quia, ratione porro, nemo non.</p>
                                            <a href="#">shop now</a>
                                        </div>
                                    </div>
                                </div></div></div></div></div><div class="owl-item cloned" style="width: 1170px;"><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div>
                        </div>
                        <!--banner slider start-->
                    </div>
                </div>
                <h3>Add New Product</h3>
                <!--new product area start-->
                <div class="new_product_area product_two">
                    <div class="row form-control">
                        <div class="col-12">
                            <h3>  <p>
                                <a href="/product">Back to the list product</a>
                            </p></h3>
                            <div class="row">
                                <div class="card-body">
                                    <form method="post"  enctype="multipart/form-data">
                                        <table>
                                            <tr>
                                                <th class="p-md-4">Name Product</th>
                                                <td>
                                                    <input type="text" name="name">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Price</th>
                                                <td>
                                                    <input type="number" name="price">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Quantity</th>
                                                <td>
                                                    <input type="number" name="quantity">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="p-md-4">Color:</th>
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
                                                <th class="p-md-4">Size</th>
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
                                                <th class="p-md-4">Category</th>
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
                                                <th class="p-md-4">Image</th>
                                                <td class="m">
                                                    <input type="file" name="file" onchange="loadFile(event)" value="${product.getImage()}">
                                                </td>

                                                <tr>
                                            <td>
                                            <td>
                                                <img value="${product.getImage()}" id="output" >
                                            </td>
                                            </td>
                                        </tr>
                                            </tr>
                                            <tr>
                                                <td class="p-md-4">
                                                    <input  style="background-color: #0c5460;width: 100px;color: whitesmoke" type="submit" value="Add Product">
                                                </td>
                                            </tr>

                                        </table>
                                        <c:if test="${requestScope.errors != null}">
                                            <div class="alert alert-icon alert-danger alert-dismissible fade show mb-0" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                                <strong>Errors!</strong> <br>
                                                <c:forEach items="${requestScope.errors}" var="item">
                                                    <li>${item}</li>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--new product area start-->

                    <!--banner area start-->
                    <div class="banner_area banner_two">

                    </div>
                    <!--banner area end-->

                    <!--featured product area start-->

                    <!--featured product area start-->

                    <!--blog area start-->

                    <!--blog area end-->

                    <!--brand logo strat-->
                    <div class="brand_logo brand_two">
                        <div class="block_title">
                            <h3>Brands</h3>
                        </div>
                        <div class="row">
                            <div class="brand_active owl-carousel owl-loaded owl-drag">






                                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3000px;"><div class="owl-item cloned" style="width: 200px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;"><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;"><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div><div class="owl-item active" style="width: 200px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;"><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div></div></div></div><div class="owl-item active" style="width: 200px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item active" style="width: 200px;"><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div><div class="owl-item cloned active" style="width: 200px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;"><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div></div></div></div><div class="owl-item cloned active" style="width: 200px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned active" style="width: 200px;"><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;"><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item active" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand1.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand2.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand3.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand4.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand5.jpg" alt=""></a>
                                    </div>
                                </div></div><div class="owl-item cloned" style="width: 200px;"><div class="col-lg-2">
                                    <div class="single_brand">
                                        <a href="#"><img src="/assets\img\brand\brand6.jpg" alt=""></a>
                                    </div>
                                </div></div></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned" style="width: 200px;"><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div></div></div><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div>
                        </div>
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
    <div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <div class="modal_body">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12">
                                <div class="modal_tab">
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="/assets\img\product\product13.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="/assets\img\product\product14.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="/assets\img\product\product15.jpg" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal_tab_button">
                                        <ul class="nav product_navactive" role="tablist">
                                            <li>
                                                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="/assets\img\cart\cart17.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="/assets\img\cart\cart18.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="/assets\img\cart\cart19.jpg" alt=""></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7 col-sm-12">
                                <div class="modal_right">
                                    <div class="modal_title mb-10">
                                        <h2>Handbag feugiat</h2>
                                    </div>
                                    <div class="modal_price mb-10">
                                        <span class="new_price">$64.99</span>
                                        <span class="old_price">$78.99</span>
                                    </div>
                                    <div class="modal_content mb-10">
                                        <p>Short-sleeved blouse with feminine draped sleeve detail.</p>
                                    </div>
                                    <div class="modal_size mb-15">
                                        <h2>size</h2>
                                        <ul>
                                            <li><a href="#">s</a></li>
                                            <li><a href="#">m</a></li>
                                            <li><a href="#">l</a></li>
                                            <li><a href="#">xl</a></li>
                                            <li><a href="#">xxl</a></li>
                                        </ul>
                                    </div>
                                    <div class="modal_add_to_cart mb-15">
                                        <form action="#">
                                            <input min="0" max="100" step="2" value="1" type="number">
                                            <button type="submit">add to cart</button>
                                        </form>
                                    </div>
                                    <div class="modal_description mb-15">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>
                                    </div>
                                    <div class="modal_social">
                                        <h2>Share this product</h2>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- modal area end -->




    <!-- all js here -->
    <script src="/assets\js\vendor\jquery-1.12.0.min.js"></script>
    <script src="/assets\js\popper.js"></script>
    <script src="/assets\js\bootstrap.min.js"></script>
    <script src="/assets\js\ajax-mail.js"></script>
    <script src="/assets\js\plugins.js"></script>
    <script src="/assets\js\main.js"></script>
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
