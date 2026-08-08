
let companyMap = {};


// ==============================
// Page Load Function
// ==============================

async function initRecruitmentPage() {

    await loadCompanies();

    await loadRecruitment();

}



// ==============================
// Load Companies Dropdown + Map
// ==============================

async function loadCompanies() {

    try {

        let response =
            await fetch(
                "http://localhost:9090/company/allcompany"
            );


        let companies =
            await response.json();


        let companySelect =
            document.getElementById("companyId");


        companySelect.innerHTML =
            "<option value=''>Select Company</option>";


        companies.forEach(company => {

            // Dropdown

            let option =
                document.createElement("option");


            option.value =
                company.id;


            option.textContent =
                company.name;


            companySelect.appendChild(option);


            // Map for table

            companyMap[company.id] =
                company.name;

        });


    }
    catch (error) {

        console.log(
            "Company Error:",
            error
        );

    }

}



// ==============================
// Add Recruitment Drive
// ==============================

async function addRecruitment() {


    let recruitment = {

        companyId:
            parseInt(
                document.getElementById("companyId").value
            ),


        name:
            document.getElementById("driveName").value,


        date:
            document.getElementById("driveDate").value,


        minimumScore:
            parseInt(
                document.getElementById("minimumScore").value
            ),


        status:
            document.getElementById("status").value,


        // NEW

        description:
            document.getElementById("description").value

    };


    console.log(
        "Recruitment JSON:",
        recruitment
    );


    try {


        let response =
            await fetch(
                "http://localhost:9090/drive/adddrive",
                {

                    method: "POST",

                    headers: {
                        "Content-Type":
                            "application/json"
                    },

                    body:
                        JSON.stringify(
                            recruitment
                        )

                }
            );


        if (response.ok) {

            alert(
                "Recruitment Drive Added Successfully"
            );


            document
                .getElementById("recruitmentForm")
                .reset();


            loadRecruitment();

        }
        else {

            alert(
                "Failed To Add Drive"
            );

        }


    }
    catch (error) {

        console.log(
            "Add Error:",
            error
        );

    }

}



// ==============================
// Load Recruitment List
// ==============================

async function loadRecruitment() {

    try {

        let response =
            await fetch(
                "http://localhost:9090/drive/all"
            );


        let drives =
            await response.json();


        let tableBody =
            document.getElementById(
                "driveTableBody"
            );


        tableBody.innerHTML = "";


        drives.forEach(
            (drive, index) => {


                let row =
                    document.createElement("tr");


                row.innerHTML = `

                    <td>
                        ${index + 1}
                    </td>


                    <td>
                        ${companyMap[drive.companyId] || "N/A"}
                    </td>


                    <td>
                        ${drive.name || "N/A"}
                    </td>


                    <td>
                        ${drive.date || "N/A"}
                    </td>


                    <td>
                        ${drive.minimumScore || 0}%
                    </td>


                    <td>

                        <span class="badge ${
                            drive.status === "Open"
                                ? "bg-success"
                                : "bg-danger"
                        }">

                            ${drive.status || "N/A"}

                        </span>

                    </td>


                    <!-- Description -->

                    <td
                        style="
                            max-width: 300px;
                            min-width: 250px;
                            white-space: normal;
                            word-wrap: break-word;
                            text-align: left;
                        "
                        title="${drive.description || "N/A"}">

                        ${drive.description || "N/A"}

                    </td>


                    <!-- Action -->

                    <td>

                        <a
                            href="update_drive.jsp?id=${drive.id}"
                            class="btn btn-warning btn-sm">

                            <i class="fas fa-edit"></i>

                        </a>


                        <button
                            class="btn btn-danger btn-sm"
                            onclick="deleteDrive(${drive.id})">

                            <i class="fas fa-trash"></i>

                        </button>

                    </td>

                `;


                tableBody.appendChild(row);


            }
        );


    }
    catch (error) {

        console.log(
            "Recruitment Error:",
            error
        );

    }

}




// ==============================
// Delete Recruitment
// ==============================

async function deleteDrive(id) {

    let confirmDelete =
        confirm(
            "Are you sure you want to delete this recruitment drive?"
        );


    if (!confirmDelete) {

        return;

    }


    try {

        let response =
            await fetch(
                `http://localhost:9090/drive/deletedrive/${id}`,
                {
                    method: "DELETE"
                }
            );


        if (response.ok) {

            alert(
                "Recruitment Drive Deleted Successfully"
            );


            loadRecruitment();

        }
        else {

            alert(
                "Delete Failed"
            );

        }

    }
    catch (error) {

        console.log(
            "Delete Error:",
            error
        );

    }

}



// ==============================
// Get ID From URL
// ==============================

const params =
    new URLSearchParams(
        window.location.search
    );


let recId =
    parseInt(
        params.get("id")
    );


	
	// ==============================
	// Load Recruitment For Edit
	// ==============================

	async function loadRecruiment() {

	    try {

	        let response =
	            await fetch(
	                `http://localhost:9090/drive/allbyid/${recId}`
	            );


	        if (!response.ok) {

	            alert(
	                "Recruitment Drive not found."
	            );

	            return;

	        }


	        let drives =
	            await response.json();


	        if (drives.length === 0) {

	            alert(
	                "No Recruitment Drive Found"
	            );

	            return;

	        }


	        let drive =
	            drives[0];


	        document.getElementById(
	            "driveId"
	        ).value =
	            drive.id;


	        document.getElementById(
	            "companyId"
	        ).value =
	            drive.companyId;


	        document.getElementById(
	            "driveName"
	        ).value =
	            drive.name;


	        document.getElementById(
	            "driveDate"
	        ).value =
	            drive.date;


	        document.getElementById(
	            "minimumScore"
	        ).value =
	            drive.minimumScore;


	        document.getElementById(
	            "status"
	        ).value =
	            drive.status;


	        // ==========================
	        // Load Description
	        // ==========================

	        document.getElementById(
	            "description"
	        ).value =
	            drive.description || "";


	    }
	    catch (error) {

	        console.log(
	            "Load Recruitment Error:",
	            error
	        );

	    }

	}



	// ==============================
	// Update Recruitment
	// ==============================

	async function updateRecruitment() {


	    let recruitment = {

	        name:
	            document.getElementById(
	                "driveName"
	            ).value,


	        date:
	            document.getElementById(
	                "driveDate"
	            ).value,


	        minimumScore:
	            parseInt(
	                document.getElementById(
	                    "minimumScore"
	                ).value
	            ),


	        status:
	            document.getElementById(
	                "status"
	            ).value,


	        // ==========================
	        // Description
	        // ==========================

	        description:
	            document.getElementById(
	                "description"
	            ).value

	    };


	    console.log(
	        "Update JSON:",
	        recruitment
	    );


	    try {


	        let response =
	            await fetch(
	                `http://localhost:9090/drive/updatedrive/${recId}`,
	                {

	                    method: "PUT",

	                    headers: {
	                        "Content-Type":
	                            "application/json"
	                    },

	                    body:
	                        JSON.stringify(
	                            recruitment
	                        )

	                }
	            );


	        if (response.ok) {

	            alert(
	                "Recruitment Drive Updated Successfully"
	            );


	            window.location.href =
	                "manage-drive.jsp";

	        }
	        else {

	            let error =
	                await response.text();


	            console.log(
	                "Update Error:",
	                error
	            );


	            alert(
	                "Failed to Update Recruitment Drive"
	            );

	        }


	    }
	    catch (error) {

	        console.log(
	            "Update Error:",
	            error
	        );

	    }

	}

