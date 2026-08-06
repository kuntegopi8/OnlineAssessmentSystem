package com.online.OnlineRecrutmentSystemBackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;

import com.online.OnlineRecrutmentSystemBackend.model.Question;
import com.online.OnlineRecrutmentSystemBackend.service.*;

@RestController
@RequestMapping("/question")
@CrossOrigin(origins = "*")
public class QuestionController {
	
	@Autowired
	QuestionService service;
		@PostMapping("/addquestion")
		public ResponseEntity<String> addQuestion(@RequestBody Question q)
		{
			 
			boolean b = service.isAddQuestion(q);
			if(b)
			{
				return new ResponseEntity("Question Added Successfully",HttpStatus.OK);
			}
			else
			{
				return new ResponseEntity<>("Question Not Added", HttpStatus.BAD_REQUEST);
			}
		}
		
		@PutMapping("/updatequestion/{id}")
		public ResponseEntity<String> updateQuestion(@RequestBody Question q,@PathVariable int id)
		{
			System.out.println(id);
			boolean b = service.isUpdateQuestion(q,id);
			
			if(b)
			{
				return new ResponseEntity("Question Updated Successfully",HttpStatus.OK);
			}
			else
			{
				return new ResponseEntity("Question not update",HttpStatus.NOT_FOUND);
			}
			
		}
		
		@GetMapping("/getallquestion")
		public ResponseEntity<List<Question>> allQuetions(){
			List<Question>list=service.Quetions();
			if(list.size()>0) {
				return new ResponseEntity(list, HttpStatus.OK);
			}else {
				return new ResponseEntity(list, HttpStatus.OK);
			}
		}
		
		@GetMapping("/questionbyasse/{assessment_ID}")
		public ResponseEntity<List<Question>> questionByAssesmnet(@PathVariable("assessment_ID") int assessment_ID)
		{
			List<Question> list = service.quetionByAssesmnet(assessment_ID);
			if(list.size()>0)
			{
				return new ResponseEntity(list, HttpStatus.OK);
			}
			else
			{
				return new ResponseEntity(list, HttpStatus.OK);
			}	
		}
		
		
		
		@DeleteMapping("/deletequestion/{id}")
		public ResponseEntity<String> deleteQuestion(@PathVariable("id") int id)
		{
			boolean b = service.isDelete(id);
			if(b)
			{
				return new ResponseEntity("Question Delete Sucessfull",HttpStatus.OK);
			}
			else
			{
			return new ResponseEntity("Error Occurr",HttpStatus.NOT_FOUND);
			}			
		}
	
}
