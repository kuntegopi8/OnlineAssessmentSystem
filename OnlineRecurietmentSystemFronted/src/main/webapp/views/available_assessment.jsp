<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Available Assessments</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
	background:#f5f7fb;
	font-family:Segoe UI,sans-serif;
}

.navbar{
	background:linear-gradient(90deg,#0d6efd,#5b8def);
}

.navbar-brand{
	color:white;
	font-weight:bold;
	font-size:25px;
}

.heading{
	margin:30px 0;
	text-align:center;
	font-weight:bold;
	color:#0d6efd;
}

.card{
	border:none;
	border-radius:15px;
	box-shadow:0 5px 15px rgba(0,0,0,.1);
	transition:.3s;
}

.card:hover{
	transform:translateY(-5px);
}

.card i{
	font-size:45px;
	color:#0d6efd;
}

.btn-start{
	width:100%;
	font-weight:bold;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="container">

<a class="navbar-brand">

<i class="fas fa-book"></i>

Online Recruitment System

</a>

</div>

</nav>

<div class="container">

<h2 class="heading">

Available Assessments

</h2>

<div class="row g-4" id="assessmentContainer">

<!-- Assessment Card -->

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-laptop-code"></i>

<h4 class="mt-3">

Java Assessment

</h4>

<p>

Duration : 30 Minutes

</p>

<p>

Questions : 20

</p>

<p>

Total Marks : 40

</p>

<button class="btn btn-primary btn-start">

Start Assessment

</button>

</div>

</div>

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-code"></i>

<h4 class="mt-3">

Python Assessment

</h4>

<p>

Duration : 30 Minutes

</p>

<p>

Questions : 20

</p>

<p>

Total Marks : 40

</p>

<button class="btn btn-success btn-start">

Start Assessment

</button>

</div>

</div>

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-brain"></i>

<h4 class="mt-3">

Aptitude Assessment

</h4>

<p>

Duration : 25 Minutes

</p>

<p>

Questions : 15

</p>

<p>

Total Marks : 30

</p>

<button class="btn btn-warning btn-start">

Start Assessment

</button>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>