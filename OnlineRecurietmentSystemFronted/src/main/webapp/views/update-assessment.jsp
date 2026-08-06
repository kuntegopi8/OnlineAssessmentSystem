<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Update Assessment</title>

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

<body onload="updateLoad()">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white">

            <h3>
                <i class="fas fa-edit"></i>
                Update Assessment
            </h3>

        </div>

        <div class="card-body">

            <form>

                <!-- Hidden Assessment ID -->
                <input
                    type="hidden"
                    id="idd"
                    value="${param.id}">

                <div class="row">

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Assessment Name</label>

                        <input
                            type="text"
                            class="form-control"
                            id="assessmentName"
                            placeholder="Java Programming Assessment"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Domain</label>

                        <select
                            class="form-select"
                            id="domain"
                            required>

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

                        <input
                            type="number"
                            class="form-control"
                            id="duration"
                            required>

                    </div>

                    <div class="col-md-4 mb-3">

                        <label class="form-label">Total Questions</label>

                        <input
                            type="number"
                            class="form-control"
                            id="totalQuestion"
                            required>

                    </div>

                    <div class="col-md-4 mb-3">

                        <label class="form-label">Total Marks</label>

                        <input
                            type="number"
                            class="form-control"
                            id="totalMarks"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Eligibility (%)</label>

                        <input
                            type="number"
                            class="form-control"
                            id="eligibility"
                            placeholder="60"
                            required>

                    </div>

                    <div class="col-md-6 mb-3">

                        <label class="form-label">Status</label>

                        <select
                            class="form-select"
                            id="status"
                            required>

                            <option value="">Select Status</option>
                            <option value="Active">Active</option>
                            <option value="Inactive">Inactive</option>

                        </select>

                    </div>

                </div>

                <div class="text-end mt-3">

                    <button
                        type="button"
                        class="btn btn-success"
                        onclick="updateAssessment()">

                        <i class="fas fa-save"></i>
                        Update Assessment

                    </button>

                    <a
                        href="manage-assessment.jsp"
                        class="btn btn-secondary">

                        Cancel

                    </a>

                </div>

            </form>

        </div>

    </div>

</div>

<script src="../js/Assessment.js"></script>

</body>
</html>