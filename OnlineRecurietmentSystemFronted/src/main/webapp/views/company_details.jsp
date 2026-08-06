<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Company Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
	background:#f5f7fb;
	font-family:Segoe UI,sans-serif;
}

.card{

	margin-top:40px;
	border:none;
	border-radius:15px;
	box-shadow:0px 5px 20px rgba(0,0,0,.1);

}

.card-header{

	background:linear-gradient(90deg,#0d6efd,#5b8def);
	color:white;
	font-size:28px;
	font-weight:bold;
	text-align:center;
	padding:20px;

}

table td{

	font-size:18px;

}

</style>

</head>

<body>

<div class="container">

<div class="card">

<div class="card-header">

<i class="fas fa-building"></i>

Company Details

</div>

<div class="card-body">

<table class="table table-bordered">

<tr>

<th>Company Name</th>

<td>TCS</td>

</tr>

<tr>

<th>Job Role</th>

<td>Java Developer</td>

</tr>

<tr>

<th>Package</th>

<td>₹7 LPA</td>

</tr>

<tr>

<th>Location</th>

<td>Pune</td>

</tr>

<tr>

<th>Required Skills</th>

<td>Java, Spring Boot, SQL</td>

</tr>

<tr>

<th>Minimum CGPA</th>

<td>7.0</td>

</tr>

<tr>

<th>Recruitment Drive Date</th>

<td>20-Aug-2026</td>

</tr>

<tr>

<th>Description</th>

<td>

Develop enterprise applications using Java and Spring Boot.

</td>

</tr>

</table>

<div class="text-center mt-4">

<a href="apply_job.jsp" class="btn btn-success btn-lg">

<i class="fas fa-paper-plane"></i>

Apply Now

</a>

</div>

</div>

</div>

</div>

</body>

</html>