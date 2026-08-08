async function addCompany() {
    let companyName = document.getElementById("companyName").value;
    let description = document.getElementById("description").value;
    let location = document.getElementById("location").value;
    let contact = document.getElementById("contact").value;
    let website = document.getElementById("website").value;
    try {
        let response = await fetch("http://localhost:9090/company/addcompany", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                "name": companyName,
                "description": description,
                "location": location,
                "contact": parseInt(contact),
                "website": website
            })
        });
        let result = await response.text();
        if (response.ok) {
            alert("Company Added Successfully");
            document.getElementById("companyName").value = "";
            document.getElementById("description").value = "";
            document.getElementById("location").value = "";
            document.getElementById("contact").value = "";
            document.getElementById("website").value = "";
            loadAllCompany();   // Call your function to refresh the table
        } else {
            alert(result);
        }
    } catch (error) {
        console.log(error);
        alert("Server Error");
    }
}


async function loadAllCompany() {

    let tableBody = document.getElementById("companyTableBody");
    tableBody.innerHTML = "";

    try {

        let response = await fetch("http://localhost:9090/company/allcompany");

        let data = await response.json();

        for (let i = 0; i < data.length; i++) {

            let row = `
                <tr>
                    <td>${data[i].id}</td>
                    <td>${data[i].name}</td>
                    <td>${data[i].location}</td>
                    <td>${data[i].contact}</td>
                    <td>
                        <a href="${data[i].website}" target="_blank">
                            ${data[i].website}
                        </a>
                    </td>
                    <td>
                        <button class="btn btn-warning btn-sm">
								<a href="update-company.jsp?id=${data[i].id}">
                            <i class="fas fa-edit"></i>
                        </button>

                        <button class="btn btn-danger btn-sm"
                                onclick="deleteCompany(${data[i].id})">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                </tr>
            `;

            tableBody.innerHTML += row;
        }

    } catch (error) {
        console.log(error);
        alert("Unable to load company data.");
    }
}


async function deleteCompany(id) {

    let confirmDelete = confirm("Are you sure you want to delete this company?");

    if (!confirmDelete) {
        return;
    }

    try {

        let response = await fetch(`http://localhost:9090/company/deletecompany/${id}`, {
            method: "DELETE"
        });

        let result = await response.text();

        if (response.ok) {
            alert(result);
            loadAllCompany(); // Reload the table after deletion
        } else {
            alert(result);
        }

    } catch (error) {
        console.log(error);
        alert("Server Error");
    }

}


const params = new URLSearchParams(window.location.search);
		comId = parseInt(params.get("id"));
		
		
async function updateCompany() {

	console.log(comId);
    let companyName = document.getElementById("companyName").value;
    let description = document.getElementById("description").value;
    let location = document.getElementById("location").value;
    let contact = document.getElementById("contact").value;
    let website = document.getElementById("website").value;

    try {

        let response = await fetch(`http://localhost:9090/company/updatecompany/${comId}`, {
            method: "PUT",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                "name": companyName,
                "description": description,
                "location": location,
                "contact": parseInt(contact),
                "website": website
            })
        });

        let result = await response.text();

        if (response.ok) {
            alert("Company Updated Successfully");
            window.location.href = "manage-company.jsp";
        } else {
            alert(result);
        }

    } catch (error) {
        console.log(error);
        alert("Server Error");
    }
}

async function loadCompany() {

    try {

        let response = await fetch(`http://localhost:9090/company/comapanybyid/${comId}`);

        let data = await response.json();

        // If the API returns an array
        let company = data[0];

        document.getElementById("companyName").value = company.name;
        document.getElementById("description").value = company.description;
        document.getElementById("location").value = company.location;
        document.getElementById("contact").value = company.contact;
        document.getElementById("website").value = company.website;

    } catch (error) {
        console.log(error);
        alert("Unable to load company details.");
    }
}

// at Student dashboard section 


async function loadCompanies() {

    try {

        console.log("Loading companies...");


        let response = await fetch(
            "http://localhost:9090/company/allcompany"
        );


        console.log("Response status:", response.status);
        console.log("Response URL:", response.url);


        if (!response.ok) {

            let errorText = await response.text();

            console.error(
                "API Error:",
                errorText
            );

            throw new Error(
                "HTTP Error: " + response.status
            );
        }


        let companies =
            await response.json();


        console.log(
            "Company JSON:",
            companies
        );


        let companyList =
            document.getElementById("companyList");


        companyList.innerHTML = "";


        if (!companies ||
            companies.length === 0) {

            document.getElementById(
                "noCompany"
            ).style.display = "block";

            return;
        }


        companies.forEach(function(company) {

            let card =
                document.createElement("div");

            card.className =
                "col-md-6 col-lg-4";


            card.innerHTML = `

                <div class="card company-card p-4 text-center">

                    <i class="fas fa-building company-icon"></i>

                    <h4 class="company-name">
                        ${company.name}
                    </h4>

                    <p>
                        <b>Description:</b><br>
                        ${company.description || "Not available"}
                    </p>

                    <p>
                        <i class="fas fa-location-dot text-danger"></i>
                        <b>Location:</b>
                        ${company.location || "Not available"}
                    </p>

                    <p>
                        <i class="fas fa-phone text-success"></i>
                        <b>Contact:</b>
                        ${company.contact || "Not available"}
                    </p>

                    <a
                        href="${company.website}"
                        target="_blank"
                        class="mb-3">

                        <i class="fas fa-globe"></i>
                        Company Website

                    </a>

                    <a
                        href="company_details.jsp?id=${company.id}"
                        class="btn btn-primary w-100">

                        <i class="fas fa-eye"></i>
                        View Details

                    </a>

                </div>
            `;


            companyList.appendChild(card);

        });


        document.getElementById(
            "loading"
        ).style.display = "none";


    }
    catch(error) {

        console.error(
            "COMPANY API ERROR:",
            error
        );


        document.getElementById(
            "loading"
        ).style.display = "none";


        document.getElementById(
            "errorMessage"
        ).style.display = "block";

    }

}

