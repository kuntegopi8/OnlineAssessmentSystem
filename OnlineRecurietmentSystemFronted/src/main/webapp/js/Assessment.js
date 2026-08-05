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

    fetch("http://localhost:9090/assessment/addAssessment", {
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