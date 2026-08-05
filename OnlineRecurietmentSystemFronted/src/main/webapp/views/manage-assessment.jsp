<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Assessment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#f5f7fb;
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

</style>

</head>

<body>

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h3>
<i class="fas fa-file-alt"></i>
Manage Assessment
</h3>

</div>

<div class="card-body">

<form>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Assessment Name</label>

<input type="text"
class="form-control"
placeholder="Java Programming Assessment"
id="assessmentName">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Domain</label>

<select class="form-select" id="domain">

<option value="">Select Domain</option>

<option value="Java">Java</option>

<option value="Python">Python</option>

<option value="Web Development">Web Development</option>

<option value="Data Science">Data Science</option>

<option value="AI & ML">AI & ML</option>

</select>

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Duration (Minutes)</label>

<input type="number"
class="form-control"
id="duration">

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Total Questions</label>

<input type="number"
class="form-control"
id="totalQuestion">

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Total Marks</label>

<input type="number"
class="form-control"
id="totalMarks">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Eligibility Criteria (%)</label>

<input type="number"
class="form-control"
placeholder="60"
id="eligibility">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Status</label>

<select class="form-select" id="status">

<option value="Active">Active</option>

<option value="Inactive">Inactive</option>

</select>

</div>

</div>

<div class="text-end">

<button type="button"
class="btn btn-success"
onclick="addAssessment()">

<i class="fas fa-save"></i>

Save Assessment

</button>

</div>

</form>

</div>

</div>

<br>

<div class="card shadow">

<div class="card-header bg-dark text-white">

<h4>Assessment List</h4>

</div>

<div class="card-body">

<table class="table table-bordered table-hover text-center">

<thead>

<tr>

<th>ID</th>
<th>Name</th>
<th>Domain</th>
<th>Duration</th>
<th>Questions</th>
<th>Marks</th>
<th>Eligibility</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>
<td>Java Assessment</td>
<td>Java</td>
<td>30 Min</td>
<td>20</td>
<td>20</td>
<td>60%</td>

<td>

<span class="badge bg-success">

Active

</span>

</td>

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

<script src="../js/Assessment.js"></script>

</body>
</html>