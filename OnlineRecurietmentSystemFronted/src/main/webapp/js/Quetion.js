
async function getAssesmentName() {
    try {
        let response = await fetch("http://localhost:9090/assessment/allAssessment");
        let data = await response.json();
        let select = document.getElementById("assessmentId");
        data.forEach(assessment => {
            let option = document.createElement("option");
            option.value = assessment.id;
            option.textContent = assessment.assessmentName;
            select.appendChild(option);
        });
    }
    catch(error) {
        console.log(error);
    }
}



	async function addQuetion(){
	    let assessmentId = parseInt(document.getElementById("assessmentId").value);
	    let marks = parseInt(document.getElementById("marks").value);
	    let quetion = document.getElementById("quetion").value;
	    let optionA = document.getElementById("optionA").value;
	    let optionB = document.getElementById("optionB").value;
	    let optionC = document.getElementById("optionC").value;
	    let optionD = document.getElementById("optionD").value;
	    let ans = document.getElementById("ans").value;

	    let response = await fetch("http://localhost:9090/question/addquestion",{
	        method:"POST",
	        headers:{
	            "Content-Type":"application/json"
	        },

	        body:JSON.stringify({
	            assessment_ID: assessmentId,
	            Question_Text: quetion,
	            Option_A: optionA,
	            Option_B: optionB,
	            Option_C: optionC,
	            Option_D: optionD,
	            Correct_Answer: ans,
	            Marks: marks

	        })
	    });

	    if(response.ok){
	        alert("Question Added");
			
	    }
	    else{
	        alert("Question Not Added");
	    }
	}	
	
	async function loadAllQuestion(){
	    try{
	        let response = await fetch("http://localhost:9090/question/getallquestion");
	        let data = await response.json();
	        let tableBody = document.getElementById("questionTableBody");
	        tableBody.innerHTML = "";
	        data.forEach((question,index)=>{
	            let row = document.createElement("tr");
	            row.innerHTML = `
	                <td>${index+1}</td>
	                <td>${question.assessment_ID}</td>
	                <td>${question.question_Text}</td>
	                <td>${question.correct_Answer}</td>
	                <td>${question.Marks}</td>

	                <td>

					   <button class="btn btn-warning btn-sm">
					   <a href="update_Quetion.jsp?id=${question.id}&assessmentId=${question.assessment_ID}"> 
						<i class="fas fa-edit"></i>
						</a>
	                        
	                    </button>

	                    <button class="btn btn-danger btn-sm"
	                    onclick="deleteQuestion(${question.id})">
	                        <i class="fas fa-trash"></i>
	                    </button>
	                </td>
	            `;
	            tableBody.appendChild(row);
	        });

	    }
	    catch(error){
	        console.log(error);
	    }
	}
		
	async function deleteQuestion(id) {
	    let confirmDelete = confirm("Are you sure you want to delete this question?");
	    if (!confirmDelete) {
	        return;
	    }
	    try {
	        let response = await fetch(`http://localhost:9090/question/deletequestion/${id}`, {
	            method: "DELETE"
	        });
	        let result = await response.text();
	        if (response.ok) {
	            alert("Delete Successfull",result);
	            // Reload table after successful delete
	            loadAllQuestion();
	        } else {
	            alert(result);
	        }
	    } catch (error) {
	        console.log(error);
	        alert("Server Error");
	    }
	}	
	
	const params = new URLSearchParams(window.location.search);
		qnId = parseInt(params.get("id"));

		console.log(qnId);
		async function updateQuestion(id){
			qnId=id;
			
		}
	
	async function editQuestion(){
	    let marks = parseInt(document.getElementById("marks").value);
	    let question = document.getElementById("question").value;
	    let optionA = document.getElementById("optionA").value;
	    let optionB = document.getElementById("optionB").value;
	    let optionC = document.getElementById("optionC").value;
	    let optionD = document.getElementById("optionD").value;
	    let ans = document.getElementById("ans").value;
	    try{
	        let response = await fetch(`http://localhost:9090/question/updatequestion/${qnId}`,{
	            method:"PUT",      // Use PUT if your controller uses @PutMapping
	            headers:{
	                "Content-Type":"application/json"
	            },
	            body:JSON.stringify({
	                "Question_Text": question,
	                "Option_A": optionA,
	                "Option_B": optionB,
	                "Option_C": optionC,
	                "Option_D": optionD,
	                "Correct_Answer": ans,
	                "Marks": marks		
	            })

	        });

	        let result = await response.text();
	        if(response.ok){
	            alert("Quetion Updated",result);
	            window.location.href = "manage-question.jsp";
	        }else{
	            alert("",result);
	        }
	    }catch(error){
	        console.log(error);
	        alert("Server Error");
	    }
	}
	
	
	
	const assessmentId = Number(params.get("assessmentId"));
	async function loadQuestion() {

	    try {

	        console.log("qnId =", qnId);

	        let response = await fetch(
	            `http://localhost:9090/question/questionbyasse/${assessmentId}`
	        );

	        let data = await response.json();

	        console.log(data);

	        if (data.length === 0) {
	            alert("No Data Found");
	            return;
	        }

	        let question = data[0];

	        console.log(question);

	        alert(question.Marks);
	        alert(question.Question_Text);

	        document.getElementById("marks").value = question.Marks;
	        document.getElementById("question").value = question.Question_Text;
	        document.getElementById("optionA").value = question.Option_A;
	        document.getElementById("optionB").value = question.Option_B;
	        document.getElementById("optionC").value = question.Option_C;
	        document.getElementById("optionD").value = question.Option_D;
	        document.getElementById("ans").value = question.Correct_Answer;

	    } catch (error) {
	        console.error(error);
	    }
	}