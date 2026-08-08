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
import java.util.List;
import java.util.Optional;

import com.online.OnlineRecrutmentSystemBackend.model.RecruitmentDrive;
import com.online.OnlineRecrutmentSystemBackend.service.RecruitmentDriveService;

@RestController
@RequestMapping("/drive")
@CrossOrigin(origins = "*")
public class RecruitmentDriveController {
	@Autowired
	RecruitmentDriveService serv;
	
	@PostMapping("/adddrive")
	public ResponseEntity<String> addDrive(@RequestBody RecruitmentDrive d)
	{
		boolean b = serv.isAddDrive(d);
		if(b)
		{
			
			return ResponseEntity.status(HttpStatus.CREATED).body("Drive Addedd Successfully");
		}
		else
		{
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Failed to add");
		}
		
		
	}
	
	@GetMapping("/all")
	public ResponseEntity<List<RecruitmentDrive>> allDrive()
	{
		Optional<List<RecruitmentDrive>> list =serv.getAllDrive();
		
		if(list.isPresent())
		{
			return new ResponseEntity(list,HttpStatus.OK);
		}
		else
		{
			 return ResponseEntity.notFound().build();
		}
		
	}
	
	@GetMapping("/allbyid/{id}")
	public ResponseEntity<List<RecruitmentDrive>> allDriveById(@PathVariable("id") int id)
	{
		Optional<List<RecruitmentDrive>> list =serv.getAllDriveById(id);
		
		if(list.isPresent())
		{
			return new ResponseEntity(list,HttpStatus.OK);
		}
		else
		{
			 return ResponseEntity.notFound().build();
		}
		
	}
	
	
	@PutMapping("/updatedrive/{id}")
	public ResponseEntity<String> updateDrive(@PathVariable("id") int id,@RequestBody RecruitmentDrive rd)
	{
		boolean b = serv.isUpdate(id, rd);
		if(b)
		{
			return new ResponseEntity("Updated Successfully",HttpStatus.OK);
		}
		else
		{
			return new ResponseEntity("Not Update",HttpStatus.BAD_REQUEST);
		}
		
	
	
	}
	@DeleteMapping("/deletedrive/{id}")
	public ResponseEntity<String> isDelete(@PathVariable int id)
	{
		boolean b = serv.isDelete(id);
		if(b)
		{
			return new ResponseEntity("Delete Sucessfully",HttpStatus.OK);
		}
		else
		{
			return new ResponseEntity("Not Delete",HttpStatus.BAD_REQUEST);
		}
		
		
	}

}
