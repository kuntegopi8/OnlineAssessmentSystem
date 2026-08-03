package com.CareerRecommendationSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CareerRecommendationSystem.model.Student;
import com.CareerRecommendationSystem.repository.StudentRepo;

@Service
public class StudentService {

	@Autowired
	StudentRepo sr;
	public boolean isRegister(Student s)
	{
		return sr.isRegister(s);
	}
	public boolean isPresent(String email,String pass)
	{
		return sr.isPresent(email, pass);
	}
}
