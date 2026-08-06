package com.online.OnlineRecrutmentSystemBackend.model;

import java.util.List;

public class ExamRequest {

    private int assessmentId;
    private List<StudentAnswer> answers;

    public int getAssessmentId() {
        return assessmentId;
    }

    public void setAssessmentId(int assessmentId) {
        this.assessmentId = assessmentId;
    }

    public List<StudentAnswer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<StudentAnswer> answers) {
        this.answers = answers;
    }
}