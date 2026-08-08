function addAssessment() {

    let assessment = {
        assessmentName: document.getElementById("assessmentName").value.trim(),
        domain: document.getElementById("domain").value,
        duration: parseInt(document.getElementById("duration").value),
        totalQuestion: parseInt(document.getElementById("totalQuestion").value),
        totalMarks: parseInt(document.getElementById("totalMarks").value),
        eligibility: parseInt(document.getElementById("eligibility").value),
        status: document.getElementById("status").value

    };

    fetch("http://localhost:9090/assessment/assessment", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(assessment)
    })
        .then(response => {

            if (!response.ok) {
                throw new Error("Failed to save assessment");
            }

            return response.text();
        })
        .then(data => {

            alert(data);

            document.querySelector("form").reset();

        })
        .catch(error => {

            console.error(error);
            alert(error.message);

        });
}


function loadAssessments() {

    fetch("http://localhost:9090/assessment/allAssessment")
        .then(response => response.json())
        .then(data => {

            let rows = "";

            data.forEach((assessment, index) => {

                rows += `
                    <tr>
					
                        <td>${assessment.id}</td>
                        <td>${assessment.assessmentName}</td>
                        <td>${assessment.domain}</td>
                        <td>${assessment.duration}</td>
                        <td>${assessment.totalQuestion}</td>
                        <td>${assessment.totalMarks}</td>
                        <td>${assessment.eligibility}%</td>
                        <td>${assessment.status}</td>
                        <td>
                            <a href="update-assessment.jsp?id=${assessment.id}" class="btn btn-warning btn-sm" >Edit</a>
                            <button class="btn btn-danger btn-sm" onclick="deleteAssessment(${assessment.id})">Delete</button>
                        </td>
                    </tr>
                `;
            });

            document.getElementById("assessmentBody").innerHTML = rows;
        });
}

function deleteAssessment(id) {

    if (!confirm("Are you sure you want to delete this assessment?")) {
        return;
    }

    fetch(`http://localhost:9090/assessment/deleteAssessment/${id}`, {

        method: "DELETE"

    })

        .then(response => {

            if (!response.ok) {
                throw new Error("Delete Failed");
            }

            return response.text();
        })

        .then(data => {

            alert(data);

            loadAssessments();

        })

        .catch(error => {

            alert(error.message);

        });

}

function updateLoad() {
    
    const params = new URLSearchParams(window.location.search);
    const id = params.get("id");
	fetch(`http://localhost:9090/assessment/${id}`)
	    .then(response => response.json())
	    .then(data => {

	        let assessment = data[0];   // First element of the list

	        document.getElementById("idd").value = assessment.id;
	        document.getElementById("assessmentName").value = assessment.assessmentName;
	        document.getElementById("domain").value = assessment.domain;
	        document.getElementById("duration").value = assessment.duration;
	        document.getElementById("totalQuestion").value = assessment.totalQuestion;
	        document.getElementById("totalMarks").value = assessment.totalMarks;
	        document.getElementById("eligibility").value = assessment.eligibility;
	        document.getElementById("status").value = assessment.status;
	    });
};

function updateAssessment() {

    let assessment = {
        id: parseInt(document.getElementById("idd").value),
        assessmentName: document.getElementById("assessmentName").value.trim(),
        domain: document.getElementById("domain").value,
        duration: parseInt(document.getElementById("duration").value),
        totalQuestion: parseInt(document.getElementById("totalQuestion").value),
        totalMarks: parseInt(document.getElementById("totalMarks").value),
        eligibility: parseInt(document.getElementById("eligibility").value),
        status: document.getElementById("status").value
    };

    fetch("http://localhost:9090/assessment/updateAssessment", {

        method: "PUT",

        headers: {
            "Content-Type": "application/json"
        },

        body: JSON.stringify(assessment)

    })
    .then(response => {

        if (!response.ok) {
            throw new Error("Update Failed");
        }

        return response.text();

    })
    .then(data => {

        alert(data);
        document.querySelector("form").reset();

        // Redirect after successful update
        window.location.href = "manage-assessment.jsp";

    })
    .catch(error => {

        alert(error.message);

    });
}



// ======================================================
// LOAD STUDENT ASSESSMENTS
// ======================================================

function loadStudentAssessments() {

    const sid = localStorage.getItem("userId");

    console.log("Student ID =", sid);

    if (!sid) {
        alert("Student ID not found. Please login again.");
        window.location.href = "userlogin.jsp";
        return;
    }

    fetch("http://localhost:9090/assessment/student/" + sid)
        .then(response => {

            console.log(
                "Assessment API Status =",
                response.status
            );

            if (!response.ok) {
                throw new Error("No Assessment Found");
            }

            return response.json();
        })

        .then(data => {

            console.log("Student Assessments =", data);

            const container =
                document.getElementById("assessmentContainer");

            if (!data || data.length === 0) {
                container.innerHTML =
                    "<h4 class='text-danger text-center'>" +
                    "No Assessment Available" +
                    "</h4>";
                return;
            }

            let cards = "";

            data.forEach(a => {

                cards += `
                    <div class="col-lg-4 mb-4">

                        <div class="card shadow-lg border-0 rounded-4 h-100">

                            <div class="card-body text-center">

                                <i class="fas fa-file-alt fa-3x text-primary mb-3"></i>

                                <h4>${a.assessmentName}</h4>

                                <hr>

                                <p>
                                    <b>Domain :</b>
                                    ${a.domain}
                                </p>

                                <p>
                                    <b>Duration :</b>
                                    ${a.duration} Minutes
                                </p>

                                <p>
                                    <b>Total Questions :</b>
                                    ${a.totalQuestion}
                                </p>

                                <p>
                                    <b>Total Marks :</b>
                                    ${a.totalMarks}
                                </p>

                                <p>
                                    <b>Eligibility :</b>
                                    ${a.eligibility}%
                                </p>

                                <button
                                    class="btn btn-success w-100 mt-3"
                                    onclick="startAssessment(${a.id})">

                                    <i class="fas fa-play-circle"></i>
                                    Start Assessment

                                </button>

                            </div>

                        </div>

                    </div>
                `;
            });

            container.innerHTML = cards;
        })

        .catch(error => {

            console.error(
                "Student Assessment Error:",
                error
            );

            document.getElementById(
                "assessmentContainer"
            ).innerHTML =
                "<h4 class='text-danger text-center'>" +
                "No Assessment Available" +
                "</h4>";
        });
}


// ======================================================
// START ASSESSMENT
// ======================================================

function startAssessment(id) {

    console.log("Clicked Assessment ID =", id);

    if (!id || isNaN(id)) {

        alert("Invalid Assessment ID");

        return;
    }

    // Store selected assessment
    localStorage.setItem(
        "assessmentId",
        id
    );

    console.log(
        "Stored Assessment ID =",
        localStorage.getItem("assessmentId")
    );

    // Open exam page
    window.location.href = "question.jsp";
}