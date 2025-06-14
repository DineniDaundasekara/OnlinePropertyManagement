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
				<li><a href="<%=request.getContextPath()%>/list_paymentUser"
					class="nav-link">Payment</a></li>
			</ul>
		</nav>
	</header>
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${Payment != null}">
					<form action="updatePaymentUser" method="post">
				</c:if>
				<c:if test="${Payment == null}">
					<form action="insertPaymentUser" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${Payment != null}">
            			Edit Payment
            		</c:if>
						<c:if test="${Payment == null}">
            			Add New Payment
            		</c:if>
					</h2>
				</caption>

				<c:if test="${Payment != null}">
					<input type="hidden" name="paymentID" value="<c:out value='${Payment.paymentID}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User ID</label> <input type="number"
						value="<%= session.getAttribute("userID") %>" class="form-control"
						name="userID" readonly>
				</fieldset>

				<fieldset class="form-group">
					<label>Payment Amount</label> <input type="number"
						value="<c:out value='${Payment.paymentAmount}' />" class="form-control"
						name="paymentAmount" required="required">
				</fieldset>

				<fieldset class="form-group">
				    <label for="paymentMethod">Payment Method</label>
				    <select class="form-control" name="paymentMethod" id="paymentMethod" required="required">
				        <option value="Credit Card" <c:if test="${Payment.paymentMethod eq 'Credit Card'}">selected</c:if>>Credit Card</option>
				        <option value="PayPal" <c:if test="${Payment.paymentMethod eq 'PayPal'}">selected</c:if>>PayPal</option>
				        <option value="Debit Card" <c:if test="${Payment.paymentMethod eq 'Debit Card'}">selected</c:if>>Debit Card</option>
				    </select>
				</fieldset>

				
				
				<fieldset class="form-group">
					<label>Payment Date</label> <input type="date"
						value="<c:out value='${Payment.paymentDate}' />" class="form-control"
						name="paymentDate" required="required">
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