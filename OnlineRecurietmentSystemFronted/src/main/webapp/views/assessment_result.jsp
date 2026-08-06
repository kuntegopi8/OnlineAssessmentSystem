<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Assessment Result</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
	background:#f4f7fc;
	font-family:Segoe UI,sans-serif;
}

.result-card{

	max-width:700px;
	margin:50px auto;
	border:none;
	border-radius:15px;
	box-shadow:0px 5px 20px rgba(0,0,0,.15);

}

.card-header{

	background:linear-gradient(90deg,#0d6efd,#5b8def);
	color:white;
	text-align:center;
	font-size:30px;
	font-weight:bold;
	padding:20px;

}

.score{

	font-size:60px;
	font-weight:bold;
	color:#198754;

}

.table td{

	font-size:18px;

}

</style>

</head>

<body>

<div class="container">

<div class="card result-card">

<div class="card-header">

<i class="fas fa-award"></i>

Assessment Result

</div>

<div class="card-body">

<div class="text-center">

<h3>Congratulations</h3>

<h1 id="studentName">

Rahul Sharma

</h1>

<p>

You have successfully completed the assessment.

</p>

<div class="score" id="score">

36 / 40

</div>

</div>

<hr>

<table class="table table-bordered">

<tr>

<th>Total Questions</th>

<td id="totalQuestion">

20

</td>

</tr>

<tr>

<th>Correct Answers</th>

<td id="correctAnswer">

18

</td>

</tr>

<tr>

<th>Wrong Answers</th>

<td id="wrongAnswer">

2

</td>

</tr>

<tr>

<th>Total Marks</th>

<td id="marks">

36

</td>

</tr>

<tr>

<th>Percentage</th>

<td id="percentage">

90%

</td>

</tr>

<tr>

<th>Status</th>

<td class="text-success">

PASS

</td>

</tr>

</table>

<div class="text-center mt-4">

<a href="recommended_company.jsp"
class="btn btn-success btn-lg">

View Recommended Companies

</a>

</div>

</div>

</div>

</div>

</body>

</html>