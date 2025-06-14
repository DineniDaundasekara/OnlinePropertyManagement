<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electro-elegance</title>
    
    <style>
    	body {
			 background-color: #E5E1DA !important;
				}
		table.table-bordered > thead > tr > th,
	    table.table-bordered > tbody > tr > td {
	        border: 2px solid #000; /* Change border color here */
	    }
		
        .content {
            padding: 20px;
            background-color: #E5E1DA !important;
        }
        .main-content {
		    margin: 20px auto; /* Add space around the main content */
		    
		    background-color: #E5E1DA !important;
		}
		
		.table-responsive {
		    margin-top: 20px; /* Add space above the table */
		    margin-bottom: 20px; /* Add space below the table */
		    display: flex;
		    justify-content: center; /* Center the table horizontally */
		}
		
		.footer {
		    margin-top: 20px; /* Add space above the footer */
		}
		
        
        
    </style>
</head>

<body>
<div class="footer">
		<jsp:include page="header.jsp"></jsp:include>
	</div>


	
       <input type="hidden" value="<%= session.getAttribute("userID") %>" name="userID">
                    <!-- Main content wrapper -->
                    <div class="main-content">
                        <!-- Main content here -->
                        <div class="container">
                            <h3 class="text-center">List of Payments</h3>
                            <hr>
                            <div class="container text-left">
                                <a href="<%=request.getContextPath()%>/newPaymentUser" class="btn btn-success">Add New Payment</a>
                            </div>
                            <br>
                            <div class="table-responsive text-center">
                                <table class="table table-bordered d-inline-block">
                                    <thead>
                                        <tr>
                                            <th>Payment ID</th>
                                            <th>User ID</th>
                                            <th>Payment Amount</th>
                                            <th>Payment Method</th>
                                            <th>Payment Date</th>            
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="Payment" items="${listPaymentsUser}">
                                            <tr>
                                                <td><c:out value="${Payment.paymentID}" /></td>
                                                <td><c:out value="${Payment.userID}" /></td>
                                                <td><c:out value="${Payment.paymentAmount}" /></td>
                                                <td><c:out value="${Payment.paymentMethod}" /></td>
                                                <td><c:out value="${Payment.paymentDate}" /></td>      
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/editPaymentUser?paymentID=<c:out value='${Payment.paymentID}' />" class="btn btn-primary">Edit</a>
                                                    <a href="<%=request.getContextPath()%>/deletePaymentUser?paymentID=<c:out value='${Payment.paymentID}' />" class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
           
    
    <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>