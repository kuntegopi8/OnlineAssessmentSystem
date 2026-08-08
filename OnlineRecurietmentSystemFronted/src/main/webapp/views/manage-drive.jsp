<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Manage Recruitment Drive</title>

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


.table th{

    background:#0d6efd;
    color:white;

}


</style>


</head>


<body onload="initRecruitmentPage()">



<div class="container mt-5">


    <!-- Add Recruitment Drive -->

    <div class="card shadow">


        <div class="card-header bg-primary text-white">

            <h3>
                <i class="fas fa-calendar-check"></i>
                Manage Recruitment Drive
            </h3>

        </div>



        <div class="card-body">


            <form>


                <div class="row">


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





                    <div class="col-md-6 mb-3">


                        <label class="form-label">
                            Drive Name
                        </label>


                        <input type="text"
                               class="form-control"
                               id="driveName"
                               placeholder="Campus Recruitment Drive">


                    </div>






                    <div class="col-md-6 mb-3">


                        <label class="form-label">
                            Drive Date
                        </label>


                        <input type="date"
                               class="form-control"
                               id="driveDate">


                    </div>







                    <div class="col-md-6 mb-3">


                        <label class="form-label">
                            Minimum Score (%)
                        </label>


                        <input type="number"
                               class="form-control"
                               id="minimumScore"
                               placeholder="60">


                    </div>







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
                    
                    <div class="col-md-6 mb-3"> <label class="form-label"> Description </label> 
                    <textarea class="form-control" id="description" rows="2" placeholder="Enter recruitment drive description">
                    </textarea> </div>



                </div>






                <div class="text-end">


                    <button type="button"
                            class="btn btn-success"
                            onclick="addRecruitment()">



                        <i class="fas fa-save"></i>

                        Save Drive


                    </button>





                    <button type="reset"
                            class="btn btn-secondary">


                        Reset


                    </button>




                </div>



            </form>



        </div>


    </div>





    <br>





    <!-- Recruitment List -->


    <div class="card shadow">



        <div class="card-header bg-dark text-white">


            <h4>

                <i class="fas fa-list"></i>

                Recruitment Drive List


            </h4>


        </div>






        <div class="card-body">



            <table class="table table-bordered table-hover text-center">



                <thead>


                    <tr>

                        <th>ID</th>

                        <th>Company</th>

                        <th>Drive Name</th>

                        <th>Drive Date</th>

                        <th>Minimum Score</th>

                        <th>Status</th>
                        
                        <th>Description</th>

                        <th>Action</th>


                    </tr>


                </thead>





                <tbody id="driveTableBody">


                    <!-- Data Loaded From JS -->


                </tbody>





            </table>




        </div>





    </div>





</div>





<script src="../js/Recruitment.js"></script>


</body>

</html>