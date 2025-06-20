<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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
<title>Electro-elegance</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #333333">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Product Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/sell_Item"
					class="nav-link">Product</a></li>
			</ul>
		</nav>
	</header>
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${Product != null}">
					<form action="updateProductUser" method="post">
				</c:if>
				<c:if test="${Product == null}">
					<form action="insertProductUser" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${Product != null}">
            			Edit Product
            		</c:if>
						<c:if test="${Product == null}">
            			Add New Product
            		</c:if>
					</h2>
				</caption>

				<c:if test="${Product != null}">
					<input type="hidden" name="productID" value="<c:out value='${Product.productID}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Product Name</label> <input type="text"
						value="<c:out value='${Product.productName}' />" class="form-control"
						name="productName" required="required">
				</fieldset>

				<fieldset class="form-group">
				    <label>Description</label> 
				    <textarea class="form-control" name="description" rows="5" required="required"><c:out value="${Product.description}" /></textarea>
				</fieldset>


				<fieldset class="form-group">
				    <label>Category</label> 
				    <select class="form-control" name="category" required="required">
				        <c:out value='${Product.category}' />
				        <option value="Phone">Phone</option>
				        <option value="Laptop">Laptop</option>
				        <option value="TV">TV</option>
				    </select>
				</fieldset>

				
				<fieldset class="form-group">
					<label>Price</label> <input type="number"
						value="<c:out value='${Product.price}' />" class="form-control"
						name="price" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Quantity</label> <input type="number"
						value="<c:out value='${Product.quantity}' />" class="form-control"
						name="quantity" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User ID</label> <input type="number"
						value="<%= session.getAttribute("userID") %>" class="form-control"
						name="userID" readonly>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
	<footer>
        <!-- Footer content here -->
        <p>&copy; 2024 Product Management</p>
    </footer>
</body>
</html>