<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Reports</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#eef2f7;
    font-family:'Segoe UI',sans-serif;
}

/* Navbar */

.navbar{
    background:#0d6efd;
}

.navbar-brand{
    font-size:24px;
    font-weight:bold;
}

/* Cards */

.stat-card{

    color:white;

    border-radius:15px;

    padding:30px;

    transition:.3s;

    box-shadow:0 5px 15px rgba(0,0,0,.15);

}

.stat-card:hover{

    transform:translateY(-8px);

}

.stat-card i{

    font-size:45px;

}

.stat-card h2{

    margin-top:15px;

    font-weight:bold;

}

/* Report Table */

.report-card{

    border:none;

    border-radius:15px;

    box-shadow:0 5px 15px rgba(0,0,0,.15);

}

.table th{

    background:#0d6efd;

    color:white;

}

footer{

    background:#0d6efd;

    color:white;

    text-align:center;

    padding:15px;

    margin-top:40px;

}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container-fluid">

<a class="navbar-brand">

<i class="fas fa-chart-line"></i>

Admin Reports

</a>

</div>

</nav>

<div class="container-fluid p-4">

<h2 class="text-center text-primary mb-4">

System Reports Dashboard

</h2>

<!-- Statistics -->

<div class="row g-4">

<div class="col-lg-3 col-md-6">

<div class="stat-card bg-primary text-center">

<i class="fas fa-user-graduate"></i>

<h2>120</h2>

<h5>Total Students</h5>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="stat-card bg-success text-center">

<i class="fas fa-file-alt"></i>

<h2>15</h2>

<h5>Assessments</h5>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="stat-card bg-warning text-center">

<i class="fas fa-building"></i>

<h2>10</h2>

<h5>Companies</h5>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="stat-card bg-danger text-center">

<i class="fas fa-briefcase"></i>

<h2>35</h2>

<h5>Jobs</h5>

</div>

</div>

</div>

<br>

<div class="row g-4">

<div class="col-lg-6">

<div class="stat-card bg-info text-center">

<i class="fas fa-file-signature"></i>

<h2>75</h2>

<h5>Total Applications</h5>

</div>

</div>

<div class="col-lg-6">

<div class="stat-card bg-secondary text-center">

<i class="fas fa-award"></i>

<h2>42</h2>

<h5>Selected Students</h5>

</div>

</div>

</div>

<br>

<!-- Report Table -->

<div class="card report-card">

<div class="card-header bg-dark text-white">

<h4>

<i class="fas fa-table"></i>

Assessment Result Report

</h4>

</div>

<div class="card-body">

<div class="table-responsive">

<table class="table table-bordered table-hover text-center">

<thead>

<tr>

<th>Student Name</th>

<th>Assessment</th>

<th>Score</th>

<th>Percentage</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<tr>

<td>Rahul Sharma</td>

<td>Java Assessment</td>

<td>18</td>

<td>90%</td>

<td>

<span class="badge bg-success">

Eligible

</span>

</td>

</tr>

<tr>

<td>Priya Patil</td>

<td>Python Assessment</td>

<td>15</td>

<td>75%</td>

<td>

<span class="badge bg-success">

Eligible

</span>

</td>

</tr>

<tr>

<td>Amit Kumar</td>

<td>Web Development</td>

<td>10</td>

<td>50%</td>

<td>

<span class="badge bg-danger">

Not Eligible

</span>

</td>

</tr>

</tbody>

</table>

</div>

</div>

</div>

</div>

<footer>

© 2026 Career Recommendation & Recruitment Assessment System

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>