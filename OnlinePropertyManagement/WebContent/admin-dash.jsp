<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
	<title>Electro-elegance</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
    <link rel="shortcut icon" href="assets/images/icons/favicon.ico">
    <!-- Stylesheets -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body {
            background-color: #E5E1DA !important;
        }
        .sidebar {
            height: calc(100vh - 60px); /* Adjusted sidebar height */
            width: 250px;
            position: fixed;
            left: 0;
            background-color: #cc9966;
            padding-top: 10px; /* Adjust padding to fit content */
        }
        .nav-item {
            margin-bottom: 10px; /* Add some space between each navigation item */
        }
        .nav-link {
            color: #ffff; /* Default text color */
            transition: color 0.3s ease; /* Smooth transition effect for text color */
        }
        .nav-link:hover {
            color: #fff; /* Change text color on hover */
        }
        .nav-link.active {
            font-weight: bold; /* Make the active link bold */
            background-color: #333333;
            padding: 8px 15px;
            border-radius: 5px;
        }
        .sidebar {
            padding: 20px;
            border-right: 1px solid #ccc; /* Add a border to separate sidebar from content */
        }
        .content {
            padding: 20px;
        }
        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #333333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
<div class="page-wrapper">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #333333">
            <div>
                <a href="home.jsp" class="logo" style="font-size: 24px; font-weight: bold; text-decoration: none; color: #cc9966;">
						    Electro-elegance
						</a>
            </div>
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
            
        </nav>
    </header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <div class="sidebar">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="admin-dash.jsp">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/list_user">Users</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/list_product">Products</a>
                        </li>
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/list_cart" class="nav-link">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/list_payment" class="nav-link">Payments</a>
                        </li>
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/list_feedback" class="nav-link">Feedbacks</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10">
                <div class="content">
                    <h4>Welcome Back! Admin</h4><br>
                    
                    Electro-elegance is an innovative online property management system designed to streamline the
						buying and selling process of electronic items. With the rapid growth of e-commerce and the
						increasing demand for electronic products, there is a need for a comprehensive platform that
						facilitates secure transactions and efficient management of electronic property. Electro-elegance
						provides you with the ability to sell a electronic item by purchasing it, and users can provide feedback
						and ratings for improve our website .
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <p>&copy; 2024 Property Management Application</p>
</footer>
</body>
</html>
