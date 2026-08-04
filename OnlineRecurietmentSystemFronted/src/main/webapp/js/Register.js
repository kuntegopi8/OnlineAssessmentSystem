/**
 * 
 */
async function registerStudent() { 
    let name = document.getElementById("uname");
    let email =document.getElementById("email");
	let pass =document.getElementById("pass");
	let contact =document.getElementById("mobNo").value();
	let qualification =document.getElementById("qulification");
	let collage =document.getElementById("collage");
	let cgpa=document.getElementById("cgpa");
	let gender =document.getElementById("gender");
	let intrest =document.getElementById("");
	
	
    try {
        let response = await fetch("http://localhost:9090/register", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                sname : name,
			   email : eamil ,
			   pass : pass ,
			   contact : contact ,
			   qualification :  collage ,
			   collage : collage ,
			   cgpa : cgpa ,
			   gender : gender , 
			   interest : intrest
            })
        }).then(response => response.json())
		.then(data => {
			alert("Registrations Successfull ",name);
			window.location.href = "home.jsp";
		})


    } catch (error) {
        console.log("Catch: " + error);
    }
}