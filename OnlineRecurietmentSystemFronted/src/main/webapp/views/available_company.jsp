<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Available Companies</title>

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
	background:linear-gradient(90deg,#0d6efd,#4d8bf5);
}

.navbar-brand{
	color:white;
	font-weight:bold;
	font-size:24px;
}

.page-title{
	margin:30px 0;
	text-align:center;
	font-weight:bold;
	color:#0d6efd;
}

.card{
	border:none;
	border-radius:15px;
	box-shadow:0px 5px 20px rgba(0,0,0,.1);
	transition:.3s;
}

.card:hover{
	transform:translateY(-6px);
}

.company-icon{
	font-size:55px;
	color:#0d6efd;
	margin-bottom:15px;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="container">

<a class="navbar-brand">

<i class="fas fa-building"></i>

Online Recruitment System

</a>

</div>

</nav>

<div class="container">

<h2 class="page-title">

Available Companies

</h2>

<div class="row g-4">

<!-- Company 1 -->

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-building company-icon"></i>

<h4>TCS</h4>

<p><b>Role :</b> Java Developer</p>

<p><b>Package :</b> ₹7 LPA</p>

<p><b>Location :</b> Pune</p>

<p><b>Eligibility :</b> CGPA 7+</p>

<a href="company_details.jsp" class="btn btn-primary">

View Details

</a>

</div>

</div>

<!-- Company 2 -->

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-building company-icon"></i>

<h4>Infosys</h4>

<p><b>Role :</b> Software Engineer</p>

<p><b>Package :</b> ₹6.5 LPA</p>

<p><b>Location :</b> Bangalore</p>

<p><b>Eligibility :</b> CGPA 6.5+</p>

<a href="company_details.jsp" class="btn btn-success">

View Details

</a>

</div>

</div>

<!-- Company 3 -->

<div class="col-md-4">

<div class="card p-4 text-center">

<i class="fas fa-building company-icon"></i>

<h4>Capgemini</h4>

<p><b>Role :</b> Full Stack Developer</p>

<p><b>Package :</b> ₹8 LPA</p>

<p><b>Location :</b> Mumbai</p>

<p><b>Eligibility :</b> CGPA 7+</p>

<a href="company_details.jsp" class="btn btn-warning">

View Details

</a>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>