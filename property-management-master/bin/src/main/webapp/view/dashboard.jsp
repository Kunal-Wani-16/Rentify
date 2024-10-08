<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap Toggle Switch -->
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Font Roboto 400, 500, 700 and 900-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <link rel="stylesheet" href="assets/css/users.css">
    <link rel="stylesheet" href="assets/css/toggle-switch.css">

    <title>Owner Dashboard</title>
</head>
    <body>
        <div class="section">
            <div class="container-fluid">
                <div class="row">
                    <div class="left-panel">
                        <div class="wrapper-profile">
                            <div class="profile-picture">
                                <img src="assets/icons/profile-pic.png" alt="Profile picture">
                            </div>
                            <div class="profile-text">
                                <h6><c:out value="${user.firstName} ${user.lastName}"/></h6>
                                <p><c:out value="${user.userType}"/></p>
                            </div>
                            <div class="profile-notification">
                                <img src="assets/icons/notification-icon.png" alt="Notification Icon">
                            </div>
                        </div>

                        <div class="wrapper-menu">
                                <ul>

                       <!-- STUDENT DASHBOARD -->
	                                <c:if test="${user.userType == 'Student'}">
	                                	<a href="/"><li ><img src="assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
                                        <a href="/dashboard"><li class="active"><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
										<a href="/bookingsHomestu"><li><img src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
										<a href="/payment-details"><li><img src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
										<a href="/view/Proposals"><li><img src="../assets/icons/transfer.png" style = "height:35px" Promotions Icon>Proposals</li></a>
										 
									</c:if>
									
<!-- PARENT LOGIN		 -->
									<c:if test="${user.userType == 'Parent' }">
											<a href="/"><li ><img src="assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
                                        <a href="dashboard"><li class="active"><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
										<a href="/bookingsHomestu"><li><img src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
										<a href="/payment-details"><li><img src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
										<a href="/view/Proposals"><li><img src="../assets/icons/transfer.png" style = "height:35px" Promotions Icon>Proposals</li></a>
										 
									</c:if>
								           



								<!-- OWNER DASHBOARD -->
<c:if test="${user.userType == 'Owner' }">
	<a href="/"><li ><img src="assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
    <a href="dashboard"><li class="active"><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
    <a href="/owner/property"><li><img src="../assets/icons/property-icon.png" alt="Properties Icon">Properties</li></a>
    <a href="/bookingsHomesOwner"><li class="<c:if test='${menu == "bookings"}'>active</c:if>"><img src="../assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
    <a href="/owner/proposal"><li><img src="../assets/icons/proposal.png" alt="Proposal Icon">Proposals</li></a>
    <a href="/show-promotion"><li><img src="../assets/icons/promotions-icon.png" alt="Promotions Icon">Promotions</li></a>                                
    <a href="payment-details"><li><img src="../assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
   </c:if>

									
									<c:if test="${user.userType == 'Employee' }">
										<a href="/dashboard"><li class="active"><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
		                                <a href="/admin/property"><li><img src="assets/icons/property-icon.png" alt="Properties Icon">Properties</li></a>
		                                <a href="/bookingsHomesOwners"><li><img src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
			                            <a href="/owner/proposal"><li><img src="../assets/icons/proposal.png" alt="Proposal Icon">Proposals</li></a>
			                            <a href="/admin-promotion"><li><img src="assets/icons/promotions-icon.png" alt="Promotions Icon">Promotions</li></a>
			                            <a href="/all-payments"><li><img src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
			                            <a href="cms"><li><img src="assets/icons/content-management-icon.png" alt="Contemtn Management Icon">Content Management</li></a>
			                            <a href="/show-ticket"><li><img src="assets/icons/support-icon.png" alt="Support Icon">Support</li></a>
									</c:if>
									
									<c:if test="${user.userType == 'Admin' }">
										<a href="/dashboard"><li class="active"><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
		                                <a href="/admin/property"><li><img src="assets/icons/property-icon.png" alt="Properties Icon">Properties</li></a>
		                                <a href="/bookingsHomesOwner"><li><img src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
		                                <a href="/users"><li><img src="assets/icons/users-icon.png" alt="Users Icon">Users</li></a>
		                                <a href="/owner/proposal"><li><img src="../assets/icons/proposal.png" alt="Proposal Icon">Proposals</li></a>
			                            <a href="/admin-promotion"><li><img src="assets/icons/promotions-icon.png" alt="Promotions Icon">Promotions</li></a>
			                            <a href="/all-payments"><li><img src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
			                            <a href="cms"><li><img src="assets/icons/content-management-icon.png" alt="Contemtn Management Icon">Content Management</li></a>
			                            <a href="/show-ticket"><li><img src="assets/icons/support-icon.png" alt="Support Icon">Support</li></a>
									</c:if>
                                </ul>
                        </div>

                        <div class="wrapper-help">
                            <a href=""><img src="assets/icons/help-icon.png" alt="Help icon">Help</a>
                        </div>
                    </div>
                    <div class="right-panel">
                        <div class="wrapper-body">
                            
                            <c:if test="${user.userType == 'Student'}">
								<h3>Student Booking</h3>
							</c:if>
							
							<c:if test="${user.userType == 'Parent' }">
								<h3>Parent Booking</h3>
							</c:if>
							
							<c:if test="${user.userType == 'Owner' }">
								<h3>Owner Dashboard</h3>
							</c:if>
							
							<c:if test="${user.userType == 'Employee' }">
								<h3>Employee Dashboard</h3>
							</c:if>
							
							<c:if test="${user.userType == 'Admin' }">
								<h3>Admin Dashboard</h3>
							</c:if>
							
                            <a class="link-log-out" href="/logout">LOG OUT</a>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        </div>

                        <div class="dashboard-body">
                                       
							<img class="property-img" src="../assets/images/house3.png" alt="House images">

                        </div>
                    </div>
                </div>
            </div>
        </div>

	<!-- Optional JavaScript -->

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <!-- Bootstrap Toggle Switch -->
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js" async></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
   <script type="text/javascript" src="static/js/user-validator.js"></script>
    
    </body>
</html>