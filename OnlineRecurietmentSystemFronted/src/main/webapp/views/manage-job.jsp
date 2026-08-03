<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Jobs</title>

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
<i class="fas fa-briefcase"></i>
Manage Jobs
</h3>

</div>

<div class="card-body">

<form>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Company</label>

<select class="form-select" id="companyId">

<option value="">Select Company</option>

<option value="1">TCS</option>

<option value="2">Infosys</option>

<option value="3">Wipro</option>

<option value="4">Capgemini</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Recruitment Drive</label>

<select class="form-select" id="driveId">

<option value="">Select Drive</option>

<option value="1">TCS Ninja Drive</option>

<option value="2">Infosys Campus Drive</option>

<option value="3">Wipro Elite Drive</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Job Title</label>

<input type="text"
class="form-control"
id="jobTitle"
placeholder="Software Engineer">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Location</label>

<input type="text"
class="form-control"
id="location"
placeholder="Bangalore">

</div>

<div class="col-md-12 mb-3">

<label class="form-label">Job Description</label>

<textarea
class="form-control"
rows="4"
id="jobDescription"
placeholder="Enter Job Description"></textarea>

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Salary Package (LPA)</label>

<input type="text"
class="form-control"
id="salaryPackage"
placeholder="6 LPA">

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Eligibility Criteria (%)</label>

<input type="number"
class="form-control"
id="eligibilityCriteria"
placeholder="60">

</div>

<div class="col-md-4 mb-3">

<label class="form-label">Last Date To Apply</label>

<input type="date"
class="form-control"
id="lastDate">

</div>

</div>

<div class="text-end">

<button
type="button"
class="btn btn-success"
onclick="saveJob()">

<i class="fas fa-save"></i>

Save Job

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

Job List

</h4>

</div>

<div class="card-body">

<table class="table table-bordered table-hover text-center">

<thead>

<tr>

<th>ID</th>

<th>Company</th>

<th>Drive</th>

<th>Job Title</th>

<th>Location</th>

<th>Package</th>

<th>Eligibility</th>

<th>Last Date</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>TCS</td>

<td>TCS Ninja</td>

<td>Software Engineer</td>

<td>Bangalore</td>

<td>6 LPA</td>

<td>60%</td>

<td>15-08-2026</td>

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