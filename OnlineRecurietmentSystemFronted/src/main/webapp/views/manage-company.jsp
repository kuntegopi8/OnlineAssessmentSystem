<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Company</title>

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

<body onload="loadAllCompany()">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white">

            <h3>
                <i class="fas fa-building"></i>
                Manage Company
            </h3>

        </div>

        <div class="card-body">

            <form>

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Company Name</label>

                        <input
                            type="text"
                            id="companyName"
                            name="companyName"
                            class="form-control"
                            placeholder="Enter Company Name"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Location</label>

                        <input
                            type="text"
                            id="location"
                            name="location"
                            class="form-control"
                            placeholder="Enter Company Location"
                            required>

                    </div>

                </div>

                <div class="mb-3">

                    <label class="form-label">Company Description</label>

                    <textarea
                        id="description"
                        name="description"
                        class="form-control"
                        rows="4"
                        placeholder="Enter Company Description"
                        required></textarea>

                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Contact Details</label>

                        <input
                            type="text"
                            id="contact"
                            name="contactDetails"
                            class="form-control"
                            placeholder="Enter Contact Number"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Website</label>

                        <input
                            type="url"
                            id="website"
                            name="website"
                            class="form-control"
                            placeholder="https://company.com">

                    </div>

                </div>

                <div class="text-end">

                    <button
                        type="button"
                        class="btn btn-success"
                        onclick="addCompany()">

                        <i class="fas fa-save"></i>
                        Save Company

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

    <!-- Company List -->

    <div class="card shadow mt-5">

        <div class="card-header bg-dark text-white">

            <h4>
                <i class="fas fa-list"></i>
                Company List
            </h4>

        </div>

        <div class="card-body">

            <table class="table table-bordered table-hover text-center">

                <thead>

                    <tr>

                        <th>ID</th>
                        <th>Company</th>
                        <th>Location</th>
                        <th>Contact</th>
                        <th>Website</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody id="companyTableBody">

                    <!-- Data will be loaded dynamically -->

                </tbody>

            </table>

        </div>

    </div>

</div>

<script src="../js/Company.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>