function registerUser()
{
	let name=document.getElementById("full_name").value;
		let email=document.getElementById("email").value;
		let pass=document.getElementById("password").value;
		let mobile=document.getElementById("mobile").value;
let gender = document.querySelector('input[name="gender"]:checked').value;
		let qualification=document.getElementById("qualification").value;
		let college=document.getElementById("college_name").value;
		let cgpa=document.getElementById("cgpa").value;
		let interest=document.getElementById("interest").value;
	
	fetch("http://localhost:9090/register", {

	        method: "POST",

	        headers: {
	            "Content-Type": "application/json"
	        },

	        body: JSON.stringify({
				sname: name,
				 email: email,
				  pass: pass,
				   contact: mobile,
				   qualification: qualification,
				   college: college,
				   cgpa: cgpa,
				   gender: gender,
				   interest: interest

	        })

	    })
	    .then(response => {

	        if (!response.ok) {
	            throw new Error("Not Registered");
	        }

	        return response.json();

	    })
	    
	    .catch(error => {

	        console.log(error);
	        alert("Please fill all fields Properly");

	    });
}
