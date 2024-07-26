<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Font Roboto 400, 500, 700 and 900-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap"
	rel="stylesheet">

<!-- Styles -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/dashboard.css">
    <link rel="stylesheet" href="../assets/css/toggle-switch.css">
<link rel="stylesheet" href="assets/css/users.css">

<title>User Bookings</title>
</head>

<body>
	<c:if test="${users.userType == 'Owner' }">
						Please create login as a Student or Parent
	</c:if>
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="left-panel">
					<div class="wrapper-profile">
						<div class="profile-picture">
							<img src="assets/icons/profile-pic.png" alt="Profile picture">
						</div>
						<div class="profile-text">
							<h6><c:out value="${users.firstName} ${users.lastName}"/></h6>
							<p><c:out value="${users.userType}"/></p>
						</div>
						<div class="profile-notification">
							<img src="assets/icons/notification-icon.png"
								alt="Notification Icon">
						</div>
					</div>
					<c:if test="${users.userType == 'Owner' }">
						Please create login as a Student or Parent
					</c:if>
					<div class="wrapper-menu">
						<ul>
						<!-- PARENT LOGIN		 -->
									<c:if test="${users.userType == 'Parent' }">
										<a href="/"><li ><img src="../assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
                                        <a href="dashboard"><li ><img src="../assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
										<a href="/bookingsHomestu"><li class="active"><img src="../assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
										
										
									
									</c:if>
								           

<!-- STUDENT LOGIN		 -->
									<c:if test="${users.userType == 'Student' }">
										<a href="/"><li ><img src="../assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
                                        <a href="dashboard"><li ><img src="../assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
										<a href="/bookingsHomestu"><li class="active"><img src="../assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
										
						
								
									</c:if>
								           


						</ul>
					</div>

					<div class="wrapper-help">
						<a href=""><img src="assets/icons/help-icon.png"
							alt="Help icon">Help</a>
					</div>
				</div>
				<div class="right-panel">
					<div class="wrapper-body">
						<c:if test="${users.userType == 'Student'}">
							<h3>Student Booking</h3>
						</c:if>
							
						<c:if test="${users.userType == 'Parent' }">
							<h3>Parent Booking</h3>
						</c:if>
							
						<c:if test="${users.userType == 'Owner' }">
							<h3>Owner Dashboard</h3>
						</c:if>
							
						
							
						<a class="link-log-out" href="/logout">LOG OUT</a>
						<p>Welcome to Rentify </p>
					</div>
					<div class="dashboard-body">
						<table class="table table-borderless">
							<thead>
								<tr>
									<!-- <th scope="col">Booking ID</th> -->
									<th scope="col">Property ID</th>
									<th scope="col">Owner</th>
									<th scope="col">Status</th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="bookings" items="${bookings}">

									<c:if test="${bookings.userID == users.id}">
										<tr>
											<%-- <td>
											<div class="table-profile-text">
												<p class="table-name">${bookings.id}</p>
											</div>
										</td> --%>
											<td>
												<p class="">${bookings.propertyID}</p>
											</td>
											<td>${bookings.ownerName}</td>
											<td><c:if test="${bookings.status == 'Accepted'}">
													<p class="txt-green">Accepted</p>
												</c:if> <c:if test="${bookings.status == 'Rejected'}">
													<p class="text-danger">Reject</p>
												</c:if> <c:if test="${bookings.status == 'Pending'}">
													<p class="text-warning">Pending</p>
												</c:if></td>
											<td>
												<ul class="list-actions">
													<a href="/editBookings?id=${bookings.id}">
														<li><img src="assets/icons/home-060-edit-512.png"
															width="20px" height="20px" alt="Edit user icon "></li>
													</a>
													<li></li>
													<a href="/deleteBookingsPar?id=${bookings.id}">
														<li><img src="assets/icons/delete-icon.png"
															alt="Delete user icon"></li>
													</a>
												</ul>
											</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
</body>

</html>