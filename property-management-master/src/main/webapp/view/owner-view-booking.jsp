<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
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
<link rel="stylesheet" href="assets/css/cms.css">

<title>Owner View Booking</title>
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
							<img src="assets/icons/notification-icon.png"
								alt="Notification Icon">
						</div>
					</div>

					<div class="wrapper-menu">
						<ul>
					                                <!-- OWNER DASHBOARD -->
<c:if test="${user.userType == 'Owner' }">
	<a href="/"><li ><img src="assets/icons/property-icon.png" alt="Dashboard Icon">Home Page</li></a>
    <a href="/dashboard"><li ><img src="../assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
    <a href="/owner/property"><li class="active" ><img src="../assets/icons/property-icon.png" alt="Properties Icon">Properties</li></a>
    <a href="/bookingsHomesOwner"><li class="<c:if test='${menu == "bookings"}'>active</c:if>"><img src="../assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>

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
						<h3 class="d-inline-block mb-4">Booking</h3>



						<p>It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout. It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout.</p>
					</div>

					<div class=" row">
						<div id="addBlogForm" class="blog_body col-12">
							<div class="accordion" id="accordionExample">

								<div id="outerBooking" class="">
									<p class="d-inline font-weight-bold" style="color: #2c305d">Booking
										ID
										&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp
									</p>
									<span>${bookings.id}</span><br> <br>
									<p class="d-inline font-weight-bold" style="color: #2c305d">Booking
										Property ID &nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp</p>
									<span>${bookings.propertyID}</span><br> <br>
									<p class="d-inline font-weight-bold" style="color: #2c305d">Booking
										Message
										&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp</p>
									<span>${bookings.massege}</span><br> <br>
									<p class="d-inline font-weight-bold" style="color: #2c305d">Booked
										user's email &nbsp&nbsp&nbsp&nbsp&nbsp:&nbsp&nbsp</p>
									<span>${bookings.user_email}</span><br> <br>



									<!-- <button type="button"
                                                class="btn btn-outline-dark p-1 addBlogButtonss">Save</button>
                                            <button type="button"
                                                class="btn btn-outline-dark p-1 addBlogButtonss ml-2">Publish</button> -->



								</div>

													<form action="/ownerChangesBookingStatus" id="form1" method="post">
						<textarea class="mt-3 d-none p-2 w-100" name="message" id="textAreaBlogBody" cols="16" rows="6" placeholder="Message to owner">${bookings.massege}</textarea>
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="status" id="status" placeholder="Title" value="${bookings.status}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="id" id="id" placeholder="Title" value="${bookings.id}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="propertyID" id="propertyID" value="${bookings.propertyID}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="ownerID" id="ownerID" value="${bookings.ownerID}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="user_email" id="userEmail" value="${bookings.user_email}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="owner_email" id="owner_email" value="${bookings.owner_email}">
						<input class="p-2 d-none inputBlogTitle w-100" type="text" name="user_Name" id="user_Name" value="${bookings.user_Name}">
						<div class="buttonsINview d-inline-block float-right">
							<button type="button" class="btn btn-outline-dark p-1 addBlogButtonss" onclick="accept()" value="Accepted">Accept</button>
							<button type="button" class="btn btn-outline-danger p-1 addBlogButtonss" onclick="reject()" value="Rejected">Reject</button>
						</div>
					</form>
												</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	</div>

	<script type="text/javascript">
	function accept() {
		var r = confirm("Do you want to accept it?");
		if (r == true) {
			document.getElementById("ownerID").value = "${bookings.ownerID}";
			document.getElementById("status").value = "Accepted";
			document.getElementById("propertyID").value = "${bookings.propertyID}";
			document.getElementById("userEmail").value = "${bookings.user_email}";
			document.getElementById("owner_email").value = "${bookings.owner_email}";
			document.getElementById("user_Name").value = "${bookings.user_Name}";
			document.getElementById("form1").submit();
		} else {
			return false;
		}
	}

	function reject() {
		var r = confirm("Do you want to reject it?");
		if (r == true) {
			document.getElementById("ownerID").value = "${bookings.ownerID}";
			document.getElementById("status").value = "Rejected";
			document.getElementById("propertyID").value = "${bookings.propertyID}";
			document.getElementById("userEmail").value = "${bookings.user_email}";
			document.getElementById("owner_email").value = "${bookings.owner_email}";
			document.getElementById("user_Name").value = "${bookings.user_Name}";
			document.getElementById("form1").submit();
		} else {
			return false;
		}
	}
</script>

	


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