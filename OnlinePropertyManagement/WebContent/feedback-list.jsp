<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				}
		table.table-bordered > thead > tr > th,
	    table.table-bordered > tbody > tr > td {
	        border: 2px solid #000; /* Change border color here */
	    }
        .sidebar {
		    height: 100%;
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
		
		/* Active link style */
		.nav-link.active {
		    font-weight: bold; /* Make the active link bold */
		}
		
		/* Add background color and padding to the active link */
		.nav-link.active {
		    background-color: #333333;
		    padding: 8px 15px;
		    border-radius: 5px;
		}
		
		/* Additional styles for the sidebar */
		.sidebar {
		    padding: 20px;
		    border-right: 1px solid #ccc; /* Add a border to separate sidebar from content */
		}
        .content {
            padding: 20px;
        }
        .main-content {
            margin: 0 auto; 
            max-width: 1000px; 
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
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #333333">
            <div>
                <a href="https://www.javaguides.net" class="navbar-brand"> Feedback Management App </a>
            </div>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list_feedback" class="nav-link">Feedbacks</a></li>
            </ul>
        </nav>
    </header>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <div class="sidebar">
                    <!-- Sidebar content here -->
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="admin-dash.jsp">Dashboard</a>
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
                        	<a href="<%=request.getContextPath()%>/list_feedback" class="nav-link active">Feedbacks</a>
                    	</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-10">
                <div class="content">
                    <!-- Main content wrapper -->
                    <div class="main-content">
                        <!-- Main content here -->
                        <div class="container">
                            <h3 class="text-center">List of Feedbacks</h3>
                            <hr>
                            <div class="container text-left">
                                <a href="<%=request.getContextPath()%>/newFeedback" class="btn btn-success">Add New Feedback</a>
                            </div>
                            <br>
                            <div class="table-responsive text-center">
                                <table class="table table-bordered d-inline-block">
                                    <thead>
                                        <tr>
                                            <th>Feedback ID</th>
                                            <th>User ID</th>
                                            <th>Product ID</th>
                                            <th>Ratings</th>
                                            <th>Message</th>
                                            <th>FeedbackDate</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="Feedback" items="${listFeedbacks}">
                                            <tr>
                                                <td><c:out value="${Feedback.feedbackID}" /></td>
                                                <td><c:out value="${Feedback.userID}" /></td>
                                                <td><c:out value="${Feedback.productID}" /></td>
                                                <td><c:out value="${Feedback.ratings}" /></td>
                                                <td><c:out value="${Feedback.message}" /></td>
                                                <td><c:out value="${Feedback.feedbackDate}" /></td>      
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/editFeedback?feedbackID=<c:out value='${Feedback.feedbackID}' />" class="btn btn-primary">Edit</a>
                                                    <a href="<%=request.getContextPath()%>/deleteFeedback?feedbackID=<c:out value='${Feedback.feedbackID}' />" class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <!-- Footer content here -->
        <p>&copy; 2024 Feedbacks Management</p>
    </footer>
</body>
</html>
