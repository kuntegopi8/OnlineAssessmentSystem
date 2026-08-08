async function loadDashboardCounts() {
    await loadStudentCount();
    await loadAssessmentCount();
    await loadCompanyCount();
    await loadJobCount();
}


// Student Count
async function loadStudentCount() {
    try {
        let response = await fetch("http://localhost:9090/studentcount");

        let data = await response.json();

        document.getElementById("studentCount").innerHTML = data;

    } catch (error) {
        console.log("Student Count Error:", error);
    }
}


// Assessment Count
async function loadAssessmentCount() {
    try {
        let response = await fetch("http://localhost:9090/assessment/allAssessment");

        let data = await response.json();

        document.getElementById("assessmentCount").innerHTML = data.length;

    } catch (error) {
        console.log("Assessment Count Error:", error);
    }
}


// Company Count
async function loadCompanyCount() {
    try {
        let response = await fetch("http://localhost:9090/company/allcompany");

        let data = await response.json();

        document.getElementById("companyCount").innerHTML = data.length;

    } catch (error) {
        console.log("Company Count Error:", error);
    }
}


// Job Count
async function loadJobCount() {
    try {
        let response = await fetch("http://localhost:9090/job/alljob");

        let data = await response.json();

        document.getElementById("jobCount").innerHTML = data.length;

    } catch (error) {
        console.log("Job Count Error:", error);
    }
}