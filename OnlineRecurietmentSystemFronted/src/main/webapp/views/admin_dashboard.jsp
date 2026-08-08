<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f5f7fb;
    font-family:Segoe UI,sans-serif;
}

.sidebar{
    height:100vh;
    background:#0d6efd;
    color:white;
    position:fixed;
    width:240px;
}

.sidebar h3{
    padding:20px;
    text-align:center;
    border-bottom:1px solid rgba(255,255,255,.2);
}

.sidebar a{
    display:block;
    color:white;
    text-decoration:none;
    padding:15px 25px;
    transition:.3s;
}

.sidebar a:hover{
    background:white;
    color:#0d6efd;
}

.content{
    margin-left:240px;
    padding:30px;
}

.card{
    border:none;
    border-radius:15px;
}

.card i{
    font-size:35px;
}

.navbar{
    margin-left:240px;
}

</style>

</head>

<body onload="loadDashboardCounts()">

<!-- Sidebar -->

<div class="sidebar">

<h3>
<i class="fas fa-user-shield"></i><br>
Admin Panel
</h3>

<a href="admin_dashboard.jsp">
<i class="fas fa-home"></i> Dashboard
</a>

<a href="manage-assessment.jsp">
<i class="fas fa-file-alt"></i> Assessments
</a>

<a href="manage-question.jsp">
<i class="fas fa-question-circle"></i> Questions
</a>

<a href="manage-company.jsp">
<i class="fas fa-building"></i> Companies
</a>

<a href="manage-drive.jsp">
<i class="fas fa-calendar"></i> Recruitment Drives
</a>

<a href="manage-application.jsp">
<i class="fas fa-users"></i> Applications
</a>

<a href="reports.jsp">
<i class="fas fa-chart-bar"></i> Reports
</a>

<a href="home.jsp">
<i class="fas fa-sign-out-alt"></i> Logout
</a>

</div>

<!-- Navbar -->

<nav class="navbar navbar-light bg-white shadow-sm p-3">

<div class="container-fluid">

<h4 class="mb-0">
Welcome Admin
</h4>

</div>

</nav>

<!-- Content -->

<div class="content">

<div class="container-fluid">

<div class="row g-4">

<div class="col-md-3">

<div class="card shadow text-center p-4">

<i class="fas fa-user-graduate text-primary"></i>

<h3 class="mt-3" id="studentCount">0</h3>

<p>Total Students</p>

</div>

</div>

<div class="col-md-3">

<div class="card shadow text-center p-4">

<i class="fas fa-file-alt text-success"></i>

<h3 class="mt-3" id="assessmentCount">0</h3>

<p>Assessments</p>

</div>

</div>

<div class="col-md-3">

<div class="card shadow text-center p-4">

<i class="fas fa-building text-warning"></i>

<h3 class="mt-3" id="companyCount">0</h3>

<p>Companies</p>

</div>

</div>



</div>

<hr class="my-5">

<h4 class="mb-4">Quick Actions</h4>

<div class="row g-4">

<div class="col-md-4">

<a href="manage-assessment.jsp" class="btn btn-primary w-100 p-3">
Manage Assessments
</a>

</div>

<div class="col-md-4">

<a href="manage-company.jsp" class="btn btn-success w-100 p-3">
Manage Companies
</a>

</div>

<div class="col-md-4">

<a href="manage-job.jsp" class="btn btn-warning w-100 p-3">
Manage Jobs
</a>

</div>

</div>

</div>

</div>

<script src="../js/AdminDashBoard.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>