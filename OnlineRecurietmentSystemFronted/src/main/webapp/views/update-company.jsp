<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Update Company</title>

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

textarea{
    resize:none;
}

</style>

</head>

<body onload="loadCompany()">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white">

            <h3>
                <i class="fas fa-edit"></i>
                Update Company
            </h3>

        </div>

        <div class="card-body">

            <form>

                <!-- Hidden Company ID -->
                <input
                    type="hidden"
                    id="companyId"
                    value="${param.id}">

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Company Name</label>

                        <input
                            type="text"
                            id="companyName"
                            class="form-control"
                            placeholder="Enter Company Name"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Location</label>

                        <input
                            type="text"
                            id="location"
                            class="form-control"
                            placeholder="Enter Company Location"
                            required>

                    </div>

                </div>

                <div class="mb-3">

                    <label class="form-label">Company Description</label>

                    <textarea
                        id="description"
                        class="form-control"
                        rows="5"
                        placeholder="Enter Company Description"
                        required></textarea>

                </div>

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Contact Details</label>

                        <input
                            type="text"
                            id="contact"
                            class="form-control"
                            placeholder="Enter Contact Number"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Website</label>

                        <input
                            type="url"
                            id="website"
                            class="form-control"
                            placeholder="https://company.com">

                    </div>

                </div>

                <div class="text-end">

                    <button
                        type="button"
                        class="btn btn-success"
                        onclick="updateCompany()">

                        <i class="fas fa-save"></i>
                        Update Company

                    </button>

                    <a
                        href="manage-company.jsp"
                        class="btn btn-secondary">

                        Cancel

                    </a>

                </div>

            </form>

        </div>

    </div>

</div>

<script src="../js/Company.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>