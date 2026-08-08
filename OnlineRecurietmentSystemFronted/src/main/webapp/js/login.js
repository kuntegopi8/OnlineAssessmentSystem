function login() {

    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;

    fetch("http://localhost:9090/api/auth/login", {
        method: "POST",

        // ADDED: send session cookie to backend
      //  credentials: "include",

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

        console.log("Login Response:", data);

        if (data.role === "ADMIN") {

            window.location.href = "admin_dashboard.jsp";

        } else if (data.role === "STUDENT") {

            // CHANGED: Store student ID in localStorage
            // Your assessment.js uses localStorage.getItem("userId")
            localStorage.setItem("userId", data.userId);

            // ADDED: Store optional student information
            localStorage.setItem("userName", data.sname);
            localStorage.setItem("userEmail", data.email);

            // ADDED: Store role
            localStorage.setItem("userRole", data.role);

            console.log(
                "Stored Student ID =",
                localStorage.getItem("userId")
            );

            window.location.href = "student_dashboard.jsp";
        }

    })
    .catch(error => {

        console.log(error);
        alert("Invalid Email or Password");

    });
}


// CHANGED: Get student ID from localStorage
// Your assessment code uses localStorage.getItem("userId")
let studentId = localStorage.getItem("userId");













// let studentId = sessionStorage.getItem("studentId");


async function loadStudentProfile() {
    try {
        if (!studentId) {
            console.log("Student ID not found");
            return;
        }
        let response = await fetch(`http://localhost:9090/getProfile/${studentId}` );
        let data = await response.json();
        let student = data[0];
        document.getElementById("name").innerHTML = student.sname;
        document.getElementById("email").innerHTML = student.email;
        document.getElementById("qualification").innerHTML = student.qualification;
        document.getElementById("cgpa").innerHTML = student.cgpa;

        document.getElementById("studentName").innerHTML = student.sname;


    } catch (error) {

        console.log("Profile Error:", error);
        alert(error);

    }

}



async function loadProfileUpdate() {
    try {
        document.getElementById("loading").style.display = "block";

        

        if (!studentId) {
            alert("Student ID not found. Please login again.");
            window.location.href = "userlogin.jsp";
            return;
        }

        let response = await fetch(`http://localhost:9090/getProfile/${studentId}`);

        if (!response.ok) {
            throw new Error("Unable to load student profile");
        }

        let data = await response.json();
        console.log("Student Data:", data);

        let student = data[0];

        if (!student) {
            alert("Student data not found.");
            return;
        }

        document.getElementById("name").value = student.sname || "";
        document.getElementById("email").value = student.email || "";
        document.getElementById("mobile").value = student.contact || "";
        document.getElementById("gender").value = student.gender || "";
        document.getElementById("qualification").value = student.qualification || "";
        document.getElementById("collegeName").value = student.college || "";
        document.getElementById("cgpa").value = student.cgpa || "";
		document.getElementById("interest").value = student.interest || "";
		
    }
    catch (error) {
        console.error("Profile loading error:", error);
        alert("Unable to load student profile.");
    }
    finally {
        document.getElementById("loading").style.display = "none";
    }
}



async function updateProfile() {

    try {

        if (!studentId) {
            alert("Student ID not found. Please login again.");
            window.location.href = "userlogin.jsp";
            return;
        }

        let student = {
            sname: document.getElementById("name").value,
            email: document.getElementById("email").value,
            contact: document.getElementById("mobile").value,
            gender: document.getElementById("gender").value,
            qualification: document.getElementById("qualification").value,
            college: document.getElementById("collegeName").value,
            cgpa: parseFloat(document.getElementById("cgpa").value),
            interest: document.getElementById("interest").value
        };

        console.log("Update JSON:", student);

        let response = await fetch(
            `http://localhost:9090/updateProfile/${studentId}`,
            {
                method: "PUT",

                headers: {
                    "Content-Type": "application/json"
                },

                body: JSON.stringify(student)
            }
        );

        console.log("Response Status:", response.status);

        if (!response.ok) {
            throw new Error(
                "Profile update failed. Status: " + response.status
            );
        }

        // Backend returns plain text
        let result = await response.text();

        console.log("Update Response:", result);

        alert(result);

        window.location.href = "student_dashboard.jsp";

    } catch (error) {

        console.error("Update Profile Error:", error);

        alert("Unable to update profile: " + error.message);
    }
}

