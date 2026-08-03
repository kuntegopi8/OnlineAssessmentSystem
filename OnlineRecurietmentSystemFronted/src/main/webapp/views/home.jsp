<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Career Recommendation & Recruitment Assessment System</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    font-family:Segoe UI, sans-serif;
    background:#f8f9fa;
}

/* Navbar */

.navbar{
    background:#0d6efd;
}

.navbar-brand{
    font-size:24px;
    font-weight:bold;
}

/* Hero */

.hero{
    min-height:90vh;
    display:flex;
    align-items:center;
    background:linear-gradient(to right,#eef5ff,#ffffff);
}

.hero h1{
    color:#0d6efd;
    font-size:48px;
    font-weight:bold;
}

.hero p{
    color:#555;
    font-size:20px;
    margin:25px 0;
}

.btn-custom{
    padding:12px 28px;
    border-radius:8px;
    font-size:18px;
    font-weight:600;
}

.info-card{

    background:white;

    border-radius:15px;

    padding:30px;

    box-shadow:0 5px 15px rgba(0,0,0,.1);

}

.info-card h3{

    color:#0d6efd;

    margin-bottom:25px;

}

.feature{

    margin-bottom:20px;

}

.feature i{

    color:#0d6efd;

    font-size:22px;

    margin-right:10px;

}

footer{

    background:#0d6efd;

    color:white;

    text-align:center;

    padding:15px;

}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand" href="#">
<i class="fas fa-graduation-cap"></i>
Career Portal
</a>


</div>

</nav>

<!-- Hero -->

<section class="hero">

<div class="container">

<div class="row align-items-center">

<!-- Left -->

<div class="col-lg-6">

<h1>

Career Recommendation &
Recruitment Assessment System

</h1>

<p>

Build your future through online assessments and
discover the right career opportunities based on
your skills.

</p>

<a href="userlogin.jsp"
class="btn btn-primary btn-lg btn-custom me-3">

<i class="fas fa-sign-in-alt"></i>

 Login

</a>

<a href="student_registration.jsp"
class="btn btn-success btn-lg btn-custom">

<i class="fas fa-user-plus"></i>

Register Now

</a>

</div>

<!-- Right -->

<div class="col-lg-6">

<div class="info-card">

<h3>
<i class="fas fa-star"></i>
Welcome
</h3>

<div class="feature">

<i class="fas fa-laptop-code"></i>

<strong>Online Assessments</strong>

<p class="text-muted">
Attend assessments based on your selected interest.
</p>

</div>

<div class="feature">

<i class="fas fa-chart-line"></i>

<strong>Instant Results</strong>

<p class="text-muted">
View your assessment score immediately.
</p>

</div>

<div class="feature">

<i class="fas fa-briefcase"></i>

<strong>Job Opportunities</strong>

<p class="text-muted">
Explore jobs according to your eligibility.
</p>

</div>

<div class="feature">

<i class="fas fa-building"></i>

<strong>Recruitment Drives</strong>

<p class="text-muted">
Participate in company recruitment drives.
</p>

</div>

</div>

</div>

</div>

</div>

</section>

<footer>

© 2026 Career Recommendation & Recruitment Assessment System

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>