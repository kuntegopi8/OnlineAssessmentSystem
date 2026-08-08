// ======================================================
// question.js
// STUDENT EXAM
// ======================================================

let assessmentId = localStorage.getItem("assessmentId");

let questions = [];
let currentQuestion = 0;
let answers = [];


// ======================================================
// PAGE LOAD
// ======================================================

window.onload = function () {

    console.log("=================================");
    console.log("question.js loaded");
    console.log("Assessment ID =", assessmentId);
    console.log("=================================");

    if (!assessmentId) {

        alert("Assessment ID not found");

        window.location.href = "available_assessment.jsp";

        return;
    }

    assessmentId = parseInt(assessmentId);

    if (isNaN(assessmentId)) {

        alert("Invalid Assessment ID");

        window.location.href = "available_assessment.jsp";

        return;
    }

    loadQuestions();
};


// ======================================================
// LOAD QUESTIONS ACCORDING TO ASSESSMENT
// ======================================================

function loadQuestions() {

    console.log(
        "Loading questions for Assessment ID =",
        assessmentId
    );

    fetch(
        "http://localhost:9090/question/questionbyasse/"
        + assessmentId
    )

    .then(response => {

        console.log(
            "Question API Status =",
            response.status
        );

        if (!response.ok) {

            throw new Error(
                "Unable to load questions"
            );
        }

        return response.json();
    })

    .then(data => {

        console.log(
            "Questions received =",
            data
        );

        questions = data;

        if (!questions || questions.length === 0) {

            document.getElementById(
                "questionText"
            ).innerHTML =
                "No Questions Found";

            return;
        }

        currentQuestion = 0;

        showQuestion();

    })

    .catch(error => {

        console.error(
            "Question Loading Error =",
            error
        );

        document.getElementById(
            "questionText"
        ).innerHTML =
            "Unable to load questions";

    });
}


// ======================================================
// SHOW QUESTION
// ======================================================

function showQuestion() {

    if (questions.length === 0) {
        return;
    }

    let q = questions[currentQuestion];

    console.log(
        "Showing Question =",
        q
    );


    // Question number

    document.getElementById("qNo").innerHTML =
        currentQuestion + 1;


    // Question text

    document.getElementById("questionText").innerHTML =
        q.Question_Text;


    // Marks

    document.getElementById("marks").innerHTML =
        q.Marks;


    // Options

    document.getElementById("optionA").innerHTML =
        q.Option_A;

    document.getElementById("optionB").innerHTML =
        q.Option_B;

    document.getElementById("optionC").innerHTML =
        q.Option_C;

    document.getElementById("optionD").innerHTML =
        q.Option_D;


    // Clear radio buttons

    document
        .querySelectorAll("input[name='answer']")
        .forEach(radio => {

            radio.checked = false;

        });


    // Restore previous answer

    let savedAnswer = answers.find(
        a => a.questionid == q.id
    );


    if (savedAnswer) {

        let radio = document.querySelector(
            "input[name='answer'][value='"
            + savedAnswer.selectedans
            + "']"
        );

        if (radio) {

            radio.checked = true;

        }
    }

}


// ======================================================
// SAVE ANSWER
// ======================================================

function saveAnswer() {

    if (questions.length === 0) {
        return;
    }


    let selected =
        document.querySelector(
            "input[name='answer']:checked"
        );


    if (!selected) {

        return;
    }


    let q =
        questions[currentQuestion];


    // Remove previous answer

    answers = answers.filter(
        a => a.questionid != q.id
    );


    // Add new answer

    answers.push({

        questionid: q.id,

        selectedans: selected.value

    });


    console.log(
        "Current Answers =",
        answers
    );

}


// ======================================================
// NEXT QUESTION
// ======================================================

function nextQuestion() {

    saveAnswer();


    if (
        currentQuestion <
        questions.length - 1
    ) {

        currentQuestion++;

        showQuestion();

    }

}


// ======================================================
// PREVIOUS QUESTION
// ======================================================

function previousQuestion() {

    saveAnswer();


    if (currentQuestion > 0) {

        currentQuestion--;

        showQuestion();

    }

}


// ======================================================
// SUBMIT EXAM
// ======================================================
function submitExam() {

    saveAnswer();

    console.log("=================================");
    console.log("SUBMIT EXAM");
    console.log("Assessment ID =", assessmentId);
    console.log("Answers =", answers);
    console.log("=================================");

    if (questions.length === 0) {
        alert("No questions available");
        return;
    }

    let examRequest = {
        assessmentId: assessmentId,
        answers: answers
    };

    console.log(
        "Sending Request =",
        JSON.stringify(examRequest)
    );

    fetch("http://localhost:9090/result/generate", {

        method: "POST",

        credentials: "include",

        headers: {
            "Content-Type": "application/json"
        },

        body: JSON.stringify(examRequest)

    })

    .then(async response => {

        console.log(
            "RESULT API STATUS =",
            response.status
        );

        let responseText =
            await response.text();

        console.log(
            "RESULT API RESPONSE =",
            responseText
        );

        if (!response.ok) {

            throw new Error(
                responseText ||
                "Result generation failed"
            );
        }

        return responseText;
    })

    .then(data => {

        console.log(
            "SUCCESS =",
            data
        );

        alert(data);

        window.location.href =
            "assessment_result.jsp";
    })

    .catch(error => {

        console.error(
            "RESULT ERROR =",
            error
        );

        alert(
            "RESULT ERROR:\n" +
            error.message
        );
    });
}/**
 * 
 */