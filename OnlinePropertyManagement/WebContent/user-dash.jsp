<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Electro-elegance</title>
<!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
    <link rel="manifest" href="assets/images/icons/site.html">
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="assets/images/icons/favicon.ico">
    <meta name="apple-mobile-web-app-title" content="Molla">
    <meta name="application-name" content="Molla">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/skins/skin-demo-3.css">
    <link rel="stylesheet" href="assets/css/demos/demo-3.css">
</head>
<body>
	<div class="page-wrapper">
        <header class="header header-intro-clearance header-3">
        <div class="header-top">
                <div class="container">    
                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>                                
                                    <li><a href="signin-signup.jsp" >Sign in / Sign up</a></li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->

                </div><!-- End .container -->
            </div><!-- End .header-top -->
            <div class="header-top">
                <div class="container">    
                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>                                
                                    <li class="nav-item ms-3">
									<span class="input-group-btn">
									  <form action="logout" method="post">
									<button class="nav-link button" data-bs-toggle="modal" data-bs-target="#signup-modal" type="submit" style="background-color: #cc9966;">Logout</button>

									</form>
									</span>
									</li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->

                </div><!-- End .container -->
            </div><!-- End .header-top -->

            <div class="header-middle">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>
                        
                        <a href="#" class="logo" style="font-size: 24px; font-weight: bold; text-decoration: none; color: #cc9966;">
						    Electro-elegance
						</a>
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <div class="header-search header-search-extended header-search-visible d-none d-lg-block">
                            <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>
                            <form action="#" method="get">
                                <div class="header-search-wrapper search-wrapper-wide">
                                    <label for="q" class="sr-only">Search</label>
                                    <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
                                    <input type="search" class="form-control" name="q" id="q" placeholder="Search product ..." required>
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->
                    </div>

                    <div class="header-right">                       
                        <div >
                            <a href="<%=request.getContextPath()%>/sell_Item" class="nav-link">MyProducts</a>                             
                            </a>
                        </div>
                        <div >
                            <a href="<%=request.getContextPath()%>/buy_list" class="nav-link">Cart</a>                          
                            </a>
                        </div>
                        <div >
                            <a href="<%=request.getContextPath()%>/list_paymentUser" class="nav-link">Payments</a>                          
                            </a>
                        </div>
                        <div >
                            <a href="<%=request.getContextPath()%>/list_feedbackUser" class="nav-link">Feedbacks</a>                          
                            </a>
                        </div>

                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->

            <div class="header-bottom sticky-header">
                <div class="container">
                    <div class="header-left">
                        <div class="dropdown category-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Browse Categories">
                                Browse Categories <i class="icon-angle-down"></i>
                            </a>                       
                        </div><!-- End .category-dropdown -->
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="megamenu-container active">
                                    <a href="user-dash.jsp" class="sf-with-ul">Home</a>                                  
                                </li>
                                <li>
                                    <a href="home.jsp" class="sf-with-ul">Shop</a>                                    
                                </li>
                                <li>
                                    <li><a href="<%=request.getContextPath()%>/listAllProducts" class="nav-link">Products</a></li> 
                                </li>
                                <li>
                                    <a href="home.jsp" class="sf-with-ul">Pages</a>
                                </li>
                                <li>
                                    <a href="home.jsp" class="sf-with-ul">Blog</a>                             
                                </li>
                                <li>
                                    <a href="home.jsp" class="sf-with-ul">Elements</a>
                                </li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div><!-- End .header-center -->
                </div><!-- End .container -->
            </div><!-- End .header-bottom -->
        </header><!-- End .header -->
        
        <h4>Welcome Back ! <%=session.getAttribute("name")%></h4><br>
        
        <main class="main">
            <div class="intro-section pt-3 pb-3 mb-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="intro-slider-container slider-container-ratio mb-2 mb-lg-0">
                                <div class="intro-slider owl-carousel owl-simple owl-dark owl-nav-inside" data-toggle="owl" data-owl-options='{
                                        "nav": false, 
                                        "dots": true,
                                        "responsive": {
                                            "768": {
                                                "nav": true,
                                                "dots": false
                                            }
                                        }
                                    }'>
                                    <div class="intro-slide">
                                        <figure class="slide-image">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="assets/images/demos/demo-3/slider/slide-1-480w.jpg">
                                                <img src="assets/images/demos/demo-3/slider/slide-1.jpg" alt="Image Desc">
                                            </picture>
                                        </figure><!-- End .slide-image -->

                                        <div class="intro-content">
                                            <h3 class="intro-subtitle text-primary">Daily Deals</h3><!-- End .h3 intro-subtitle -->
                                            <h1 class="intro-title">
                                                AirPods <br>Earphones
                                            </h1><!-- End .intro-title -->

                                            <div class="intro-price">
                                                <sup>Today:</sup>
                                                <span class="text-primary">
                                                    $247<sup>.99</sup>
                                                </span>
                                            </div><!-- End .intro-price -->

                                            <a href="category.html" class="btn btn-primary btn-round">
                                                <span>Click Here</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .intro-content -->
                                    </div><!-- End .intro-slide -->

                                    <div class="intro-slide">
                                        <figure class="slide-image">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="assets/images/demos/demo-3/slider/slide-2-480w.jpg">
                                                <img src="assets/images/demos/demo-3/slider/slide-2.jpg" alt="Image Desc">
                                            </picture>
                                        </figure><!-- End .slide-image -->

                                        <div class="intro-content">
                                            <h3 class="intro-subtitle text-primary">Deals and Promotions</h3><!-- End .h3 intro-subtitle -->
                                            <h1 class="intro-title">
                                                Echo Dot <br>3rd Gen
                                            </h1><!-- End .intro-title -->

                                            <div class="intro-price">
                                                <sup class="intro-old-price">$49,99</sup>
                                                <span class="text-primary">
                                                    $29<sup>.99</sup>
                                                </span>
                                            </div><!-- End .intro-price -->

                                            <a href="category.html" class="btn btn-primary btn-round">
                                                <span>Click Here</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .intro-content -->
                                    </div><!-- End .intro-slide -->
                                </div><!-- End .intro-slider owl-carousel owl-simple -->
                                
                                <span class="slider-loader"></span><!-- End .slider-loader -->
                            </div><!-- End .intro-slider-container -->
                        </div><!-- End .col-lg-8 -->

                        <div class="col-lg-4">
                            <div class="intro-banners">
                                <div class="banner mb-lg-1 mb-xl-2">
                                    <a href="#">
                                        <img src="assets/images/demos/demo-3/banners/banner-1.jpg" alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle d-lg-none d-xl-block"><a href="#">Top Product</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#">Edifier <br>Stereo Bluetooth</a></h3><!-- End .banner-title -->
                                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->

                                <div class="banner mb-lg-1 mb-xl-2">
                                    <a href="#">
                                        <img src="assets/images/demos/demo-3/banners/banner-2.jpg" alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle d-lg-none d-xl-block"><a href="#">Clearance</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#">GoPro - Fusion 360 <span>Save $70</span></a></h3><!-- End .banner-title -->
                                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->

                                <div class="banner mb-0">
                                    <a href="#">
                                        <img src="assets/images/demos/demo-3/banners/banner-3.jpg" alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle d-lg-none d-xl-block"><a href="#">Featured</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#">Apple Watch 4 <span>Our Hottest Deals</span></a></h3><!-- End .banner-title -->
                                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->
                            </div><!-- End .intro-banners -->
                        </div><!-- End .col-lg-4 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .intro-section -->
            
            
            <div class="bg-light deal-container pt-7 pb-7 mb-5">
                <div class="container">
                    <div class="heading text-center mb-4">
                        <h2 class="title">Deals & Outlet</h2><!-- End .title -->
                        <p class="title-desc">Today’s deal and more</p><!-- End .title-desc -->
                    </div><!-- End .heading -->

                    <div class="row">
                        <div class="col-lg-6 deal-col">
                            <div class="deal" style="background-image: url('assets/images/demos/demo-3/deal/bg-1.jpg');">
                                <div class="deal-top">
                                    <h2>Deal of the Day.</h2>
                                    <h4>Limited quantities. </h4>
                                </div><!-- End .deal-top -->

                                <div class="deal-content">
                                    <h3 class="product-title"><a href="product.html">Home Smart Speaker with  Google Assistant</a></h3><!-- End .product-title -->

                                    <div class="product-price">
                                        <span class="new-price">$129.00</span>
                                        <span class="old-price">Was $150.99</span>
                                    </div><!-- End .product-price -->

                                    <a href="#" class="btn btn-link"><span>Shop Now</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .deal-content -->

                                <div class="deal-bottom">
                                    <div class="deal-countdown" data-until="+10h"></div><!-- End .deal-countdown -->
                                </div><!-- End .deal-bottom -->
                            </div><!-- End .deal -->
                        </div><!-- End .col-lg-6 -->
                        <div class="col-lg-6">
                            <div class="products">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="product product-2">
                                            <figure class="product-media">
                                                <span class="product-label label-circle label-top">Top</span>
                                                <span class="product-label label-circle label-sale">Sale</span>
                                                <a href="#">
                                                    <img src="assets/images/demos/demo-3/products/product-5.jpg" alt="Product image" class="product-image">
                                                </a>

                                                <div class="product-action-vertical">
                                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                                </div><!-- End .product-action -->

                                                <div class="product-action product-action-dark">
                                                    <a href="#" class="btn-product btn-cart" title="Add to cart"><span>add to cart</span></a>
                                                    <a href="#" class="btn-product btn-quickview" title="Quick view"><span>quick view</span></a>
                                                </div><!-- End .product-action -->
                                            </figure><!-- End .product-media -->

                                            <div class="product-body">
                                                <div class="product-cat">
                                                    <a href="#">Digital Cameras</a>
                                                </div><!-- End .product-cat -->
                                                <h3 class="product-title"><a href="#">Canon - EOS 5D Mark IV DSLR  Camera</a></h3><!-- End .product-title -->
                                                <div class="product-price">
                                                    <span class="new-price">$3,599.99</span>
                                                    <span class="old-price">Was $3,999.99</span>
                                                </div><!-- End .product-price -->
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                    <span class="ratings-text">( 5 Reviews )</span>
                                                </div><!-- End .rating-container -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product -->
                                    </div><!-- End .col-sm-6 -->
                                    
                                    <div class="col-6">
                                        <div class="product product-2">
                                            <figure class="product-media">
                                                <span class="product-label label-circle label-sale">Sale</span>
                                                <a href="#">
                                                    <img src="assets/images/demos/demo-3/products/product-6.jpg" alt="Product image" class="product-image">
                                                </a>

                                                <div class="product-action-vertical">
                                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                                </div><!-- End .product-action -->

                                                <div class="product-action product-action-dark">
                                                    <a href="#" class="btn-product btn-cart" title="Add to cart"><span>add to cart</span></a>
                                                    <a href="#" class="btn-product btn-quickview" title="Quick view"><span>quick view</span></a>
                                                </div><!-- End .product-action -->
                                            </figure><!-- End .product-media -->

                                            <div class="product-body">
                                                <div class="product-cat">
                                                    <a href="#">Computers & Tablets</a>
                                                </div><!-- End .product-cat -->
                                                <h3 class="product-title"><a href="#">Apple - Smart Keyboard Folio  for 11-inch iPad Pro</a></h3><!-- End .product-title -->
                                                <div class="product-price">
                                                    <span class="new-price">$179.00</span>
                                                    <span class="old-price">Was $200.99</span>
                                                </div><!-- End .product-price -->
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                    <span class="ratings-text">( 4 Reviews )</span>
                                                </div><!-- End .rating-container -->
                                            </div><!-- End .product-body -->
                                        </div><!-- End .product -->
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .products -->
                        </div><!-- End .col-lg-6 -->
                    </div><!-- End .row -->

                    <div class="more-container text-center mt-3 mb-0">
                        <a href="#" class="btn btn-outline-dark-2 btn-round btn-more"><span>Shop more Outlet deals</span><i class="icon-long-arrow-right"></i></a>
                    </div><!-- End .more-container -->
                </div><!-- End .container -->
            </div><!-- End .deal-container -->
            
            
            
           
            <footer class="footer">
        	<div class="footer-middle">
	            <div class="container">
	            	<div class="row">
	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget widget-about">
	            				<a href="#" class="logo" style="font-size: 24px; font-weight: bold; text-decoration: none; color: #cc9966;">
								    Electro-elegance
								</a>
	            				<p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. </p>

	            				<div class="widget-call">
                                    <i class="icon-phone"></i>
                                    Got Question? Call us 24/7
                                    <a href="tel:#">+0123 456 789</a>         
                                </div><!-- End .widget-call -->
	            			</div><!-- End .widget about-widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Useful Links</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="about.html">About</a></li>
                                    <li><a href="#">Our Services</a></li>
	            					<li><a href="#">How to shop</a></li>
	            					<li><a href="faq.html">FAQ</a></li>
	            					<li><a href="contact.html">Contact us</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Payment Methods</a></li>
	            					<li><a href="#">Money-back guarantee!</a></li>
	            					<li><a href="#">Returns</a></li>
	            					<li><a href="#">Shipping</a></li>
	            					<li><a href="#">Terms and conditions</a></li>
	            					<li><a href="#">Privacy Policy</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">My Account</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Sign In</a></li>
	            					<li><a href="cart.html">View Cart</a></li>
	            					<li><a href="#">My Wishlist</a></li>
	            					<li><a href="#">Track My Order</a></li>
	            					<li><a href="#">Help</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->
	            	</div><!-- End .row -->
	            </div><!-- End .container -->
	        </div><!-- End .footer-middle -->

	        <div class="footer-bottom">	        
	        </div><!-- End .footer-bottom -->
        </footer><!-- End .footer -->
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>
    
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.plugin.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/demos/demo-3.js"></script>
</body>
</html>