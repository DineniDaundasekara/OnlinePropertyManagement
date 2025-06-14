<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        
                        <a href="home.jsp" class="logo" style="font-size: 24px; font-weight: bold; text-decoration: none; color: #cc9966;">
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
                            <a href="<%=request.getContextPath()%>/sell_Item" class="nav-link">Products</a>                             
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
</body>
</html>