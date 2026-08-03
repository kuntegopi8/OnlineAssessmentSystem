package com.CareerRecommendationSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.CareerRecommendationSystem.model.Student;
import com.CareerRecommendationSystem.service.StudentService;

@RestController
public class StudentController {
     @Autowired
     StudentService ss;
	@PostMapping("/register")
	public ResponseEntity<String>isRegister(@RequestBody Student s)
	{
		if(ss.isRegister(s))
			return new ResponseEntity("Student Register Successfully",HttpStatus.OK);
		return new ResponseEntity("Occurs Error During Registration",HttpStatus.INTERNAL_SERVER_ERROR);	}
	@PostMapping("/login")
	public ResponseEntity<String> isPresent(@RequestBody Student s)
	{
		if(ss.isPresent(s.getEmail(),s.getPass()))
		{
			return new ResponseEntity<String>("Student Login Successfully",HttpStatus.OK);
		}
		return new ResponseEntity<String>("Required To Register First",HttpStatus.NOT_FOUND);
	}
}
