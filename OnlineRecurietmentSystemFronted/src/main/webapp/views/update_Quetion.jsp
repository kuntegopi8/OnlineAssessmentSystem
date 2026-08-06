<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Update Question</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f4f7fc;
    font-family:'Segoe UI',sans-serif;
}

.card{
    border:none;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,.15);
}

.card-header{
    background:#0d6efd;
    color:white;
}

textarea{
    resize:none;
}

.btn-update{
    background:#198754;
    color:white;
    font-weight:bold;
}

.btn-update:hover{
    background:#157347;
    color:white;
}

</style>

</head>

<body onload="getAssesmentName(); loadQuestion(); ">

<div class="container mt-4">

<div class="card">

<div class="card-header">

<h2>

<i class="fas fa-edit"></i>

Update Question

</h2>

</div>

<div class="card-body">

<form onsubmit="event.preventDefault(); editQuestion();">

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Assessment</label>

<h3>Assessment Name</h3>
</div>

<div class="col-md-6 mb-3">

<label class="form-label">Marks</label>

<input
type="number"
id="marks"
class="form-control"
placeholder="Enter Marks"
required>

</div>

</div>

<div class="mb-3">

<label class="form-label">Question</label>

<textarea
id="question"
class="form-control"
rows="4"
placeholder="Enter Question"
required></textarea>

</div>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Option A</label>

<input
type="text"
id="optionA"
class="form-control"
placeholder="Option A"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option B</label>

<input
type="text"
id="optionB"
class="form-control"
placeholder="Option B"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option C</label>

<input
type="text"
id="optionC"
class="form-control"
placeholder="Option C"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Option D</label>

<input
type="text"
id="optionD"
class="form-control"
placeholder="Option D"
required>

</div>

</div>

<div class="mb-4">

<label class="form-label">Correct Answer</label>

<select
id="ans"
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

<button
type="button"
class="btn btn-update"
onclick="editQuestion()">
<i class="fas fa-save"></i>
Update Question
</button>

<a href="manage-question.jsp"
class="btn btn-secondary">
Cancel
</a>

</div>

</form>
</div>
</div>

</div>

<script src="../js/Quetion.js"></script>

</body>
</html>