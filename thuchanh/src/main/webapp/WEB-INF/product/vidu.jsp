<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Coron-shop fullwidth</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/assets\img\favicon.png">
<%--css--%>
  <jsp:include page="/WEB-INF/layout/democss.jsp"></jsp:include>

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

        <!--header top end-->

        <!--header middel-->
        <div class="header_middel">
          <div class="row align-items-center">
            <div class="col-lg-3 col-md-3">
              <div class="logo">
                <a href="index.html"><img src="/assets\img\logo\logo.jpg.png" alt=""></a>
              </div>
            </div>
            <div class="col-lg-9 col-md-9">
              <div class="header_right_info">
                <div class="search_bar">
                  <form action="#">
                    <input placeholder="Search..." type="text">
                    <button type="submit"><i class="fa fa-search"></i></button>
                  </form>
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
                      <li><a href="#">men</a>
                        <div class="mega_menu">
                          <div class="mega_top fix">
                            <div class="mega_items">
                              <h3><a href="#">Rings</a></h3>
                              <ul>
                                <li><a href="#">Platinum Rings</a></li>
                                <li><a href="#">Gold Ring</a></li>
                                <li><a href="#">Silver Ring</a></li>
                                <li><a href="#">Tungsten Ring</a></li>
                                <li><a href="#">Sweets</a></li>
                              </ul>
                            </div>
                            <div class="mega_items">
                              <h3><a href="#">Bands</a></h3>
                              <ul>
                                <li><a href="#">Platinum Bands</a></li>
                                <li><a href="#">Gold Bands</a></li>
                                <li><a href="#">Silver Bands</a></li>
                                <li><a href="#">Silver Bands</a></li>
                                <li><a href="#">Sweets</a></li>
                              </ul>
                            </div>
                            <div class="mega_items">
                              <a href="#"><img src="/assets\img\banner\banner3.jpg" alt=""></a>
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
                          <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                          <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                          <div>
                            <h3><a href="#">Bands</a></h3>
                            <ul style="display: none;">
                              <li><a href="#">Platinum Bands</a></li>
                              <li><a href="#">Gold Bands</a></li>
                              <li><a href="#">Silver Bands</a></li>
                              <li><a href="#">Silver Bands</a></li>
                              <li><a href="#">Sweets</a></li>
                            </ul>
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
                          <div>
                            <h3><a href="#">Column3</a></h3>
                            <ul style="display: none;">
                              <li><a href="contact.html">Contact</a></li>
                              <li><a href="cart.html">cart</a></li>
                              <li><a href="checkout.html">Checkout  </a></li>
                              <li><a href="wishlist.html">Wishlist</a></li>
                              <li><a href="login.html">Login</a></li>
                            </ul>
                            <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
                          <a class="mean-expand" href="#" style="font-size: 18px">+</a></div>
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
      <!--breadcrumbs area start-->

      <!--breadcrumbs area end-->

      <!--pos home section-->
      <div class=" pos_home_section shop_section shop_fullwidth">
        <div class="row">
          <div class="col-12">
            <!--banner slider start-->
            <div class="banner_slider fullwidht  mb-35">
              <img src="/assets\img\banner\bannner10.jpg" alt="">
            </div>
            <!--banner slider start-->
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <!--shop toolbar start-->

            <!--shop toolbar end-->
          </div>
        </div>

        <!--shop tab product-->
        <div class="shop_tab_product shop_fullwidth">
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="large" role="tabpanel">
              <div class="row">











                <div class="col-lg-3 col-md-4 col-sm-6">
                  <div class="single_product">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product3.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                      <div class="product_action">
                        <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                      </div>
                    </div>
                    <div class="product_content">
                      <span class="product_price">$50.00</span>
                      <h3 class="product_title"><a href="single-product.html">Curabitur sodales</a></h3>
                    </div>
                    <div class="product_info">
                      <ul>
                        <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="list" role="tabpanel">
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product2.jpg" alt=""></a>
                      <div class="hot_img">
                        <img src="/assets\img\cart\span-hot.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select" type="checkbox">
                        <label for="select">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product3.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Quisque ornare dui</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select1" type="checkbox">
                        <label for="select1">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product4.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Maecenas sit amet</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select2" type="checkbox">
                        <label for="select2">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product5.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Sed non luctus turpis</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select3" type="checkbox">
                        <label for="select3">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product6.jpg" alt=""></a>
                      <div class="hot_img">
                        <img src="/assets\img\cart\span-hot.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Donec dignissim eget</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select4" type="checkbox">
                        <label for="select4">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product7.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select5" type="checkbox">
                        <label for="select5">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product8.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Donec ac congue</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select6" type="checkbox">
                        <label for="select6">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product9.jpg" alt=""></a>
                      <div class="hot_img">
                        <img src="/assets\img\cart\span-hot.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Curabitur sodales</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select7" type="checkbox">
                        <label for="select7">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product1.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select8" type="checkbox">
                        <label for="select8">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product2.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select9" type="checkbox">
                        <label for="select9">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product3.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select10" type="checkbox">
                        <label for="select10">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="product_list_item mb-35">
                <div class="row align-items-center">
                  <div class="col-lg-3 col-md-5 col-sm-6">
                    <div class="product_thumb">
                      <a href="single-product.html"><img src="/assets\img\product\product4.jpg" alt=""></a>
                      <div class="img_icone">
                        <img src="/assets\img\cart\span-new.png" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-9 col-md-7 col-sm-6">
                    <div class="list_product_content">
                      <div class="product_ratting">
                        <ul>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                          <li><a href="#"><i class="fa fa-star"></i></a></li>
                        </ul>
                      </div>
                      <div class="list_title">
                        <h3><a href="single-product.html">Lorem ipsum dolor</a></h3>
                      </div>
                      <p class="design"> in quibusdam accusantium qui nostrum consequuntur, officia, quidem ut placeat. Officiis, incidunt eos recusandae! Facilis aliquam vitae blanditiis quae perferendis minus eligendi</p>

                      <p class="compare">
                        <input id="select11" type="checkbox">
                        <label for="select11">Select to compare</label>
                      </p>
                      <div class="content_price">
                        <span>$118.00</span>
                        <span class="old-price">$130.00</span>
                      </div>
                      <div class="add_links">
                        <ul>
                          <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                          <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                          <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!--shop tab product end-->

        <!--pagination style start-->
        <div class="pagination_style shop_page">
          <div class="item_page">
            <form action="#">
              <label for="page_select">show</label>
              <select id="page_select" style="display: none;">
                <option value="1">9</option>
                <option value="2">10</option>
                <option value="3">11</option>
              </select><div class="nice-select" tabindex="0"><span class="current">9</span><ul class="list"><li data-value="1" class="option selected">9</li><li data-value="2" class="option">10</li><li data-value="3" class="option">11</li></ul></div>
              <span>Products by page</span>
            </form>
          </div>
          <div class="page_number">
            <span>Pages: </span>
            <ul>
              <li>«</li>
              <li class="current_number">1</li>
              <li><a href="#">2</a></li>
              <li>»</li>
            </ul>
          </div>
        </div>
        <!--pagination style end-->
      </div>
      <!--pos home section end-->
    </div>
    <!--pos page inner end-->
  </div>
</div>
<!--pos page end-->

<!--footer area start-->
<div class="footer_area">
  <div class="footer_top">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="footer_widget">
            <h3>About us</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <div class="footer_widget_contect">
              <p><i class="fa fa-map-marker" aria-hidden="true"></i>  19 Interpro Road Madison, AL 35758, USA</p>

              <p><i class="fa fa-mobile" aria-hidden="true"></i> (012) 234 432 3568</p>
              <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Contact@plazathemes.com </a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="footer_widget">
            <h3>My Account</h3>
            <ul>
              <li><a href="#">Your Account</a></li>
              <li><a href="#">My orders</a></li>
              <li><a href="#">My credit slips</a></li>
              <li><a href="#">My addresses</a></li>
              <li><a href="#">Login</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="footer_widget">
            <h3>Informations</h3>
            <ul>
              <li><a href="#">Specials</a></li>
              <li><a href="#">Our store(s)!</a></li>
              <li><a href="#">My credit slips</a></li>
              <li><a href="#">Terms and conditions</a></li>
              <li><a href="#">About us</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6">
          <div class="footer_widget">
            <h3>extras</h3>
            <ul>
              <li><a href="#"> Brands</a></li>
              <li><a href="#"> Gift Vouchers </a></li>
              <li><a href="#"> Affiliates </a></li>
              <li><a href="#"> Specials </a></li>
              <li><a href="#"> Privacy policy </a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer_bottom">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 col-md-6">
          <div class="copyright_area">
            <ul>
              <li><a href="#"> about us </a></li>
              <li><a href="#">  Customer Service  </a></li>
              <li><a href="#">  Privacy Policy  </a></li>
            </ul>
            <p>Copyright © 2018 <a href="#">Pos Coron</a>. All rights reserved. </p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6">
          <div class="footer_social text-right">
            <ul>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
              <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>

              <li><a href="#"><i class="fa fa-wifi" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
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
<script src="/assets\js\main.js"></script><a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-double-up"></i></a>
<!-- Code injected by live-server -->
<script>
  // <![CDATA[  <-- For SVG support
  if ('WebSocket' in window) {
    (function () {
      function refreshCSS() {
        var sheets = [].slice.call(document.getElementsByTagName("link"));
        var head = document.getElementsByTagName("head")[0];
        for (var i = 0; i < sheets.length; ++i) {
          var elem = sheets[i];
          var parent = elem.parentElement || head;
          parent.removeChild(elem);
          var rel = elem.rel;
          if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
            var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
            elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
          }
          parent.appendChild(elem);
        }
      }
      var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
      var address = protocol + window.location.host + window.location.pathname + '/ws';
      var socket = new WebSocket(address);
      socket.onmessage = function (msg) {
        if (msg.data == 'reload') window.location.reload();
        else if (msg.data == 'refreshcss') refreshCSS();
      };
      if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
        console.log('Live reload enabled.');
        sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
      }
    })();
  }
  else {
    console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
  }
  // ]]>
</script>


<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;"></div><iframe id="nr-ext-rsicon" style="position: absolute; display: none; width: 50px; height: 50px; z-index: 2147483647; border-style: none; background: transparent;"></iframe></body>
</html>
