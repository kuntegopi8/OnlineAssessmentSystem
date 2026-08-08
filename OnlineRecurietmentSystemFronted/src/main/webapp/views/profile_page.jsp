<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1">

    <title>Update Profile</title>


    <!-- Bootstrap 5 -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- Font Awesome -->

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


    <style>

        body {
            background: #f4f7fc;
            font-family: "Segoe UI", sans-serif;
        }


        /* Navbar */

        .navbar {
            background: #0d6efd;
        }

        .navbar-brand {
            color: white;
            font-size: 22px;
            font-weight: 600;
        }

        .navbar-brand:hover {
            color: white;
        }


        /* Profile Card */

        .profile-card {
            max-width: 900px;
            margin: 35px auto;
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 18px rgba(0, 0, 0, 0.10);
        }


        /* Header */

        .card-header {
            background: #0d6efd;
            color: white;
            padding: 18px 25px;
            border-radius: 12px 12px 0 0 !important;
        }

        .card-header h3 {
            margin: 0;
            font-size: 24px;
        }

        .card-header p {
            margin: 4px 0 0;
            font-size: 14px;
            opacity: 0.9;
        }


        /* Form */

        .card-body {
            padding: 30px;
        }

        .form-label {
            font-weight: 600;
            margin-bottom: 7px;
        }

        .form-control,
        .form-select {
            height: 45px;
            border-radius: 7px;
        }

        .form-control:focus,
        .form-select:focus {
            box-shadow: none;
            border-color: #0d6efd;
        }


        /* Readonly Email */

        .readonly-field {
            background-color: #e9ecef;
            cursor: not-allowed;
        }


        /* Buttons */

        .btn {
            min-width: 130px;
            height: 42px;
        }


        /* Loading */

        #loading {
            text-align: center;
            padding: 10px;
            display: none;
        }


        /* Mobile */

        @media (max-width: 768px) {

            .profile-card {
                margin: 20px 10px;
            }

            .card-body {
                padding: 20px;
            }

            .btn {
                width: 100%;
                margin-bottom: 8px;
            }

        }

    </style>

</head>


<body onload="loadProfileUpdate()">


<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="container">

        <a class="navbar-brand">

            <i class="fas fa-user-circle"></i>

            Student Profile

        </a>

    </div>

</nav>



<!-- ================= MAIN CONTAINER ================= -->

<div class="container">


    <div class="card profile-card">


        <!-- ================= HEADER ================= -->

        <div class="card-header">

            <h3>

                <i class="fas fa-user-edit"></i>

                Update Profile

            </h3>

            <p>
                Update your personal and academic information
            </p>

        </div>



        <!-- ================= BODY ================= -->

        <div class="card-body">


            <!-- Loading -->

            <div id="loading">

                <i class="fas fa-spinner fa-spin"></i>

                Loading profile...

            </div>



            <!-- ================= FORM ================= -->

            <form id="profileForm">


                <div class="row g-4">



                    <!-- ================= NAME ================= -->

                    <div class="col-md-6">

                        <label
                            for="name"
                            class="form-label">

                            <i class="fas fa-user text-primary"></i>

                            Full Name

                        </label>


                        <input
                            type="text"
                            id="name"
                            name="name"
                            class="form-control"
                            placeholder="Enter full name"
                            required>

                    </div>



                    <!-- ================= EMAIL ================= -->

                    <div class="col-md-6">

                        <label
                            for="email"
                            class="form-label">

                            <i class="fas fa-envelope text-primary"></i>

                            Email

                        </label>


                        <input
                            type="email"
                            id="email"
                            name="email"
                            class="form-control readonly-field"
                            readonly>


                        <small class="text-muted">

                            Email cannot be changed.

                        </small>

                    </div>



                    <!-- ================= MOBILE ================= -->

                    <div class="col-md-6">

                        <label
                            for="mobile"
                            class="form-label">

                            <i class="fas fa-phone text-primary"></i>

                            Mobile

                        </label>


                        <input
                            type="tel"
                            id="mobile"
                            name="mobile"
                            class="form-control"
                            placeholder="Enter mobile number"
                            maxlength="10"
                            required>

                    </div>



                    <!-- ================= GENDER ================= -->

                    <div class="col-md-6">

                        <label
                            for="gender"
                            class="form-label">

                            <i class="fas fa-venus-mars text-primary"></i>

                            Gender

                        </label>


                        <select
                            id="gender"
                            name="gender"
                            class="form-select"
                            required>

                            <option value="">
                                Select Gender
                            </option>

                            <option value="Male">
                                Male
                            </option>

                            <option value="Female">
                                Female
                            </option>

                            <option value="Other">
                                Other
                            </option>

                        </select>

                    </div>



                    <!-- ================= QUALIFICATION ================= -->

                    <div class="col-md-6">

                        <label
                            for="qualification"
                            class="form-label">

                            <i class="fas fa-graduation-cap text-primary"></i>

                            Qualification

                        </label>


                        <input
                            type="text"
                            id="qualification"
                            name="qualification"
                            class="form-control"
                            placeholder="Enter qualification"
                            required>

                    </div>



                    <!-- ================= COLLEGE ================= -->

                    <div class="col-md-6">

                        <label
                            for="collegeName"
                            class="form-label">

                            <i class="fas fa-university text-primary"></i>

                            College Name

                        </label>


                        <input
                            type="text"
                            id="collegeName"
                            name="collegeName"
                            class="form-control"
                            placeholder="Enter college name"
                            required>

                    </div>



                    <!-- ================= CGPA ================= -->

                    <div class="col-md-6">

                        <label
                            for="cgpa"
                            class="form-label">

                            <i class="fas fa-chart-line text-primary"></i>

                            CGPA

                        </label>


                        <input
                            type="number"
                            id="cgpa"
                            name="cgpa"
                            class="form-control"
                            min="0"
                            max="10"
                            step="0.01"
                            placeholder="Enter CGPA"
                            required>

                    </div>



                    <!-- ================= INTEREST ================= -->

                    <div class="col-md-6">
    <label for="interest" class="form-label">
        <i class="fas fa-heart text-primary"></i>
        Programming Language
    </label>

    <select id="interest" name="interest" class="form-select" required>
        <option value="">Select Language</option>
        <option value="java">Java</option>
        <option value="Python">Python</option>
        <option value="JavaScript">JavaScript</option>
        <option value="C">C</option>
        <option value="C++">C++</option>
        <option value="C#">C#</option>
        <option value="PHP">PHP</option>
        <option value="Go">Go</option>
        <option value="Kotlin">Kotlin</option>
        <option value="Swift">Swift</option>
        <option value="Ruby">Ruby</option>
        <option value="TypeScript">TypeScript</option>
    </select>
</div>



                </div>



                <!-- ================= BUTTONS ================= -->

                <div class="text-center mt-4 pt-2">


                    <button
                        type="button"
                        class="btn btn-primary me-2"
                        onclick="updateProfile()">

                        <i class="fas fa-save"></i>

                        Update Profile

                    </button>



                    <a
                        href="student_dashboard.jsp"
                        class="btn btn-secondary">

                        <i class="fas fa-arrow-left"></i>

                        Dashboard

                    </a>


                </div>


            </form>


        </div>

    </div>

</div>



<!-- ================= BOOTSTRAP JS ================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>



<!-- ================= PROFILE JS ================= -->

<script src="../js/login.js"></script>



<script>

    /*
     * Load student data when page opens
     */

    document.addEventListener("DOMContentLoaded", function () {

        loadProfileUpdate();

    });


</script>


</body>

</html>
```
