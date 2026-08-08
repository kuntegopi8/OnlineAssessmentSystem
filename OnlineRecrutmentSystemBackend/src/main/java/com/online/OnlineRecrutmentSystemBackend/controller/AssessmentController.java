package com.online.OnlineRecrutmentSystemBackend.controller;

import java.util.List;
import java.util.Optional;

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

import com.online.OnlineRecrutmentSystemBackend.model.Assessment;
import com.online.OnlineRecrutmentSystemBackend.service.AssessmentService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/assessment")
public class AssessmentController {
	
    @Autowired
    AssessmentService as;
    @PostMapping("/assessment")
    public ResponseEntity<String> isRegisterAssessment(@RequestBody Assessment a)
    {
    	if(as.isRegisterAssessment(a))
    	{
    		return new ResponseEntity("Assessment Added Successfully",HttpStatus.CREATED);
    	}
    	return new ResponseEntity("Failed to Add Assessment",HttpStatus.BAD_REQUEST);
    }
    
    @PutMapping("/updateAssessment")
    public ResponseEntity<String> isUpdate(@RequestBody Assessment a)
    {      int id=0;
    	if(as.isUpdateAssessment(id,a))
    	{
    		return new ResponseEntity("Assessment Updated Successfully",HttpStatus.OK);
    	}
    	return new ResponseEntity("Failed to Update Assessment",HttpStatus.BAD_REQUEST);
    }
    
    @DeleteMapping("/deleteAssessment/{id}")
    public ResponseEntity<String> isDeleteAssessment(@PathVariable int id)
    {
    	if(as.isDeleteAssessment(id))
    	{
    		return new ResponseEntity("Assessment Deleted Successfully",HttpStatus.OK);
    	}
    	return new ResponseEntity("Failed to Delete Assessment",HttpStatus.BAD_REQUEST);
    }
    
    @GetMapping("/allAssessment")
    public ResponseEntity<List> getAllAssessment()
    {   List<Assessment> li=as.getAllAssessment();
    	if(li.size()>0)
    	   return new ResponseEntity(li,HttpStatus.OK);
    	return new ResponseEntity(li,HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<List> getAssessmentById(@PathVariable int id)
    {   List<Assessment> li=as.getAssessmentById(id);
    	if(li.size()>0)
    	   return new ResponseEntity(li,HttpStatus.OK);
    	return new ResponseEntity(li,HttpStatus.BAD_REQUEST);
    }
    
    //get assissment by domain'
    @GetMapping("/student/{sid}")
    public ResponseEntity<List<Assessment>> getAssessByStudentIntrest(@PathVariable("sid") int sid)
    {
    		Optional<List<Assessment>> list = as.getAssessmentBySid(sid);
    		 if (list.isPresent()) {
 		        return ResponseEntity.ok(list.get());
 		    } else {
 		        return ResponseEntity.notFound().build();
 		    }
    	
    	
    }
  
    
    @GetMapping("/assessmentcount")
    public int getAssessmentCount() {
    	return as.assessmentCount();
    }
  
    
}
