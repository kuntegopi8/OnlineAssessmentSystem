package com.online.OnlineRecrutmentSystemBackend.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Question {
	private int id;
    private int assessment_ID;
    private String questionText;
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;
    private String correctAnswer;
    private int marks;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAssessment_ID() {
        return assessment_ID;
    }

    public void setAssessment_ID(int assessment_ID) {
        this.assessment_ID = assessment_ID;
    }

    @JsonProperty("Question_Text")
    public String getQuestion_Text() {
        return questionText;
    }

    @JsonProperty("Question_Text")
    public void setQuestion_Text(String questionText) {
        this.questionText = questionText;
    }

    @JsonProperty("Option_A")
    public String getOption_A() {
        return optionA;
    }

    @JsonProperty("Option_A")
    public void setOption_A(String optionA) {
        this.optionA = optionA;
    }

    @JsonProperty("Option_B")
    public String getOption_B() {
        return optionB;
    }

    @JsonProperty("Option_B")
    public void setOption_B(String optionB) {
        this.optionB = optionB;
    }

    @JsonProperty("Option_C")
    public String getOption_C() {
        return optionC;
    }

    @JsonProperty("Option_C")
    public void setOption_C(String optionC) {
        this.optionC = optionC;
    }

    @JsonProperty("Option_D")
    public String getOption_D() {
        return optionD;
    }

    @JsonProperty("Option_D")
    public void setOption_D(String optionD) {
        this.optionD = optionD;
    }

    @JsonProperty("Correct_Answer")
    public String getCorrect_Answer() {
        return correctAnswer;
    }

    @JsonProperty("Correct_Answer")
    public void setCorrect_Answer(String correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

    @JsonProperty("Marks")
    public int getMarks() {
        return marks;
    }

    @JsonProperty("Marks")
    public void setMarks(int marks) {
        this.marks = marks;
    }
}