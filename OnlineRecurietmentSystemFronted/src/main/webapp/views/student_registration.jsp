<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Student Registration</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


<style>

body{
    background:#f4f7fc;
    font-family:'Segoe UI',sans-serif;
}

.register-section{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:40px 0;
}

.register-card{
    width:100%;
    max-width:850px;
    border:none;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,.15);
}

.card-header{
    background:#0d6efd;
    color:white;
    text-align:center;
    padding:20px;
}

.form-label{
    font-weight:600;
}

.form-control{
    height:45px;
}

.btn-register{
    background:#198754;
    color:white;
    font-weight:bold;
    height:48px;
}

.btn-register:hover{
    background:#157347;
    color:white;
}

.login-link{
    text-decoration:none;
    font-weight:bold;
}

</style>

</head>


<body>


<div class="container register-section">


<div class="card register-card">


<div class="card-header">

<h2>
<i class="fas fa-user-plus"></i>
Student Registration
</h2>

<p class="mb-0">
Create your account to access assessments and job opportunities.
</p>

</div>



<div class="card-body p-4">


<form>


<div class="row">


<!-- Name -->
<div class="col-md-6 mb-3">

<label class="form-label">
Full Name
</label>

<input
type="text"
class="form-control"
id="full_name"
placeholder="Enter Full Name"
required>

</div>



<!-- Email -->
<div class="col-md-6 mb-3">

<label class="form-label">
Email Address
</label>

<input
type="email"
class="form-control"
id="email"
placeholder="Enter Email Address"
required>

</div>




<!-- Password -->
<div class="col-md-6 mb-3">

<label class="form-label">
Password
</label>

<input
type="password"
class="form-control"
id="password"
placeholder="Enter Password"
required>

</div>




<!-- Mobile -->
<div class="col-md-6 mb-3">

<label class="form-label">
Mobile Number
</label>

<input
type="text"
class="form-control"
id="mobile"
maxlength="10"
placeholder="Enter Mobile Number"
required>

</div>




<!-- Gender -->

<div class="col-md-12 mb-3">


<label class="form-label d-block">
Gender
</label>


<div class="form-check form-check-inline">

<input
class="form-check-input"
type="radio"
name="gender"
id="male"
value="Male">

<label class="form-check-label">
Male
</label>

</div>



<div class="form-check form-check-inline">

<input
class="form-check-input"
type="radio"
name="gender"
id="female"
value="Female">

<label class="form-check-label">
Female
</label>

</div>




<div class="form-check form-check-inline">

<input
class="form-check-input"
type="radio"
name="gender"
id="other"
value="Other">

<label class="form-check-label">
Other
</label>

</div>


</div>





<!-- Qualification -->

<div class="col-md-6 mb-3">

<label class="form-label">
Qualification
</label>


<input
type="text"
class="form-control"
id="qualification"
placeholder="Example: B.E, B.Tech, MCA">


</div>






<!-- College -->

<div class="col-md-6 mb-3">

<label class="form-label">
College Name
</label>


<input
type="text"
class="form-control"
id="college_name"
placeholder="Enter College Name">


</div>







<!-- CGPA -->

<div class="col-md-6 mb-3">


<label class="form-label">
CGPA
</label>


<input
type="number"
step="0.01"
min="0"
max="10"
class="form-control"
id="cgpa"
placeholder="Enter CGPA">


</div>







<!-- Interest -->

<div class="col-md-6 mb-3">


<label class="form-label">
Interest
</label>


<input
type="text"
class="form-control"
id="interest"
placeholder="Java, Python, Full Stack">


</div>



</div>






<div class="d-grid mt-3">


<button 
type="button"
class="btn btn-register"
onclick="registerStudent()">


<i class="fas fa-user-check"></i>

Register


</button>


</div>





<div class="text-center mt-4">


Already have an account?

<a href="userlogin.jsp" class="login-link">

Login Here

</a>


</div>



</form>


</div>


</div>


</div>



<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom JS -->
<script src="../js/Register.js"></script>


</body>

</html>