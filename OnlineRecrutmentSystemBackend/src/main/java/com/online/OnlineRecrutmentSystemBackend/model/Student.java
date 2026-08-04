package com.online.OnlineRecrutmentSystemBackend.model;

import org.springframework.stereotype.Component;

@Component("/student")
public class Student {
   private int sid;
   private String sname;
   private String email;
   private String pass;
   private long contact;
   private String qualification;
   private String college;
   private float cgpa;
   private String gender;
   private String interest;
   public String getGender() {
	return gender;
}
   public void setGender(String gender) {
	this.gender = gender;
   }
   public int getSid() {
	return sid;
}
   public void setSid(int sid) {
	this.sid = sid;
   }
   public String getSname() {
	return sname;
   }
   public void setSname(String sname) {
	this.sname = sname;
   }
   public String getEmail() {
	return email;
   }
   public void setEmail(String email) {
	this.email = email;
   }
   public String getPass() {
	return pass;
   }
   public void setPass(String pass) {
	this.pass = pass;
   }
   public long getContact() {
	return contact;
   }
   public void setContact(long contact) {
	this.contact = contact;
   }
   public String getQualification() {
	return qualification;
   }
   public void setQualification(String qualification) {
	this.qualification = qualification;
   }
   public String getCollege() {
	return college;
   }
   public void setCollege(String college) {
	this.college = college;
   }
   public float getCgpa() {
	return cgpa;
   }
   public void setCgpa(float cgpa) {
	this.cgpa = cgpa;
   }
   public String getInterest() {
	return Interest;
   }
   public void setInterest(String interest) {
	Interest = interest;
   }
   private String Interest;
   
}
