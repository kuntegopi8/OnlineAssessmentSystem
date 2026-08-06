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