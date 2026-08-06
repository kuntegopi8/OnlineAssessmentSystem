<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Student Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
body {
	background: #f5f7fb;
	font-family: Segoe UI;
}

/* Navbar */

.navbar {
	background: linear-gradient(90deg, #0d6efd, #4e8ef7);
}

.navbar-brand {
	color: white;
	font-weight: bold;
	font-size: 28px;
}

.nav-link {
	color: white !important;
	font-weight: bold;
}

.logout-btn {
	background: white;
	color: black;
	font-weight: bold;
	border-radius: 8px;
	padding: 5px 15px;
	text-decoration: none;
}

/* Banner */

.banner {
	background: linear-gradient(135deg, #0d6efd, #5c9cff);
	color: white;
	border-radius: 20px;
	padding: 35px;
	margin-top: 25px;
	box-shadow: 0px 10px 25px rgba(0, 0, 0, .15);
}

/* Cards */

.card {
	border: none;
	border-radius: 18px;
	box-shadow: 0px 5px 20px rgba(0, 0, 0, .08);
	transition: .3s;
}

.card:hover {
	transform: translateY(-8px);
}

.card i {
	font-size: 45px;
	margin-bottom: 15px;
}

.profile-card {
	min-height: 430px;
}

.btn-custom {
	border-radius: 8px;
	font-weight: bold;
}

/* Table */

.table-card {
	border-radius: 18px;
	box-shadow: 0px 5px 20px rgba(0, 0, 0, .08);
}
</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg">

	<div class="container-fluid">

		<a class="navbar-brand" href="#">
			<i class="fas fa-user-graduate"></i> Career Portal
		</a>

		<ul class="navbar-nav ms-auto">

			<li class="nav-item">
				<a class="nav-link" href="#">
					Welcome <span id="studentName">Student</span>
				</a>
			</li>

			<li class="nav-item">
				<a href="userlogin.jsp" class="logout-btn">
					<i class="fa fa-sign-out-alt"></i> Logout
				</a>
			</li>

		</ul>

	</div>

</nav>

<div class="container-fluid">

	<!-- Banner -->

	<div class="banner">

		<h2>Welcome to Career Recommendation & Recruitment Assessment
			System</h2>

		<p class="mb-0">
			Complete assessments and discover the best career opportunities
			based on your skills.
		</p>

	</div>

	<div class="row mt-4">

		<!-- Profile -->

		<div class="col-lg-3">

			<div class="card profile-card p-4">

				<h3 class="text-primary">

					<i class="fas fa-user-circle"></i>

					Student Profile

				</h3>

				<hr>

				<p>
					<b>Name :</b>

					<span id="name">Parth Bhosale</span>
				</p>

				<p>
					<b>Email :</b>

					<span id="email">parth@gmail.com</span>
				</p>

				<p>
					<b>Qualification :</b>

					<span id="qualification">B.E Computer Engineering</span>
				</p>

				<p>
					<b>CGPA :</b>

					<span id="cgpa">8.40</span>
				</p>

				<p>
					<b>Selected Interest :</b>

					<span id="interest">Java Devloper</span>
				</p>

			</div>

		</div>

		<!-- Dashboard Cards -->

		<div class="col-lg-9">

			<div class="row g-4">

				<div class="col-md-6">

					<div class="card p-4 text-center">

						<i class="fas fa-file-alt text-warning"></i>

						<h2>Available Assessments</h2>

						<p>
							Start assessment based on your selected interest.
						</p>

						<a href="available_assessment.jsp"
							class="btn btn-primary btn-custom">

							Start

						</a>

					</div>

				</div>

				<div class="col-md-6">

					<div class="card p-4 text-center">

						<i class="fas fa-chart-line text-success"></i>

						<h2>Assessment Result</h2>

						<p>
							View your latest assessment score.
						</p>

						<a href="assessment_result.jsp"
							class="btn btn-success btn-custom">

							View

						</a>

					</div>

				</div>

				<div class="col-md-6">

					<div class="card p-4 text-center">

						<i class="fas fa-building text-danger"></i>

						<h2>Available Companies</h2>

						<p>
							View companies matching your profile.
						</p>

						<a href="available_company.jsp"
							class="btn btn-danger btn-custom">

							View

						</a>

					</div>

				</div>

				<div class="col-md-6">

					<div class="card p-4 text-center">

						<i class="fas fa-calendar-check text-info"></i>

						<h2>Recruitment Drives</h2>

						<p>
							Upcoming recruitment drives.
						</p>

						<a href="drive_list.jsp"
							class="btn btn-info btn-custom">

							View

						</a>

					</div>

				</div>

			</div>

		</div>

	</div>

	<!-- Recent Activity -->

	<div class="card table-card mt-4 p-3">

		<h3 class="text-primary">

			<i class="fas fa-history"></i>

			Recent Activity

		</h3>

		<hr>

		<table class="table table-bordered">

			<thead class="table-primary">

				<tr>

					<th>Date</th>

					<th>Activity</th>

					<th>Status</th>

				</tr>

			</thead>

			<tbody>

				<tr>

					<td>01-08-2026</td>

					<td>Java Assessment</td>

					<td class="text-success">Completed</td>

				</tr>

				<tr>

					<td>02-08-2026</td>

					<td>TCS Recruitment Drive</td>

					<td class="text-warning">Applied</td>

				</tr>

			</tbody>

		</table>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../js/login.js"></script>
</body>
</html>