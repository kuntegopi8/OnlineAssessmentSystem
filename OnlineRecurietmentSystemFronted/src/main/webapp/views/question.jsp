<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Assessment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:#eef3ff;
    font-family:Segoe UI,sans-serif;
}

.navbar{
    background:linear-gradient(90deg,#0d6efd,#4e73df);
}

.navbar-brand{
    color:white;
    font-weight:bold;
    font-size:25px;
}

.timer{
    background:#dc3545;
    color:white;
    padding:10px 20px;
    border-radius:30px;
    font-size:20px;
    font-weight:bold;
}

.exam-card{

    margin-top:40px;
    border:none;
    border-radius:20px;
    box-shadow:0 10px 25px rgba(0,0,0,.15);
    padding:35px;
    background:white;

}

.question-number{

    color:#0d6efd;
    font-weight:bold;
    font-size:22px;

}

.question{

    font-size:23px;
    margin-top:20px;
    margin-bottom:25px;
    font-weight:600;

}

.option{

    border:2px solid #dee2e6;
    border-radius:12px;
    padding:15px;
    margin-bottom:15px;
    cursor:pointer;
    transition:.3s;

}

.option:hover{

    background:#0d6efd;
    color:white;

}

.option input{

    margin-right:10px;

}

.btn-custom{

    min-width:140px;

}

</style>

</head>

<body>

<nav class="navbar">

<div class="container">

<a class="navbar-brand">

<i class="fas fa-laptop-code"></i>

Online Assessment

</a>

<div class="timer">

<i class="fa fa-clock"></i>

<span id="timer">30:00</span>

</div>

</div>

</nav>

<div class="container">

<div class="exam-card">

<div class="d-flex justify-content-between">

<div class="question-number">

Question <span id="qNo">1</span>

</div>

<div>

Marks :
<span id="marks">2</span>

</div>

</div>

<hr>

<div class="question" id="questionText">

Loading Question...

</div>

<div id="optionContainer">

<label class="option d-block">

<input type="radio" name="answer" value="A">

<span id="optionA">Option A</span>

</label>

<label class="option d-block">

<input type="radio" name="answer" value="B">

<span id="optionB">Option B</span>

</label>

<label class="option d-block">

<input type="radio" name="answer" value="C">

<span id="optionC">Option C</span>

</label>

<label class="option d-block">

<input type="radio" name="answer" value="D">

<span id="optionD">Option D</span>

</label>

</div>

<hr>

<div class="d-flex justify-content-between">

<button class="btn btn-secondary btn-custom"
onclick="previousQuestion()">

<i class="fa fa-arrow-left"></i>

Previous

</button>

<button class="btn btn-primary btn-custom"
onclick="nextQuestion()">

Next

<i class="fa fa-arrow-right"></i>

</button>

<button class="btn btn-success btn-custom"
onclick="submitExam()">

<i class="fa fa-check-circle"></i>

Submit Exam

</button>

</div>

</div>

</div>

<script src="../js/question.js"></script>

</body>
</html>