<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Electro-elegance</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #E5E1DA !important;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        footer {
            width: 100%;
            background-color: #333333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: auto;
        }

        .card-body {
            background-color: #F2F1EB; 
            padding: 20px; 
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark"
            style="background-color:#333333">
            <div>
                <a href="https://www.javaguides.net" class="navbar-brand"> Product Management App </a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/buy_list"
                    class="nav-link">Cart</a></li>
            </ul>
        </nav>
    </header>
    <br>
    
    <div class="container">
        <h3 class="text-center">List of Products</h3>
        <hr>
        
        <br>
        <div class="row">
            <c:forEach var="Product" items="${listProducts}">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><c:out value="${Product.productName}" /></h5>
                            <p class="card-text"><c:out value="${Product.description}" /></p>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Category: <c:out value="${Product.category}" /></li>
                                <li class="list-group-item">Price: <c:out value="${Product.price}" /></li>
                                <li class="list-group-item">Quantity: <c:out value="${Product.quantity}" /></li>
                                <li class="list-group-item">User ID: <c:out value="${Product.userID}" /></li>
                            </ul>
                            <div class="mt-3">
                                <!-- Link to redirect to buy-form.jsp with product details -->
                                <a href="<%=request.getContextPath()%>/addToCart?productID=${Product.productID}&productName=${Product.productName}&price=${Product.price}">Add to Cart</a>

                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <footer>
        <!-- Footer content here -->
        <p>&copy; 2024 Product Management</p>
    </footer>
</body>
</html>
