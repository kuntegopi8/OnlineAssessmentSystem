
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1">

    <title>Available Companies</title>


    <!-- Bootstrap -->

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
            background: linear-gradient(
                90deg,
                #0d6efd,
                #4d8bf5
            );
        }

        .navbar-brand {
            color: white;
            font-weight: bold;
            font-size: 24px;
        }

        .navbar-brand:hover {
            color: white;
        }


        /* Page Title */

        .page-title {
            margin: 30px 0;
            text-align: center;
            font-weight: bold;
            color: #0d6efd;
        }


        /* Company Card */

        .company-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
            height: 100%;
        }

        .company-card:hover {
            transform: translateY(-6px);
        }


        /* Company Icon */

        .company-icon {
            font-size: 55px;
            color: #0d6efd;
            margin-bottom: 15px;
        }


        /* Company Name */

        .company-name {
            font-weight: bold;
            color: #333;
        }


        /* Description */

        .description {
            color: #666;
            min-height: 50px;
        }


        /* Location */

        .location {
            color: #555;
        }


        /* Website */

        .website {
            font-size: 14px;
            word-break: break-all;
        }


        /* Loading */

        #loading {
            text-align: center;
            margin-top: 50px;
        }


        /* No Company */

        #noCompany {
            display: none;
            text-align: center;
            margin-top: 50px;
        }


        /* Error */

        #errorMessage {
            display: none;
            text-align: center;
            margin-top: 30px;
        }

    </style>

</head>


<body onload="loadCompanies()">


<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="container">

        <a class="navbar-brand">

            <i class="fas fa-building"></i>

            Online Recruitment System

        </a>

    </div>

</nav>



<!-- ================= MAIN ================= -->

<div class="container">


    <h2 class="page-title">

        Available Companies

    </h2>



    <!-- Loading -->

    <div id="loading">

        <div class="spinner-border text-primary"></div>

        <p class="mt-2">
            Loading companies...
        </p>

    </div>



    <!-- Error -->

    <div
        id="errorMessage"
        class="alert alert-danger">

        Unable to load companies.

    </div>



    <!-- No Companies -->

    <div id="noCompany">

        <i class="fas fa-building fa-3x text-muted"></i>

        <h5 class="mt-3">
            No companies available
        </h5>

    </div>



    <!-- Company Cards -->

    <div
        id="companyList"
        class="row g-4">

    </div>


</div>



<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>



<!-- Company JS -->

<script src="../js/Company.js"></script>


<script>

    document.addEventListener(
        "DOMContentLoaded",
        function () {

            loadCompanies();

        }
    );

</script>


</body>

</html>

