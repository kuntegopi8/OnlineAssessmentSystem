package com.online.OnlineRecrutmentSystemBackend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.online.OnlineRecrutmentSystemBackend.model.Student;
import com.online.OnlineRecrutmentSystemBackend.service.StudentService;

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
	@GetMapping("/login")
	public ResponseEntity<String> isPresent(@RequestBody Student s)
	{
		if(ss.isPresent(s.getEmail(),s.getPass()))
		{
			return new ResponseEntity<String>("Student Login Successfully",HttpStatus.OK);
		}
		return new ResponseEntity<String>("Required To Register First",HttpStatus.NOT_FOUND);
	}
	@PutMapping("/updateProfile/{id}")
	public ResponseEntity<String> updateProfile(@RequestBody Student s,@PathVariable int id)
	{
		if(ss.updateProfile(s, id))
			return new ResponseEntity("Profile Updated Successfully",HttpStatus.OK);
		return new ResponseEntity("Problem Occurs,Profile not updated",HttpStatus.BAD_REQUEST);
	}
	@GetMapping("/getProfile/{id}")
	public ResponseEntity<List<Student>> getProfile(@PathVariable int id)
	{
		List<Student> li=ss.getProfile(id);
		if(li.size()>0)
		{
			return new ResponseEntity(li,HttpStatus.OK);
		}
		return new ResponseEntity(li,HttpStatus.NOT_FOUND);
	}
	
	@DeleteMapping("/isDeleteProfile/{id}")
	public ResponseEntity<String> isDeleteProfile(@PathVariable int id)
	{
		if(ss.isDelete(id))
			return new ResponseEntity("Profile Deleted Successfully",HttpStatus.OK);
		return new ResponseEntity("Problem Occurs,Profile not Deleted",HttpStatus.BAD_REQUEST);

	}
}
