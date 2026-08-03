<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Student Login</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:linear-gradient(135deg,#0d6efd,#5b8def);
    font-family:'Segoe UI',sans-serif;
}

.login-section{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-card{
    width:100%;
    max-width:450px;
    border:none;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 10px 30px rgba(0,0,0,.2);
}

.card-header{
    background:#0d6efd;
    color:white;
    text-align:center;
    padding:20px;
}

.form-control{
    height:45px;
}

.btn-login{
    height:45px;
    background:#198754;
    color:white;
    font-weight:bold;
}

.btn-login:hover{
    background:#157347;
    color:white;
}

.register-link{
    text-decoration:none;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container login-section">

    <div class="card login-card">

        <div class="card-header">

            <h2>
                <i class="fas fa-sign-in-alt"></i>
                Login Here
            </h2>

            <p class="mb-0">
                Login to continue your assessment.
            </p>

        </div>

        <div class="card-body p-4">

            <form onsubmit="return false;">

                <div class="mb-3">

                    <label class="form-label">Email Address</label>

                    <input
                        type="email"
                        id="email"
                        name="email"
                        class="form-control"
                        placeholder="Enter Email"
                        required>

                </div>

                <div class="mb-3">

                    <label class="form-label">Password</label>

                    <input
                        type="password"
                        id="password"
                        name="password"
                        class="form-control"
                        placeholder="Enter Password"
                        required>

                </div>

                <div class="d-grid">

                    <button type="button"
                            class="btn btn-login"
                            onclick="login()">

                        <i class="fas fa-right-to-bracket"></i>

                        Login

                    </button>

                </div>

                <div class="text-center mt-4">

                    Don't have an account?

                    <a href="student_registration.jsp" class="register-link">
                        Register Here
                    </a>

                </div>

            </form>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="../js/login.js"></script>

</body>
</html>