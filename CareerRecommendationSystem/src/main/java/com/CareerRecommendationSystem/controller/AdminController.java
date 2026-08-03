package com.CareerRecommendationSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.CareerRecommendationSystem.model.Admin;
import com.CareerRecommendationSystem.service.AdminService;
@CrossOrigin(origins = "http://localhost:8000")
@RestController
public class AdminController {
@Autowired
AdminService as;
@PostMapping("/registerAdmin")
public ResponseEntity<String> isRegisterAdmin(@RequestBody Admin a)
{
	if(as.isRegisterAdmin(a))
		return new ResponseEntity("Admin Registered Successfully",HttpStatus.CREATED);
	
	return new ResponseEntity("Admin not Registered",HttpStatus.INTERNAL_SERVER_ERROR);
}
@GetMapping("/adminLogin")
public ResponseEntity<String> isAdminExists(@RequestBody Admin a)
{
	if(as.isAdminExists(a.getEmail(), a.getPass()))
		return new ResponseEntity("Admin Login Successfull",HttpStatus.OK);
	return new ResponseEntity("Required Register First",HttpStatus.BAD_REQUEST);
}


}
