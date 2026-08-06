<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>My Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
	background:#f4f7fc;
	font-family:Segoe UI,sans-serif;
}

.navbar{
	background:#0d6efd;
}

.navbar-brand{
	color:white;
	font-size:24px;
	font-weight:bold;
}

.profile-card{
	max-width:700px;
	margin:40px auto;
	border:none;
	border-radius:15px;
	box-shadow:0px 5px 20px rgba(0,0,0,.1);
}

.card-header{
	background:#0d6efd;
	color:white;
	text-align:center;
	font-size:28px;
	font-weight:bold;
	padding:20px;
}

.form-control{
	height:45px;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="container">

<a class="navbar-brand">

<i class="fas fa-user"></i>

Student Profile

</a>

</div>

</nav>

<div class="container">

<div class="card profile-card">

<div class="card-header">

My Profile

</div>

<div class="card-body">

<form>

<div class="mb-3">

<label>Full Name</label>

<input type="text"
class="form-control"
value="Rahul Sharma">

</div>

<div class="mb-3">

<label>Email</label>

<input type="email"
class="form-control"
value="rahul@gmail.com"
readonly>

</div>

<div class="mb-3">

<label>Mobile</label>

<input type="text"
class="form-control"
value="9876543210">

</div>

<div class="mb-3">

<label>Gender</label>

<input type="text"
class="form-control"
value="Male">

</div>

<div class="mb-3">

<label>Qualification</label>

<input type="text"
class="form-control"
value="B.E Computer Engineering">

</div>

<div class="mb-3">

<label>College Name</label>

<input type="text"
class="form-control"
value="ABC Engineering College">

</div>

<div class="mb-3">

<label>CGPA</label>

<input type="text"
class="form-control"
value="8.50">

</div>

<div class="mb-3">

<label>Interest</label>

<input type="text"
class="form-control"
value="Java"
readonly>

</div>

<div class="text-center">

<button type="submit"
class="btn btn-primary">

<i class="fas fa-save"></i>

Update Profile

</button>

<a href="student_dashboard.jsp"
class="btn btn-secondary">

Dashboard

</a>

</div>

</form>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>