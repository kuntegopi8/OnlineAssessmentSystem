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

import com.online.OnlineRecrutmentSystemBackend.model.Company;
import com.online.OnlineRecrutmentSystemBackend.service.CompanyService;

@RestController
@RequestMapping("/company")
@CrossOrigin(origins = "*")
public class CompanyController {
	@Autowired
	CompanyService serv;
	
	@PostMapping("/addcompany")
	public ResponseEntity<String> addCompany(@RequestBody Company c)
	{
		
		boolean b = serv.isAddCompany(c);
		if(b)
		{
			return new ResponseEntity("Company Added successfully",HttpStatus.OK);
		}
		else
		{
		return new ResponseEntity("Not Added",HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
	}
	
	@GetMapping("/allcompany")
	public ResponseEntity<List<Company>> allComapny()
	{
		
		Optional<List<Company>> list = serv.getAllCompany(); 
		
		  if (list.isPresent()) {
		        return ResponseEntity.ok(list.get());
		    } else {
		        return ResponseEntity.notFound().build();
		    }
		}
	@GetMapping("/comapanybyid/{id}")
	public ResponseEntity<List<Company>> companyById(@PathVariable("id") int id)
	{
		Optional<List<Company>> list = serv.getAllCompanyId(id);
		 if (list.isPresent()) {
		        return ResponseEntity.ok(list.get());
		    } else {
		        return ResponseEntity.notFound().build();
		    }
	}
	
	@DeleteMapping("/deletecompany/{id}")
	public ResponseEntity<String> deleteCompany(@PathVariable("id") int id)
	{
		boolean b = serv.isDelete(id);
		if(b)
		{
			return new ResponseEntity("Delete Company Successfull",HttpStatus.OK);
		}
		else
		{
		return new ResponseEntity("Delete failed",HttpStatus.NO_CONTENT);
		}
		
	}
		
	@PutMapping("/updatecompany/{id}")
	public  ResponseEntity<String> updateCompany(@RequestBody Company c,@PathVariable("id") int id)
	{
		boolean b = serv.isUpdate(id, c);
		if(b)
		{
			return new ResponseEntity("Update Successfully",HttpStatus.OK);
		}
		else
		{
			return new ResponseEntity("Failed Update",HttpStatus.NO_CONTENT);
		}
		
	}
}

