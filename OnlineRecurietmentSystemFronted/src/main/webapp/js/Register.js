async function registerStudent() {

    let name = document.getElementById("full_name").value;
    let email = document.getElementById("email").value;
    let pass = document.getElementById("password").value;
	let contact = parseInt(document.getElementById("mobile").value);
    let qualification = document.getElementById("qualification").value;
    let college = document.getElementById("college_name").value;
    let cgpa = parseFloat(document.getElementById("cgpa").value);
    let gender = document.querySelector('input[name="gender"]:checked')?.value;
    let interest = document.getElementById("interest").value;

    if (!gender) {
        alert("Please select gender");
        return;
    }

    try {

        let response = await fetch("http://localhost:9090/register", {

            method: "POST",

            headers: {
                "Content-Type": "application/json"
            },

            body: JSON.stringify({

                sname: name,
                email: email,
                pass: pass,
                contact: contact,
                qualification: qualification,
                college: college,
                cgpa: cgpa,
                gender: gender,
                interest: interest

            })

        });

        if (response.ok) {
            alert("Registration Successful");
            window.location.href = "home.jsp";

        } else {

            alert("Registration Failed");

        }

    } catch (error) {
        console.log(error);
        alert("Server Error");

    }

}