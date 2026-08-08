<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Update Recruitment Drive</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

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

</style>


</head>


<body onload="loadCompanies(); loadRecruiment();">


<div class="container mt-5">


<div class="card shadow">


<div class="card-header bg-primary text-white">

<h3>
<i class="fas fa-calendar-check"></i>
Update Recruitment Drive
</h3>

</div>



<div class="card-body">


<form>


<input type="hidden" id="driveId">



<div class="row">


<!-- Company -->

<div class="col-md-6 mb-3">

<label class="form-label">
Company
</label>


<select class="form-select" id="companyId">
<option value="">
Select Company
</option>
</select>
</div>

			<!-- Drive Name -->

<div class="col-md-6 mb-3">

<label class="form-label">
Drive Name
</label>


<input type="text"
class="form-control"
id="driveName">


</div>





<!-- Date -->

<div class="col-md-6 mb-3">


<label class="form-label">
Drive Date
</label>


<input type="date"
class="form-control"
id="driveDate">


</div>





<!-- Score -->

<div class="col-md-6 mb-3">


<label class="form-label">
Minimum Score (%)
</label>


<input type="number"
class="form-control"
id="minimumScore">


</div>






<!-- Status -->


<div class="col-md-6 mb-3">


<label class="form-label">
Status
</label>


<select class="form-select" id="status">


<option value="Open">
Open
</option>


<option value="Closed">
Closed
</option>


</select>


</div>

<div class="col-md-12 mb-3"> <label class="form-label"> Description </label> 
<textarea class="form-control" id="description" rows="4" placeholder="Enter recruitment drive description" required>
</textarea> </div>

</div>





<div class="text-end">


<button type="button"
class="btn btn-success"
onclick="updateRecruitment()">
<i class="fas fa-save"></i>
Update Drive

</button>



<button type="button"
class="btn btn-secondary"
onclick="history.back()">

Cancel

</button>



</div>



</form>


</div>


</div>


</div>



<script src="../js/Recruitment.js"></script>


</body>

</html>