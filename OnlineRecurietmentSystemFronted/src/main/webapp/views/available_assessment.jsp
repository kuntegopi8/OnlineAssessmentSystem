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
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:linear-gradient(90deg,#0d6efd,#5b8def);
}

.navbar-brand{
    color:white !important;
    font-size:26px;
    font-weight:bold;
}

.heading{
    margin:35px 0;
    text-align:center;
    color:#0d6efd;
    font-weight:bold;
}

.assessment-card{
    border:none;
    border-radius:18px;
    box-shadow:0 8px 20px rgba(0,0,0,.12);
    transition:.3s;
    background:white;
}

.assessment-card:hover{
    transform:translateY(-8px);
}

.assessment-card i{
    font-size:55px;
    color:#0d6efd;
}

.assessment-card h4{
    font-weight:bold;
    margin-top:15px;
}

.btn-start{
    width:100%;
    margin-top:15px;
    border-radius:30px;
    font-weight:bold;
}

</style>

</head>

<body onload="loadStudentAssessments()">

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

        <i class="fas fa-laptop-code"></i>

        Available Assessments

    </h2>

    <div class="row" id="assessmentContainer">

        

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="../js/Assessment.js"></script>

</body>
</html>