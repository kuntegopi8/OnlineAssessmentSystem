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

            window.location.href = "student_dashboard.jsp";

        }

    })
    .catch(error => {

        console.log(error);
        alert("Invalid Email or Password");

    });

}

