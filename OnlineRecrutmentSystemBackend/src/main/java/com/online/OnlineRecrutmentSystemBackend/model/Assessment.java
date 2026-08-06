package com.online.OnlineRecrutmentSystemBackend.model;

import org.springframework.stereotype.Component;

@Component("/assessment")
public class Assessment {
      private int id;
      private String assessmentName;
      private String domain;
      private int duration;
      private int totalQuestion;
      private int totalMarks;
      private int eligibility;
      private String status;
	  public int getId() {
		  return id;
	  }
	  public void setId(int id) {
		  this.id = id;
	  }
	  public String getAssessmentName() {
		  return assessmentName;
	  }
	  public void setAssessmentName(String assessmentName) {
		  this.assessmentName = assessmentName;
	  }
	  public String getDomain() {
		  return domain;
	  }
	  public void setDomain(String domain) {
		  this.domain = domain;
	  }
	  public int getDuration() {
		  return duration;
	  }
	  public void setDuration(int duration) {
		  this.duration = duration;
	  }
	  public int getTotalQuestion() {
		  return totalQuestion;
	  }
	  public void setTotalQuestion(int totalQuestion) {
		  this.totalQuestion = totalQuestion;
	  }
	  public int getTotalMarks() {
		  return totalMarks;
	  }
	  public void setTotalMarks(int totalMarks) {
		  this.totalMarks = totalMarks;
	  }
	  public int getEligibility() {
		  return eligibility;
	  }
	  public void setEligibility(int eligibility) {
		  this.eligibility = eligibility;
	  }
	  public String getStatus() {
		return status;
	  }
	  public void setStatus(String status) {
		this.status = status;
	  }
   
}
