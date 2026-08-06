function login() {

    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;

    fetch("http://localhost:9090/api/auth/login", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            email: email,
            password: password
        })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error("Invalid Login");
        }
        return response.json();
    })
    .then(data => {
        console.log(data);
        if (data.role === "ADMIN") {
            window.location.href = "admin_dashboard.jsp";
        } else if (data.role === "STUDENT") {
            window.location.href = "Student_DashBoard.jsp";
        }
    })
    .catch(error => {

        console.log(error);
        alert("Invalid Email or Password");

    });
}

function addAssessment()
{
	alert("Working");
	let assessment = {

	        assessmentName: document.getElementById("assessmentName").value,
	        domain: document.getElementById("domain").value,
	        duration: parseInt(document.getElementById("duration").value),
	        totalQuestion: parseInt(document.getElementById("totalQuestion").value),
	        totalMarks: parseInt(document.getElementById("totalMarks").value),
	        eligibility: parseInt(document.getElementById("eligibility").value),
	        status: document.getElementById("status").value

	    };
		console.log(assessment);
		fetch("http://localhost:9090/assessment/addAssessment", {

		    method: "POST",

		    headers: {
		        "Content-Type": "application/json"
		    },
		    body: JSON.stringify(assessment)
		})
		.then(response => response.text())
		.then(data => {
		    alert(data);
		    console.log(data);
		})
		.catch(error => {
		    console.error(error);
		    alert("Error while saving assessment.");
		});
}
