<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Applications</title>

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
<i class="fas fa-file-signature"></i>
Manage Job Applications
</h3>

</div>

<div class="card-body">

<form>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Student</label>

<select class="form-select" id="userId">

<option value="">Select Student</option>

<option value="1">Rahul Sharma</option>

<option value="2">Priya Patil</option>

<option value="3">Amit Kumar</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Job</label>

<select class="form-select" id="jobId">

<option value="">Select Job</option>

<option value="1">Software Engineer</option>

<option value="2">Java Developer</option>

<option value="3">Python Developer</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Application Date</label>

<input type="date"
class="form-control"
id="applicationDate">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Application Status</label>

<select class="form-select"
id="applicationStatus">

<option value="Pending">Pending</option>

<option value="Approved">Approved</option>

<option value="Rejected">Rejected</option>

</select>

</div>

<div class="col-md-12 mb-3">

<label class="form-label">Admin Remark</label>

<textarea
class="form-control"
rows="3"
id="adminRemark"
placeholder="Enter Remark"></textarea>

</div>

</div>

<div class="text-end">

<button
type="button"
class="btn btn-success"
onclick="saveApplication()">

<i class="fas fa-save"></i>

Save

</button>

<button
type="reset"
class="btn btn-secondary">

Reset

</button>

</div>

</form>

</div>

</div>

<br>

<div class="card shadow">

<div class="card-header bg-dark text-white">

<h4>

<i class="fas fa-list"></i>

Application List

</h4>

</div>

<div class="card-body">

<table class="table table-bordered table-hover text-center">

<thead>

<tr>

<th>ID</th>

<th>Student</th>

<th>Job</th>

<th>Date</th>

<th>Status</th>

<th>Remark</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>Rahul Sharma</td>

<td>Software Engineer</td>

<td>12-06-2026</td>

<td>

<span class="badge bg-warning text-dark">

Pending

</span>

</td>

<td>Waiting for review</td>

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

<td>Priya Patil</td>

<td>Java Developer</td>

<td>14-06-2026</td>

<td>

<span class="badge bg-success">

Approved

</span>

</td>

<td>Eligible</td>

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

<td>3</td>

<td>Amit Kumar</td>

<td>Python Developer</td>

<td>15-06-2026</td>

<td>

<span class="badge bg-danger">

Rejected

</span>

</td>

<td>Score below eligibility</td>

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

<script src="../js/login.js"></script>

</body>
</html>