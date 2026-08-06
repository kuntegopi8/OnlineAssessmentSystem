<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Application Status</title>

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
	font-weight:bold;
	font-size:24px;
}

.card{
	margin-top:30px;
	border:none;
	border-radius:15px;
	box-shadow:0px 5px 20px rgba(0,0,0,.1);
}

.card-header{
	background:#0d6efd;
	color:white;
	font-size:28px;
	font-weight:bold;
	text-align:center;
	padding:20px;
}

.table th{
	background:#0d6efd;
	color:white;
	text-align:center;
}

.table td{
	text-align:center;
	vertical-align:middle;
}

</style>

</head>

<body>

<nav class="navbar">

<div class="container">

<a class="navbar-brand">

<i class="fas fa-briefcase"></i>

My Applications

</a>

</div>

</nav>

<div class="container">

<div class="card">

<div class="card-header">

<i class="fas fa-list-check"></i>

Application Status

</div>

<div class="card-body">

<table class="table table-bordered table-hover">

<thead>

<tr>

<th>Application ID</th>

<th>Company</th>

<th>Job Role</th>

<th>Applied Date</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<tr>

<td>101</td>

<td>TCS</td>

<td>Java Developer</td>

<td>04-Aug-2026</td>

<td><span class="badge bg-warning">Applied</span></td>

</tr>

<tr>

<td>102</td>

<td>Infosys</td>

<td>Software Engineer</td>

<td>05-Aug-2026</td>

<td><span class="badge bg-primary">Shortlisted</span></td>

</tr>

<tr>

<td>103</td>

<td>Capgemini</td>

<td>Full Stack Developer</td>

<td>06-Aug-2026</td>

<td><span class="badge bg-success">Selected</span></td>

</tr>

<tr>

<td>104</td>

<td>Wipro</td>

<td>Java Developer</td>

<td>07-Aug-2026</td>

<td><span class="badge bg-danger">Rejected</span></td>

</tr>

</tbody>

</table>

<div class="text-center mt-4">

<a href="student_dashboard.jsp"
class="btn btn-primary">

<i class="fas fa-house"></i>

Back to Dashboard

</a>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>