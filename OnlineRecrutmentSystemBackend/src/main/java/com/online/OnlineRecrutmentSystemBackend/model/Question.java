package com.online.OnlineRecrutmentSystemBackend.model;

import org.springframework.beans.factory.annotation.Value;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Question {

	private int id;
    private int assessment_ID;
    
    @JsonProperty("Question_Text")
    private String Question_Text;
    
    @JsonProperty("Option_A")
    private String Option_A;
    @JsonProperty("Option_B")
    private String Option_B;
    @JsonProperty("Option_C")
    private String Option_C;
    @JsonProperty("Option_D")
    private String Option_D;
    @JsonProperty("Correct_Answer")
    private String Correct_Answer;
    @JsonProperty("Marks")
    private int Marks;

    public int getAssessment_ID() {
        return assessment_ID;
    }

    public void setAssessment_ID(int assessment_ID) {
        this.assessment_ID = assessment_ID;
    }

    public String getQuestion_Text() {
        return Question_Text;
    }

    public void setQuestion_Text(String Question_Text) {
        this.Question_Text= Question_Text;
    }

    public String getOption_A() {
        return Option_A;
    }

    public void setOption_A(String option_A) {
        Option_A = option_A;
    }

    public String getOption_B() {
        return Option_B;
    }

    public void setOption_B(String option_B) {
        Option_B = option_B;
    }

    public String getOption_C() {
        return Option_C;
    }

    public void setOption_C(String option_C) {
        Option_C = option_C;
    }

    public String getOption_D() {
        return Option_D;
    }

    public void setOption_D(String option_D) {
        Option_D = option_D;
    }

    public String getCorrect_Answer() {
        return Correct_Answer;
    }

    public void setCorrect_Answer(String correct_Answer) {
        Correct_Answer = correct_Answer;
    }

    public int getMarks() {
        return Marks;
    }

    public void setMarks(int marks) {
        Marks = marks;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
