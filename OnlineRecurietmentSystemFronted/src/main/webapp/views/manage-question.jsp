<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Questions</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
	background:#f4f7fc;
	font-family:Segoe UI,sans-serif;
}

.card{
	border:none;
	border-radius:12px;
}

.table th{
	background:#0d6efd;
	color:white;
}

textarea{
	resize:none;
}

</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>
<i class="fas fa-question-circle"></i>
Manage Questions
</h3>

</div>

<div class="card-body">

<form action="saveQuestion" method="post">

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Assessment</label>

<select name="assessmentId" class="form-select" required>

<option value="">Select Assessment</option>

<option value="1">Java Assessment</option>

<option value="2">Python Assessment</option>

<option value="3">Web Development Assessment</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Marks</label>

<input type="number"
name="marks"
class="form-control"
placeholder="Enter Marks"
required>

</div>

</div>

<div class="mb-3">

<label class="form-label">Question</label>

<textarea
name="questionText"
class="form-control"
rows="3"
placeholder="Enter Question"
required></textarea>

</div>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Option A</label>

<input type="text"
name="optionA"
class="form-control"
placeholder="Option A"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option B</label>

<input type="text"
name="optionB"
class="form-control"
placeholder="Option B"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option C</label>

<input type="text"
name="optionC"
class="form-control"
placeholder="Option C"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option D</label>

<input type="text"
name="optionD"
class="form-control"
placeholder="Option D"
required>

</div>

</div>

<div class="mb-3">

<label class="form-label">Correct Answer</label>

<select
name="correctAnswer"
class="form-select"
required>

<option value="">Select Correct Answer</option>

<option value="A">Option A</option>

<option value="B">Option B</option>

<option value="C">Option C</option>

<option value="D">Option D</option>

</select>

</div>

<div class="text-end">

<button type="submit"
class="btn btn-success">

<i class="fas fa-save"></i>
Save Question

</button>

<button type="reset"
class="btn btn-secondary">

Reset

</button>

</div>

</form>

</div>

</div>

<!-- Question List -->

<div class="card shadow mt-5">

<div class="card-header bg-dark text-white">

<h4>
<i class="fas fa-list"></i>
Question List
</h4>

</div>

<div class="card-body">

<table class="table table-bordered table-hover text-center">

<thead>

<tr>

<th>ID</th>

<th>Assessment</th>

<th>Question</th>

<th>Correct Answer</th>

<th>Marks</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>Java</td>

<td>Which keyword is used to inherit a class?</td>

<td>Option B</td>

<td>1</td>

<td>

<button class="btn btn-warning btn-sm">

<i class="fas fa-edit"></i>

</button>

<button class="btn btn-danger btn-sm">

<i class="fas fa-trash"></i>

</button>

</td>

</tr>

<tr>

<td>2</td>

<td>Python</td>

<td>Which symbol is used for comments?</td>

<td>Option A</td>

<td>1</td>

<td>

<button class="btn btn-warning btn-sm">

<i class="fas fa-edit"></i>

</button>

<button class="btn btn-danger btn-sm">

<i class="fas fa-trash"></i>

</button>

</td>

</tr>

</tbody>

</table>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>